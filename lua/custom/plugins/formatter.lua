return {
  {
    'mhartington/formatter.nvim',
    config = function()
      require('formatter').setup({
        logging = false,
        filetype = {
          lua = {
            function()
              return {
                exe = "luafmt",
                args = { "--indent-count", 2, "--stdin" },
                stdin = true
              }
            end
          },
          python = {
            function()
              return {
                exe = "black",
                args = { "--fast", "-" },
                stdin = true
              }
            end
          },
          cpp = {
            function()
              return {
                exe = "clang-format",
                args = {
                  "--style Microsoft"
                },
                stdin = true
              }
            end
          },
          c = {
            function()
              return {
                exe = "clang-format",
                args = {
                  "--style Microsoft"
                },
                stdin = true
              }
            end
          },
          cu = {
            function()
              return {
                exe = "clang-format",
                args = {
                  "--style Microsoft"
                },
                stdin = true
              }
            end
          },
		  rust = {
            function()
              return {
                exe = "rustfmt",
                stdin = true
              }
            end
          },
		verilog = {  -- For .v files
        function()
          return {
            exe = "verible-verilog-format",  -- Verible formatter
            args = { "--indentation_spaces", "2", "-" },  -- 2-space indentation
            stdin = true
          }
        end
      },
      systemverilog = {  -- For .sv files
        function()
          return {
            exe = "verible-verilog-format",  -- Same as Verilog
            args = { "--indentation_spaces", "2", "-" },
            stdin = true
          }
        end
      },
          -- Add more filetypes here
        }
      })

      -- Keybinding for formatting
      vim.api.nvim_set_keymap('n', '<C-f>', ':Format<CR>', { noremap = true, silent = true })
    end,
  },
  -- You can add more plugins here if needed
}
