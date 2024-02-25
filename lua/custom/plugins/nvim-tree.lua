return {
  'kyazdani42/nvim-tree.lua',
  dependencies = {'kyazdani42/nvim-web-devicons'}, -- Required for icons
  config = function ()
    require('nvim-web-devicons').setup {
      default = true;
      override = {
        default_icon = '',
        default_icon_hi = 'NonText',
      };
      -- Specify fallback icons for filetypes
      fallback = {
        ["<filetype>"] = "<fallback_icon>"
      };
    }

    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        adaptive_size = true,
        width = 30,
      },
      update_focused_file = {
        enable = true,
        update_root = false
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = true
      }
    })

    vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    vim.g.nvim_tree_auto_open = 1
  end
}
