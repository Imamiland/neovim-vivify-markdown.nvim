-- SPDX-FileCopyrightText: 2024 Ali Sajid Imami
--
-- SPDX-License-Identifier: MIT

-- You can use this loaded variable to enable conditional parts of your plugin.
if _G.NeovimVivifyMarkdownLoaded then
    return
end

_G.NeovimVivifyMarkdownLoaded = true

-- Useful if you want your plugin to be compatible with older (<0.7) neovim versions
if vim.fn.has("nvim-0.7") == 0 then
    vim.cmd("command! NeovimVivifyMarkdown lua require('neovim-vivify-markdown').toggle()")
else
    vim.api.nvim_create_user_command("NeovimVivifyMarkdown", function()
        require("neovim-vivify-markdown").toggle()
    end, {})
end
