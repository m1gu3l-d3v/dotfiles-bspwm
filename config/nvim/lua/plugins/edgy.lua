return {
  "folke/edgy.nvim",
  event = "BufReadPost",
  opts = {
    fix_win_height = vim.fn.has "nvim-0.10.0" == 0,
    options = {
      left = { size = 40 },
      bottom = { size = 10 },
      right = { size = 40 },
      top = { size = 10 },
    },
    bottom = {
      {
        ft = "spectre_panel",
        title = "SPECTRE",
        size = { height = 0.4 },
      },
      {
        ft = "grug-far",
        title = "GRUG-FAR",
        size = { height = 0.4 },
      },
      {
        ft = "toggleterm",
        title = "TERMINAL",
        size = { height = 0.4 },
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      {
        ft = "Trouble",
        title = "TROUBLE",
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      { ft = "qf", title = "QUICKFIX" },
      {
        ft = "noice",
        size = { height = 0.4 },
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      {
        ft = "help",
        size = { height = 20 },
        -- only show help buffers
        filter = function(buf)
          return vim.bo[buf].buftype == "help"
        end,
      },
    },
  },
}
