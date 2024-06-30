return {
  'nvim-treesitter/nvim-treesitter',
  event = 'VeryLazy',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
  opts = {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = false },
    auto_install = true,
    ensure_installed = {
      'go', 'lua', 'python', 'rust', 'typescript', 'regex', 'cpp', 'java',
      'bash', 'markdown', 'markdown_inline', 'kdl', 'sql', 'org', 'terraform',
      'html', 'css', 'javascript', 'yaml', 'json', 'toml',
    },
  },
  config = function(_, opts)
    local configs = require("nvim-treesitter.configs")
    configs.setup(opts)
  end
}
