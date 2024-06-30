return {
  "brenoprata10/nvim-highlight-colors",
  event = "VeryLazy",
  config = function()
    require("nvim-highlight-colors").setup {
      enabled_tailwind = true,
      render = "virtual",
      virtual_symbol = "◉",
      enable_named_colors = true,
    }
  end,
}
