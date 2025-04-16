return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    lazygit = { enabled = true },
    image = { enabled = true },
    gitbrowse = { enabled = true },
    -- explorer = { enabled = true },
    -- indent = { enabled = true },
    -- input = { enabled = true },
    -- picker = { enabled = true },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    -- scroll = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
  },
  keys = {
    -- git
    {
      '<leader>gl',
      function()
        Snacks.lazygit()
      end,
      desc = '[G]it [L]azy',
    },
    {
      '<leader>gb',
      function()
        Snacks.gitbrowse()
      end,
      desc = '[G]it [B]rowse',
    },
  },
}
