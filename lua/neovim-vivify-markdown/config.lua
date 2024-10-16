-- SPDX-FileCopyrightText: 2024 Ali Sajid Imami
--
-- SPDX-License-Identifier: MIT
local log = require("neovim-vivify-markdown.util.log")

local NeovimVivifyMarkdown = {}

--- NeovimVivifyMarkdown configuration with its default values.
---
---@type table
--- Default values:
---@eval return MiniDoc.afterlines_to_code(MiniDoc.current.eval_section)
NeovimVivifyMarkdown.options = {
    -- Prints useful logs about what event are triggered, and reasons actions are executed.
    debug = false,
}

---@private
local defaults = vim.deepcopy(NeovimVivifyMarkdown.options)

--- Defaults NeovimVivifyMarkdown options by merging user provided options with the default plugin values.
---
---@param options table Module config table. See |NeovimVivifyMarkdown.options|.
---
---@private
function NeovimVivifyMarkdown.defaults(options)
    NeovimVivifyMarkdown.options =
        vim.deepcopy(vim.tbl_deep_extend("keep", options or {}, defaults or {}))

    -- let your user know that they provided a wrong value, this is reported when your plugin is executed.
    assert(
        type(NeovimVivifyMarkdown.options.debug) == "boolean",
        "`debug` must be a boolean (`true` or `false`)."
    )

    return NeovimVivifyMarkdown.options
end

--- Define your  setup.
---
---@param options table Module config table. See |NeovimVivifyMarkdown.options|.
---
---@usage `require("").setup()` (add `{}` with your |NeovimVivifyMarkdown.options| table)
function NeovimVivifyMarkdown.setup(options)
    NeovimVivifyMarkdown.options = NeovimVivifyMarkdown.defaults(options or {})

    log.warn_deprecation(NeovimVivifyMarkdown.options)

    return NeovimVivifyMarkdown.options
end

return NeovimVivifyMarkdown
