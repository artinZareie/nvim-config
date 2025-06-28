return {
  'RRethy/nvim-base16',
  opts = {
    telescope = true,
    indentblankline = true,
    notify = true,
    ts_rainbow = true,
    cmp = true,
    illuminate = true,
    dapui = true,
  },
  config = function()
    vim.cmd('colorscheme base16-catppuccin-mocha')
  end
}
