return {
  'MagicDuck/grug-far.nvim',
  config = function()
    require('grug-far').setup {
      -- engine = 'ripgrep',
    }
  end,
  keys = {
    -- The "Blank" Search (Opens empty)
    {
      '<leader>so',
      function()
        require('grug-far').open {
          transient = true,
          prefills = {
            search = '', -- Forces search box empty
            filesFilter = '', -- Forces files filter empty
          },
        }
      end,
      mode = { 'n', 'v' },
      desc = 'Search and Replace (Blank)',
    },
  },
}
