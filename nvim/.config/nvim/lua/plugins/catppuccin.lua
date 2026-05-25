return {
  'catppuccin/nvim',
  name = 'catppuccin',
  tag = 'v1.11.0',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      transparent_background = true,
    }
  end,
}
