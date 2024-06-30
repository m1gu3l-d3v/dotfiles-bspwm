return {
  "ngtuonghy/live-server-nvim",
  cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },
  build = function()
    require("live-server-nvim").install()
  end,
}
