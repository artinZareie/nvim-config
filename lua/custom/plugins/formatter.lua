return {
  {
    "mhartington/formatter.nvim",
    config = function()
      require("formatter").setup({
        logging = false,
        filetype = {

          -- ==========================
          -- Assembly (asmfmt)
          -- ==========================
          asm = {
            function()
              return {
                exe = "nasmfmt",
				args = {'-ii 4'},
              }
            end,
          },

          nasm = {
            function()
              return {
                exe = "nasmfmt",
				args = {'-ii 4'},
              }
            end,
          },

          -- ==========================
          -- Lua (luafmt)
          -- ==========================
          lua = {
            function()
              return {
                exe = "luafmt",
                args = { "--indent-count", 2, "--stdin" },
                stdin = true,
              }
            end,
          },

          -- ==========================
          -- Python (black)
          -- ==========================
          python = {
            function()
              return {
                exe = "black",
                args = { "--fast", "-" },
                stdin = true,
              }
            end,
          },

          py = {
            function()
              return {
                exe = "black",
                args = { "--fast", "-" },
                stdin = true,
              }
            end,
          },

          -- ==========================
          -- C / C++ / CUDA (clang-format)
          -- ==========================
          c = {
            function()
              return {
                exe = "clang-format",
                args = { "--style=Microsoft" },
                stdin = true,
              }
            end,
          },

          cpp = {
            function()
              return {
                exe = "clang-format",
                args = { "--style=Microsoft" },
                stdin = true,
              }
            end,
          },

          cuda = {
            function()
              return {
                exe = "clang-format",
                args = { "--style=Microsoft" },
                stdin = true,
              }
            end,
          },

          -- ==========================
          -- Rust (rustfmt)
          -- ==========================
          rust = {
            function()
              return {
                exe = "rustfmt",
                stdin = true,
              }
            end,
          },

          -- ==========================
          -- Verilog / SystemVerilog
          -- ==========================
          verilog = {
            function()
              return {
                exe = "verible-verilog-format",
                args = { "--indentation_spaces", "2", "-" },
                stdin = true,
              }
            end,
          },

          systemverilog = {
            function()
              return {
                exe = "verible-verilog-format",
                args = { "--indentation_spaces", "2", "-" },
                stdin = true,
              }
            end,
          },
        },
      })

      -- Keybinding for formatting
      vim.api.nvim_set_keymap("n", "<C-f>", ":Format<CR>", { noremap = true, silent = true })
    end,
  },
}
