-- Set leader key to space
vim.g.mapleader = ' '

local keymap = vim.keymap

-- General keymaps
keymap.set('n', '<leader>:', '<cmd>Telescope command_history<cr>')
keymap.set('n', '<leader>wq', '<cmd>wq<cr>')       -- save and quit
keymap.set('n', '<leader>qq', '<cmd>q<cr>')        -- quit
keymap.set('n', '<leader>qd', '<cmd>bd<cr>')       -- quit all
keymap.set('n', '<leader>qa', '<cmd>qa<cr>')       -- quit all
keymap.set('n', '<leader>qs', '<cmd>lua closeBuffer()<cr>') -- quit buffer
keymap.set('n', 'gx', '<cmd>!open <c-r><c-a><cr>') -- open URL under cursor
keymap.set('n', '<c-s>', '<esc><cmd>w<cr>')        -- save
keymap.set('i', '<c-s>', '<cmd>w<cr>')             -- save

-- Split window management
keymap.set('n', '<leader>sv', '<c-w>v')
keymap.set('n', '<leader>sh', '<c-w>s')
keymap.set('n', '<leader>l', '<cmd>lua vim.cmd("wincmd l")<cr>')
keymap.set('n', '<leader>h', '<cmd>lua vim.cmd("wincmd h")<cr>')
keymap.set('n', '<leader>k', '<cmd>lua vim.cmd("wincmd k")<cr>')
keymap.set('n', '<leader>j', '<cmd>lua vim.cmd("wincmd j")<cr>')
keymap.set('n', '<s-l>', '<c-w>L')
keymap.set('n', '<s-h>', '<c-w>H')
keymap.set('n', '<s-k>', '<c-w>K')
keymap.set('n', '<s-j>', '<c-w>J')
keymap.set('n', '<a-k>', '<cmd>resize +2<cr>')
keymap.set('n', '<a-j>', '<cmd>resize -2<cr>')
keymap.set('n', '<a-h>', '<cmd>vertical resize -2<cr>')
keymap.set('n', '<a-l>', '<cmd>vertical resize +2<cr>')

-- Terminal Mappings
keymap.set('n', '<c-t>', '<cmd>ToggleTerm<cr><c-\\><c-n>')
keymap.set('t', '<c-t>', '<esc><cmd>ToggleTerm<cr><c-\\><c-n>')
keymap.set('t', '<esc><esc>', '<c-\\><c-n>')
keymap.set('t', '<c-left>', '<cmd>wincmd h<cr>')
keymap.set('t', '<c-down>', '<cmd>wincmd j<cr>')
keymap.set('t', '<c-up>', '<cmd>wincmd k<cr>')
keymap.set('t', '<c-right>', '<cmd>wincmd l<cr>')

-- Tab management
keymap.set('n', '<leader>to', '<cmd>tabnew<cr>')   -- open a new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<cr>') -- close a tab
keymap.set('n', '<leader>tn', '<cmd>bnext<cr>')    -- next buffer
keymap.set('n', '<leader>tp', '<cmd>bprev<cr>')    -- previous buffer

-- Diff keymaps
keymap.set('n', '<leader>cc', '<cmd>diffput<cr>')   -- put diff from current to other during diff
keymap.set('n', '<leader>cj', '<cmd>diffget 1<cr>') -- get diff from left (local) during merge
keymap.set('n', '<leader>ck', '<cmd>diffget 3<cr>') -- get diff from right (remote) during merge
keymap.set('n', '<leader>cn', ']c')                 -- next diff hunk
keymap.set('n', '<leader>cp', '[c')                 -- previous diff hunk

-- Clear search, diff update and redraw
keymap.set('n', '<Esc>', '<cmd>nohlsearch<Bar>diffupdate<bar>normal! <c-l><cr>')

-- Move Lines
keymap.set('n', '<c-a-down>', '<Cmd>m .+1<CR>==')
keymap.set('n', '<c-a-up>', '<Cmd>m .-2<CR>==')

-- Quickfix keymaps
keymap.set('n', '<leader>qo', '<cmd>copen<cr>')  -- open quickfix list
keymap.set('n', '<leader>qf', '<cmd>cfirst<cr>') -- jump to first quickfix list item
keymap.set('n', '<leader>qn', '<cmd>cnext<cr>')  -- jump to next quickfix list item
keymap.set('n', '<leader>qp', '<cmd>cprev<cr>')  -- jump to prev quickfix list item
keymap.set('n', '<leader>ql', '<cmd>clast<cr>')  -- jump to last quickfix list item
keymap.set('n', '<leader>qc', '<cmd>cclose<cr>') -- close quickfix list

-- Vim-maximizer
keymap.set('n', '<leader>sm', '<cmd>MaximizerToggle<cr>') -- toggle maximize tab

-- Nvim-tree
keymap.set('n', '<c-b>', '<cmd>NvimTreeToggle<cr>')   -- toggle file explorer
keymap.set('i', '<c-b>', '<cmd>NvimTreeToggle<cr>')   -- toggle file explorer
keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<cr>')   -- toggle file explorer
keymap.set('n', '<leader>er', '<cmd>NvimTreeFocus<cr>')    -- toggle focus to file explorer
keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFile<cr>') -- find file in file explorer

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, {})
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, {})
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, {})
keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({ default_text = '<cmd>method<cmd>' }) end)
keymap.set('n', '<leader>gcc', require('telescope.builtin').git_commits, {})
keymap.set('n', '<leader>gcb', require('telescope.builtin').git_bcommits, {})
keymap.set('n', '<leader>gcB', require('telescope.builtin').git_branches, {})
keymap.set('n', '<leader>gcf', require('telescope.builtin').git_files, {})

-- Git Signs and Git blame
keymap.set('n', '<leader>GG', function () require('gitsigns').setup() vim.cmd('GitBlameToggle') end)

-- Git-blame
keymap.set('n', '<leader>gb', '<cmd>GitBlameToggle<cr>') -- toggle git blame

-- Harpoon
keymap.set('n', '<leader>ma', require('harpoon.mark').add_file)
keymap.set('n', '<leader>mh', require('harpoon.ui').toggle_quick_menu)
keymap.set('n', '<leader>m1', function() require('harpoon.ui').nav_file(1) end)
keymap.set('n', '<leader>m2', function() require('harpoon.ui').nav_file(2) end)
keymap.set('n', '<leader>m3', function() require('harpoon.ui').nav_file(3) end)
keymap.set('n', '<leader>m4', function() require('harpoon.ui').nav_file(4) end)
keymap.set('n', '<leader>m5', function() require('harpoon.ui').nav_file(5) end)
keymap.set('n', '<leader>m6', function() require('harpoon.ui').nav_file(6) end)
keymap.set('n', '<leader>m7', function() require('harpoon.ui').nav_file(7) end)
keymap.set('n', '<leader>m8', function() require('harpoon.ui').nav_file(8) end)
keymap.set('n', '<leader>m9', function() require('harpoon.ui').nav_file(9) end)

-- Vim REST Console
keymap.set('n', '<leader>xr', '<cmd>call VrcQuery()<cr>') -- Run REST query

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<cr>')
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<cr>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<cr>')
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<cr>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<cr>')

-- Diagnostic
keymap.set('n', '<leader>cd', '<cmd>lua vim.diagnostic.open_float()<cr>')

-- Trouble Diagnostics all
keymap.set('n', '<leader>cD', '<cmd>Trouble diagnostics toggle<cr>')

-- Filetype-specific keymaps (these can be done in the ftplugin directory instead if you prefer)
keymap.set('n', '<leader>go', function()
  if vim.bo.filetype == 'java' then
    require('jdtls').organize_imports();
  end
end)

keymap.set('n', '<leader>gu', function()
  if vim.bo.filetype == 'java' then
    require('jdtls').update_projects_config();
  end
end)

keymap.set('n', '<leader>tc', function()
  if vim.bo.filetype == 'java' then
    require('jdtls').test_class();
  end
end)

keymap.set('n', '<leader>tm', function()
  if vim.bo.filetype == 'java' then
    require('jdtls').test_nearest_method();
  end
end)

-- Debugging
keymap.set('n', '<leader>bb', '<cmd>lua require"dap".toggle_breakpoint()<cr>')
keymap.set('n', '<leader>bc', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition<cmd>"))<cr>')
keymap.set('n', '<leader>bl', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message<cmd>"))<cr>')
keymap.set('n', '<leader>br', '<cmd>lua require"dap".clear_breakpoints()<cr>')
keymap.set('n', '<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>')
keymap.set('n', '<leader>dc', '<cmd>lua require"dap".continue()<cr>')
keymap.set('n', '<leader>dj', '<cmd>lua require"dap".step_over()<cr>')
keymap.set('n', '<leader>dk', '<cmd>lua require"dap".step_into()<cr>')
keymap.set('n', '<leader>do', '<cmd>lua require"dap".step_out()<cr>')
keymap.set('n', '<leader>dd', function() require('dap').disconnect(); require('dapui').close(); end)
--keymap.set('n', '<leader>dt', function() require('dap').terminate(); require('dapui').close(); end)
keymap.set('n', '<leader>dt', function() require("dapui").toggle(); end)
keymap.set('n', '<leader>dr', '<cmd>lua require"dap".repl.toggle()<cr>')
keymap.set('n', '<leader>dl', '<cmd>lua require"dap".run_last()<cr>')
keymap.set('n', '<leader>di', function() require 'dap.ui.widgets'.hover() end)
keymap.set('n', '<leader>d?', function() local widgets = require 'dap.ui.widgets'; widgets.centered_float(widgets.scopes) end)
keymap.set('n', '<leader>df', '<cmd>Telescope dap frames<cr>')
keymap.set('n', '<leader>dh', '<cmd>Telescope dap commands<cr>')
keymap.set('n', '<leader>de', function() require('telescope.builtin').diagnostics({ default_text = '<cmd>E<cmd>' }) end)
