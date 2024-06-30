return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add nord
  { "gbprod/nord.nvim" },
  -- add dracula
  { "Mofiqul/dracula.nvim" },
  -- add rose pine
  { "rose-pine/neovim" },
  -- add pywalTheme
  { "AlphaTechnolog/pywal.nvim" },
  -- add catppuccin theme
  { "catppuccin/nvim" },
  -- add and set pywalTheme
  {
    "catppuccin/nvim",
    lazy = false,       -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,    -- make sure to load this before all the other start plugins
    config = function() -- load the colorscheme here
      vim.cmd([[colorscheme catppuccin-mocha]])
    end,
  },
}
