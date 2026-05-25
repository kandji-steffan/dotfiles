return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '│' },
      change = { text = '│' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    current_line_blame = false,
    word_diff = false,
    on_attach = function(bufnr)
      local gs = require('gitsigns')
      local map = function(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      map('n', ']h', gs.next_hunk, 'Next hunk')
      map('n', '[h', gs.prev_hunk, 'Prev hunk')
      map('n', '<leader>hp', gs.preview_hunk, 'Preview hunk')
      map('n', '<leader>hb', gs.toggle_current_line_blame, 'Toggle line blame')
      map('n', '<leader>hd', gs.toggle_word_diff, 'Toggle word diff')
      map('n', '<leader>hs', gs.stage_hunk, 'Stage hunk')
      map('n', '<leader>hr', gs.reset_hunk, 'Reset hunk')
      local pr_base = false
      map('n', '<leader>hB', function()
        pr_base = not pr_base
        if pr_base then
          gs.change_base('origin/develop')
          vim.notify('gitsigns base: origin/develop', vim.log.levels.INFO)
        else
          gs.change_base(nil)
          vim.notify('gitsigns base: index', vim.log.levels.INFO)
        end
      end, 'Toggle base (index vs develop)')
    end,
  },
}
