<!--
SPDX-FileCopyrightText: 2024 Ali Sajid Imami

SPDX-License-Identifier: MIT
-->

# Roadmap

## Current Status: Alpha

The `neovim-vivify-markdown.nvim` plugin is currently in its **alpha** stage. While the core functionality is under development, some features may still be incomplete or prone to changes.

The primary goals for the alpha version are:

- Stabilizing the core features.
- Setting up basic keybinds for interacting with the plugin.
- Ensuring the server integration (Vivify) starts and syncs correctly.

## Goals for v1.0

The first official release, **v1.0**, is focused on delivering a fully functional plugin with the following objectives:

1. **Keybinds**:

   - Provide default key mappings for common plugin actions.
   - Allow users to override keybinds through configuration.

2. **Server Start**:
   - Ensure that the Vivify server starts seamlessly.
   - Handle syncing content and cursor position between Neovim and the server.

These two features are essential for the plugin's first stable release. Once these are polished and tested, we will move towards the **v1.0** milestone.

## Post v1.0 Plans

After achieving a stable **v1.0** release, the next significant feature will be:

### Adding Vivify to Mason

- **Mason Support**: Integrate `neovim-vivify-markdown.nvim` into the [Mason](https://github.com/williamboman/mason.nvim) plugin for easier installation and management. This will simplify setup for users by allowing them to install Vivify directly through Mason, following best practices for Neovim plugin management.
