-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

local nvim_tree = require("nvim-tree")
-- local nvim_tree_config = require("nvim-tree.config")

-- local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
     disable_netrw = true,
     hijack_netrw = true,
--     open_on_setup = false,
--      ignore_ft_on_setup = {
--          "startify",
--          "dashboard",
--          "alpha",
--      },
--      open_on_tab = false,
--      hijack_cursor = false,
--      update_cwd = true,
--      hijack_directories = {
--          enable = true,
--          auto_open = true,
--      },
      diagnostics = {
          enable = true,
          icons = {
              hint = "",
              info = "",
              warning = "",
              error = "",
          },
      },
      update_focused_file = {
          enable = true,
          update_cwd = true,
          ignore_list = {},
      },
      git = {
          enable = true,
          ignore = true,
          timeout = 500,
      },
      view = {
          width = 30,
          side = "left",
          number = false,
          relativenumber = false,
      },
      renderer = {
          highlight_git = true,
          root_folder_modifier = ":t",
          icons = {
              show = {
                  file = true,
                  folder = true,
                  folder_arrow = true,
                  git = true,
              },
              glyphs = {
                  default = "",
                  symlink = "",
                  git = {
                      unstaged = "",
                      staged = "S",
                      unmerged = "",
                      renamed = "➜",
                      deleted = "",
                      untracked = "U",
                      ignored = "◌",
                  },
                  folder = {
                      default = "",
                      open = "",
                      empty = "",
                      empty_open = "",
                      symlink = "",
                  },
              }
          }
      }
}
