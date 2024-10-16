-- SPDX-FileCopyrightText: 2024 Ali Sajid Imami
--
-- SPDX-License-Identifier: MIT

--[[ this module exposes the interface of lua functions:
define here the lua functions that activate the plugin ]]

local main = require("neovim-vivify-markdown.main")
local config = require("neovim-vivify-markdown.config")
local NeovimVivifyMarkdown = {}

--- Toggle the plugin by calling the `enable`/`disable` methods respectively.
function NeovimVivifyMarkdown.toggle()
    if _G.NeovimVivifyMarkdown.config == nil then
        _G.NeovimVivifyMarkdown.config = config.options
    end

    main.toggle("public_api_toggle")
end

--- Initializes the plugin, sets event listeners and internal state.
function NeovimVivifyMarkdown.enable(scope)
    if _G.NeovimVivifyMarkdown.config == nil then
        _G.NeovimVivifyMarkdown.config = config.options
    end

    main.toggle(scope or "public_api_enable")
end

--- Disables the plugin, clear highlight groups and autocmds, closes side buffers and resets the internal state.
function NeovimVivifyMarkdown.disable()
    main.toggle("public_api_disable")
end

-- setup NeovimVivifyMarkdown options and merge them with user provided ones.
function NeovimVivifyMarkdown.setup(opts)
    _G.NeovimVivifyMarkdown.config = config.setup(opts)
end

_G.NeovimVivifyMarkdown = NeovimVivifyMarkdown

return _G.NeovimVivifyMarkdown
