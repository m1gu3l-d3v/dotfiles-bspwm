return {
  {
    'f-person/git-blame.nvim',
    event = 'VeryLazy',
    opts = {
      enabled = false,
      date_format = '%m/%d/%y %H:%M:%S',
    }
  },
  {
    'tpope/vim-fugitive',
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      require('gitsigns').setup()
    end
  },
}
