<!--
SPDX-FileCopyrightText: 2024 Ali Sajid Imami

SPDX-License-Identifier: MIT
-->

<p align="center">
  <h1 align="center">neovim-vivify-markdown.nvim</h2>
</p>

<p align="center">
    > Easily render markdown files in neovim
</p>

<!--<div align="center">-->
<!--    > Drag your video (<10MB) here to host it for free on GitHub.-->
<!--</div>-->

<!--<div align="center">-->
<!---->
<!--> Videos don't work on GitHub mobile, so a GIF alternative can help users.-->
<!---->
<!--_[GIF version of the showcase video for mobile users](SHOWCASE_GIF_LINK)_-->
<!---->
<!--</div>-->

## ⚡️ Features

> Write short sentences describing your plugin features

- Quickly render a markdown file to a browser
- Render other file types that are supported by [Vivify](https://github.com/jannis-baum/vivify)
- Optional integration with [Mason](https://github.com/williamboman/mason.nvim)

## 📋 Installation

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
use {"neovim-vivify-markdown.nvim", tag = "*" }
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
Plug "neovim-vivify-markdown.nvim", { "tag": "*" }
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
require("lazy").setup({{"neovim-vivify-markdown.nvim", version = "*"}})
-- dev version
require("lazy").setup({"neovim-vivify-markdown.nvim"})
```

</td>
</tr>
</tbody>
</table>
</div>

## ☄ Getting started

> Describe how to use the plugin the simplest way

## ⚙ Configuration

> The configuration list sometimes become cumbersome, making it folded by default reduce the noise of the README file.

<details>
<summary>Click to unfold the full list of options with their default values</summary>

> **Note**: The options are also available in Neovim by calling `:h neovim-vivify-markdown.options`

```lua
require("neovim-vivify-markdown").setup({
    -- you can copy the full list from lua/neovim-vivify-markdown/config.lua
})
```

</details>

## 🧰 Commands

| Command   | Description         |
| --------- | ------------------- |
| `:Toggle` | Enables the plugin. |

## ⌨ Contributing

We welcome all contributions. Please look at [CONTRIBUTING](CONTRIBUTING.md) to see more information about how to contribute to the project.

## 🎭 Motivations

> If alternatives of your plugin exist, you can provide some pros/cons of using yours over the others.

## License

This project is licensed under the [MIT License](LICENSES/MIT.txt). Some ancillary files are licensed under the [Creative Commons Zero](LICENSES/CC0-1.0.txt) and are dedicated to the Public Domain.
