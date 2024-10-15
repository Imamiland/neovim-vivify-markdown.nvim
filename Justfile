# SPDX-FileCopyrightText: 2024 Ali Sajid Imami
#
# SPDX-License-Identifier: MIT

all: documentation lint luals test

# runs all the test files.
test: deps
    nvim --version | head -n 1 && echo ''
    nvim --headless --noplugin -u ./scripts/minimal_init.lua \
        -c "lua require('mini.test').setup()" \
        -c "lua MiniTest.run({ execute = { reporter = MiniTest.gen_reporter.stdout({ group_depth = 2 }) } })"

# installs `mini.nvim`, used for both the tests and documentation.
deps:
    #!/usr/bin/env sh
    set -euo pipefail
    if [ -d deps/mini.nvim ]; then
      cd deps/mini.nvim && git pull
    else
      @mkdir -p deps
      git clone --depth 1 https://github.com/echasnovski/mini.nvim deps/mini.nvim
    fi

# installs deps before running tests, useful for the CI.
test-ci: deps test

# generates the documentation.
documentation:
    nvim --headless --noplugin -u ./scripts/minimal_init.lua -c "lua require('mini.doc').generate()" -c "qa!"

# installs deps before running the documentation generation, useful for the CI.
documentation-ci: deps documentation

# performs a lint check and fixes issue if possible, following the config in `stylua.toml`.
lint:
    stylua . -g '*.lua' -g '!deps/' -g '!nightly/'
    luacheck plugin/ lua/

luals-ci:
    #!/bin/env sh
    set -euo pipefail
    rm -rf .ci/lua-ls/log
    lua-language-server --configpath .luarc.json --logpath .ci/lua-ls/log --check .
    if [ -f .ci/lua-ls/log/check.json ]; then
        if ! jq -e '. == []' .ci/lua-ls/log/check.json > /dev/null; then
            cat .ci/lua-ls/log/check.json 2>/dev/null
            exit 1
        fi
    fi

luals:
    mkdir -p .ci/lua-ls
    curl -sL "https://github.com/LuaLS/lua-language-server/releases/download/3.7.4/lua-language-server-3.7.4-darwin-x64.tar.gz" | tar xzf - -C "${PWD}/.ci/lua-ls"
    just luals-ci

download-neovim version:
    # Download and use Neovim specified version
    mkdir -p ./nvim/${version}
    curl -L https://github.com/neovim/neovim/releases/download/${version}/nvim-macos.tar.gz -o ./nvim/${version}/nvim-macos.tar.gz
    tar xzf ./nvim/${version}/nvim-macos.tar.gz -C ./nvim/${version} --strip-components=1

test version:
    just download-neovim ${version}
    ./nvim/${version}/bin/nvim --version
    PATH=./nvim/${version}/bin:$PATH just test

test-nightly:
    just test nightly

test-stable:
    just test stable

test-0-8-3:
    just test v0.8.3
