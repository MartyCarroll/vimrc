
--  Hacky, should probably fix later
    vim.cmd.colorscheme('github_dark_dimmed')
--  Now we want to have a transparent background
 vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
 vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
require("transparent").setup({
      groups = { -- table: default groups
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
              'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                  'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                      'SignColumn', 'CursorLineNr', 'EndOfBuffer',
                        },
                          extra_groups = {}, -- table: additional groups that should be cleared
                            exclude_groups = {}, -- table: groups you don't want to clear
                      })

-- vim.cmd('TransparentEnable')
