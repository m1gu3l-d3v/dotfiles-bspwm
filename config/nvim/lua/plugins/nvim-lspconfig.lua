return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  dependencies = {
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "WhoIsSethDaniel/mason-tool-installer.nvim" },
    { "j-hui/fidget.nvim",                        opts = {} },
    { "folke/neodev.nvim" },
  },
  config = function()
    require("mason").setup(conf)
    require("mason-lspconfig").setup({
      -- Install these LSPs automatically
      ensure_installed = {
        "bashls",
        "cssls",
        "html",
        "gradle_ls",
        "groovyls",
        "lua_ls",
        "jdtls",
        "jsonls",
        "lemminx",
        "marksman",
        "quick_lint_js",
        "yamlls",
        "emmet_language_server",
        "sqlls",
        "tsserver",
        "pyright",
        "clangd",
        "perlnavigator",
      },
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "java-debug-adapter",
        "java-test",
        "codelldb",
        "prettier",
        --"debugpy",
      },
    })

    vim.api.nvim_command("MasonToolsInstall")

    local lspconfig = require("lspconfig")
    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lsp_attach = function(client, bufnr) end

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.completion.completionItem.resolveSupport = {
      properties = {
        "documentation",
        "detail",
        "additionalTextEdits",
      },
    }

    require("mason-lspconfig").setup_handlers({
      function(server_name)
        if server_name ~= "jdtls" then
          lspconfig[server_name].setup({
            on_attach = lsp_attach,
            capabilities = lsp_capabilities,
          })
        end
      end,
    })

    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    require("lspconfig").tsserver.setup({
      capabilities = capabilities,
    })
    require("lspconfig").html.setup({
      capabilities = capabilities,
      filetypes = { "html", "templ", "jsp" }
    })
    require("lspconfig").cssls.setup({
      capabilities = capabilities,
    })
    require("lspconfig").jsonls.setup({
      capabilities = capabilities,
    })
    require("lspconfig").emmet_language_server.setup({
      filetypes = { "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "typescriptreact", "jsp" }
    })
    require("lspconfig").tailwindcss.setup({
      capabilities = capabilities,
    })
    require 'lspconfig'.pyright.setup {
      capabilities = capabilities,
    }
    require 'lspconfig'.clangd.setup {
      capabilities = capabilities,
    }
    require 'lspconfig'.perlnavigator.setup {
      capabilities = capabilities,
    }

    local open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = opts.border or "rounded" -- Set border to rounded
      return open_floating_preview(contents, syntax, opts, ...)
    end
  end,
}
