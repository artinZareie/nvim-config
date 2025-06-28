return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform will run multiple formatters sequentially
        python = { 'black' },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { 'rustfmt', lsp_format = 'fallback' },
        javascript = { 'prettier', stop_after_first = true },
        go = { 'gofmt', 'goimports' },
        c = { 'clang_format' },
        h = { 'clang_format' },
        cpp = { 'clang_format' },
        hpp = { 'clang_format' },
      },
      formatters = {
        ['clang_format'] = {
          prepend_args = { '--style=file', '--fallback-style=Microsoft' },
        },
      },
    }
  end,
}
