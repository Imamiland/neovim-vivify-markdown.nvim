<!--
SPDX-FileCopyrightText: 2024 Ali Sajid Imami

SPDX-License-Identifier: MIT
-->

<p align="center">
  <h1 align="center">neovim-vivify-markdown.nvim</h2>
</p>

<p align="center">
    Easily render markdown files in neovim
</p>

[![License](https://img.shields.io/github/license/Imamiland/neovim-vivify-markdown.nvim)](https://github.com/Imamiland/neovim-vivify-markdown.nvim/blob/main/LICENSE)
![Neovim Version](https://img.shields.io/badge/Neovim-0.8%20%7C%200.9%20%7C%20stable-blue)
[![Continuous Integration](https://github.com/Imamiland/neovim-vivify-markdown.nvim/actions/workflows/ci.yaml/badge.svg)](https://github.com/Imamiland/neovim-vivify-markdown.nvim/actions/workflows/ci.yaml)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/Imamiland/neovim-vivify-markdown.nvim)](https://github.com/Imamiland/neovim-vivify-markdown.nvim/releases/current)
![GitHub Repo stars](https://img.shields.io/github/stars/Imamiland/neovim-vivify-markdown.nvim)
![code style: stylua](https://img.shields.io/badge/code%20style-stylua-blue)
[![REUSE status](https://api.reuse.software/badge/github.com/Imamiland/neovim-vivify-markdown.nvim)](https://api.reuse.software/info/github.com/Imamiland/neovim-vivify-markdown.nvim)
[![OpenSSF Best Practices](https://bestpractices.coreinfrastructure.org/projects/9597/badge)](https://bestpractices.coreinfrastructure.org/projects/9597)

<!--<div align="center">-->
<!--    > Drag your video (<10MB) here to host it for free on GitHub.-->
<!--</div>-->

<!--<div align="center">-->
<!---->
<!--  > Videos don't work on GitHub mobile, so a GIF alternative can help users.-->
<!---->
<!--_[GIF version of the showcase video for mobile users](SHOWCASE_GIF_LINK)_-->
<!---->
<!--</div>-->

## Features

- Quickly render a markdown file to a browser
- Render other file types that are supported by [Vivify](https://github.com/jannis-baum/vivify)
- Optional integration with [Mason](https://github.com/williamboman/mason.nvim)

## Installation

<div align="center">
<table>
<thead>
<tr>
<th>Package manager</th>
<th>Snippet</th>
</tr>
</thead>
<tbody>
<tr>
<td>

[wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)

</td>
<td>

```lua
-- stable version
use {"neovim-vivify-markdown.nvim", tag = "stable" }
-- dev version
use {"neovim-vivify-markdown.nvim"}
```

</td>
</tr>
<tr>
<td>

[junegunn/vim-plug](https://github.com/junegunn/vim-plug)

</td>
<td>

```lua
-- stable version
Plug "neovim-vivify-markdown.nvim", { "tag": "stable" }
-- dev version
Plug "neovim-vivify-markdown.nvim"
```

</td>
</tr>
<tr>
<td>

[folke/lazy.nvim](https://github.com/folke/lazy.nvim)

</td>
<td>

```lua
-- stable version
require("lazy").setup({{"neovim-vivify-markdown.nvim", version = "stable"}})
-- dev version
require("lazy").setup({"neovim-vivify-markdown.nvim"})
```

</td>
</tr>
</tbody>
</table>
</div>

## Getting started

This is a simple plugin for [neovim](https://www.neovim.io) to integrate the extremely capable [Vivify](https://github.com/jannis-baum/vivify) markdown renderer seamlessly in your NeoVim config. This allows you to use a single keystroke to create a live rendering of the markdown file.

The plugin can be installed by using the desired plugin manager as shown in [Installation](#Installation). The plugin comes with a set of default keybindings that can be used by default without configuration. Otherwise, all [configuration options](#Configuration) are given below.

## Configuration

> The configuration list sometimes become cumbersome, making it folded by default reduce the noise of the README file.

<details>
<summary>Click to unfold the full list of options with their default values</summary>

> **Note**: The options are also available in neovim by calling `:h neovim-vivify-markdown.options`

```lua
require("neovim-vivify-markdown").setup({
    -- you can copy the full list from lua/neovim-vivify-markdown/config.lua
})
```

</details>

## Commands

| Command   | Description         |
| --------- | ------------------- |
| `:Toggle` | Enables the plugin. |

## Contributing

We welcome all contributions. Please look at [CONTRIBUTING](CONTRIBUTING.md) to see more information about how to contribute to the project.

## Motivations

This project is heavily inspired by the neovim plugin by [https://github.com/iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) and [https://github.com/jannis-baum/vivify.vim](https://github.com/jannis-baum/vivify.vim). Of course, it would not exist without [Vivify](https://github.com/jannis-baum/vivify).

## License

This project is licensed under the [MIT License](LICENSES/MIT.txt). Some ancillary files are licensed under the [Creative Commons Zero](LICENSES/CC0-1.0.txt) and are dedicated to the Public Domain.
