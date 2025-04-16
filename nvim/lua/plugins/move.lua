return {
  'fedepujol/move.nvim',
  opts = {
    --- Config
  },
  cmd = { 'MoveBlock', 'MoveLine' },
  config = function()
    require('move').setup {}
  end,
}
