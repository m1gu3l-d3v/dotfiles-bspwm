return {
  'christoomey/vim-tmux-navigator',
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<space><C-Left>", "<cmd>TmuxNavigateLeft<cr>" },
    { "<space><c-Down>", "<cmd>TmuxNavigateDown<cr>" },
    { "<space><c-Up>", "<cmd>TmuxNavigateUp<cr>" },
    { "<space><C-Right>", "<cmd>TmuxNavigateRight<cr>" },
    { "<space><c-\\>", "<cmd>TmuxNavigatePrevious<cr>" },
  },
  event = function()
    if vim.fn.exists("$TMUX") == 1 then
      return "VeryLazy"
    end
  end,
}
