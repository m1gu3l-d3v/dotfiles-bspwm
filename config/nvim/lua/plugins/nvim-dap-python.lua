return {
  'mfussenegger/nvim-dap-python',
  config = function()
    --require("dap-python").setup("python")
    require("dap-python").setup(vim.fn.stdpath("data") .. 'mason/packages/debugpy/venv/bin/python3.11')
    require('dap-python').test_runner = 'pytest'
  end
}
