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
                  "--style",
                  [[
                    BasedOnStyle: LLVM,
                    IndentWidth: 4,
                    UseTab: Always,
                    TabWidth: 4,
                    AccessModifierOffset: -4,
                    AllowShortIfStatementsOnASingleLine: true,
                    AllowShortFunctionsOnASingleLine: None,
                    AlignAfterOpenBracket: Align,
                    AlignConsecutiveAssignments: true,
                    AlignConsecutiveDeclarations: true,
                    AlignEscapedNewlines: Left,
                    AlignOperands: true,
                    AlignTrailingComments: true,
                    AllowAllParametersOfDeclarationOnNextLine: true,
                    AllowShortBlocksOnASingleLine: false,
                    AllowShortFunctionsOnASingleLine: false,
                    AllowShortIfStatementsOnASingleLine: false,
                    AllowShortLoopsOnASingleLine: false,
                    AlwaysBreakAfterDefinitionReturnType: None,
                    AlwaysBreakBeforeMultilineStrings: false,
                    AlwaysBreakTemplateDeclarations: false,
                    BinPackArguments: true,
                    BinPackParameters: true,
                    BreakBeforeBinaryOperators: NonAssignment,
                    BreakBeforeBraces: Attach,
                    BreakBeforeTernaryOperators: true,
                    BreakConstructorInitializersBeforeComma: false,
                    ColumnLimit: 80,
                    ConstructorInitializerAllOnOneLineOrOnePerLine: false,
                    ContinuationIndentWidth: 4,
                    IncludeCategories:
                    [
                      {
                        Regex: "^<.*",
                        Priority: -1
                      },
                      {
                        Regex: ".*",
                        Priority: 1
                      }
                    ],
                    IndentCaseLabels: true,
                    IndentPPDirectives: None,
                    IndentWidth: 4,
                    KeepEmptyLinesAtTheStartOfBlocks: false,
                    MaxEmptyLinesToKeep: 1,
                    NamespaceIndentation: None,
                    ObjCSpaceAfterProperty: false,
                    ObjCSpaceBeforeProtocolList: false,
                    PenaltyBreakBeforeFirstCallParameter: 19,
                    PenaltyBreakComment: 300,
                    PenaltyBreakFirstLessLess: 120,
                    PenaltyBreakString: 1000,
                    PenaltyExcessCharacter: 1000000,
                    PenaltyReturnTypeOnItsOwnLine: 60,
                    PointerBindsToType: false,
                    SpaceAfterCStyleCast: false,
                    SpaceBeforeAssignmentOperators: true,
                    SpaceBeforeParens: Never,
                    SpaceInEmptyParentheses: false,
                    SpacesBeforeTrailingComments: 2,
                    SpacesInAngles: false,
                    SpacesInCStyleCastParentheses: false,
                    SpacesInContainerLiterals: true,
                    SpacesInParentheses: false,
                    SpacesInSquareBrackets: false,
                    Standard: C++11,
                    TabWidth: 4,
                    UseTab: Never
                  ]]
                },
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
