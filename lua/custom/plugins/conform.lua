return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {

        -- ==========================
        -- Assembly
        -- ==========================
        asm = { "asmfmt" },
        nasm = { "asmfmt" },

        -- ==========================
        -- Lua
        -- ==========================
        lua = { "stylua" },

        -- ==========================
        -- Python
        -- ==========================
        python = { "black" },

        -- ==========================
        -- Rust
        -- ==========================
        rust = { "rustfmt" },

        -- ==========================
        -- JavaScript
        -- ==========================
        javascript = { "prettier" },

        -- ==========================
        -- Go
        -- ==========================
        go = { "gofmt", "goimports" },

        -- ==========================
        -- C / C++ / Headers
        -- ==========================
        c = { "clang_format" },
        h = { "clang_format" },
        cpp = { "clang_format" },
        hpp = { "clang_format" },

        -- ==========================
        -- Verilog / SystemVerilog
        -- ==========================
        verilog = { "verible-verilog-format" },
        systemverilog = { "verible-verilog-format" },
      },

      formatters = {

        -- Clang-format (Microsoft style)
        clang_format = {
          prepend_args = { "--style=Microsoft", "--fallback-style=Microsoft" },
        },

        -- Assembly (asmfmt)
        asmfmt = {
          args = { "-" },
          stdin = true,
        },

        -- Verilog
        ["verible-verilog-format"] = {
          prepend_args = { "--indentation_spaces", "2" },
        },
      },
    })
  end,
}
