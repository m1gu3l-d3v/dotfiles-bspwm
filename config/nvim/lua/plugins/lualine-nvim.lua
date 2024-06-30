return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'linrongbin16/lsp-progress.nvim',
  },
  opts = {
    options = {
      theme = "auto",
    },
    sections = {
      lualine_b = { 'branch', 'diff' },
      lualine_c = {
        {
          'filename',
          file_status = true,
          newfile_status = false,
          path = 4,
          symbols = {
            modified = '[+]',
            readonly = '[-]',
          },
        },
        {
          'selectioncount',
        },
      },
    },
  },
  lazy = false,
  priority = 1000,
}
