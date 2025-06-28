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
        c = { 'clang-format' },
        h = { 'clang-format' },
        cpp = { 'clang-format' },
        hpp = { 'clang-format' },
      },
      formatters = {
        ['clang-format'] = {
          prepend_args = { '--style=file', '--fallback-style=Microsoft' },
        },
      },
    }
  end,
}
