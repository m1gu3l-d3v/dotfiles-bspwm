return {
  'rcarriga/nvim-dap-ui',
  event = 'VeryLazy',
  dependencies = {
    'mfussenegger/nvim-dap',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-telescope/telescope-dap.nvim',
    'nvim-neotest/nvim-nio',
  },
  opts = {
    controls = {
      element = "repl",
      enabled = true,
      icons = {
        disconnect = "",
        pause = "",
        play = "",
        run_last = "",
        step_back = "",
        step_into = "",
        step_out = "",
        step_over = "",
        terminate = ""
      }
    },
    element_mappings = {},
    expand_lines = true,
    floating = {
      border = "single",
      mappings = {
        close = { "q", "<Esc>" }
      }
    },
    force_buffers = false,
    icons = {
      collapsed = "",
      current_frame = "",
      expanded = ""
    },
    layouts = {
      wrap = true,
      {
        elements = {
          {
            id = "scopes",
            size = 0.30
          },
          {
            id = "stacks",
            size = 0.25
          },
          {
            id = "watches",
            size = 0.25
          },
          {
            id = "breakpoints",
            size = 0.20
          }
        },
        size = 25,
        position = "left",
      },
      {
        elements = {
          {
            id = "console",
            size = 0.75,
          },
          {
            id = "repl",
            size = 0.25,
          },
        },
        size = 10,
        position = "bottom",
      }
    },
    mappings = {
      edit = "e",
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",
      repl = "r",
      toggle = "t"
    },
    render = {
      indent = 1,
      max_value_lines = 500
    }
  },
  config = function(_, opts)
    local dap = require('dap')
    require('dapui').setup(opts)

    dap.listeners.after.event_initialized["dapui_config"] = function()
      require('dapui').open()
    end

    dap.listeners.before.event_terminated["dapui_config"] = function()
    end

    dap.listeners.before.event_exited["dapui_config"] = function()
    end

    dap.configurations.java = {
      {
        name = "Debug Launch (2GB)",
        type = 'java',
        request = 'launch',
        vmArgs = "" .. "-Xmx2g "
      },
      {
        name = "Debug Attach (8000)",
        type = 'java',
        request = 'attach',
        hostName = "127.0.0.1",
        port = 8000,
      },
      {
        name = "Debug Attach (5005)",
        type = 'java',
        request = 'attach',
        hostName = "127.0.0.1",
        port = 5005,
      },
      {
        name = "My Custom Java Run Configuration",
        type = "java",
        request = "launch",
        mainClass = "replace.with.your.fully.qualified.MainClass",

        vmArgs = "" .. "-Xmx2g "
      },
    }

    dap.adapters.codelldb = {
      name = "Codelldb",
      type = 'server',
      port = "${port}",
      executable = {
        command = vim.fn.stdpath("data") .. '/mason/bin/codelldb',
        args = { "--port", "${port}" },
      },
    }
    dap.configurations.cpp = {
      {
        name = "Remote Debug with LLDB (clang)",
        type = "codelldb",
        request = "launch",
        program = function()
          os.execute("clang++ -std=c++2a -glldb -fstandalone-debug " .. vim.fn.expand("%:p") .. " -o " .. vim.fn.expand("%:r"))
          return "${fileDirname}/${fileBasenameNoExtension}"
          --return vim.fn.expand("%:r")
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        terminal = "integrated"
      },
    }

    --dap.adapters.python = function(cb, config)
    --  if config.request == 'attach' then
    --    ---@diagnostic disable-next-line: undefined-field
    --    local port = (config.connect or config).port
    --    ---@diagnostic disable-next-line: undefined-field
    --    local host = (config.connect or config).host or '127.0.0.1'
    --    cb({
    --      type = 'server',
    --      --port = assert(port, '`connect.port` is required for a python `attach` configuration'),
    --      port = "${port}",
    --      host = host,
    --      options = {
    --        source_filetype = 'python',
    --      },
    --    })
    --  else
    --    cb({
    --      type = 'executable',
    --      command = vim.fn.stdpath("data") .. 'mason/packages/debugpy/venv/bin/python3.11',
    --      args = { '-m', 'debugpy.adapter' },
    --      options = {
    --        source_filetype = 'python',
    --      },
    --    })
    --  end
    --end
  end
}
