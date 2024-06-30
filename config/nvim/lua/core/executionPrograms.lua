-- Execution Files
vim.api.nvim_set_keymap("n", "<leader>xx", "<Cmd>RunFile<CR>",
  { noremap = true, desc = "Execution Files in split bottom" })
vim.api.nvim_set_keymap("n", "<leader>xa", "<Cmd>RunFile tab<CR>",
  { noremap = true, desc = "Execution Files in split new tab" })

-- Execution Files in terminal with ToggleTerm
function RunFiletypeCommand()
  local command = vim.fn.luaeval('require("code_runner.commands").get_filetype_command()')
  vim.cmd('TermExec cmd="' .. command .. '"')
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-\\><C-n>', true, true, true), 'n', true)
end

vim.api.nvim_set_keymap('n', '<leader>xt', '<Cmd>lua RunFiletypeCommand()<CR>',
  { noremap = true, silent = true, desc = "Execute File in terminal" })

-- Execution Proyects
function compileExecuteCommand()
  local file_extension = vim.fn.expand("%:e")
  if file_extension == "java" then
    vim.cmd([[
        split
        terminal rm -rf bin/* 2>/dev/null; find . -type f -name "*.class" -delete && find . -name "*.java" -exec javac -d bin {} + && java -cp bin $(find . | grep -i %:t | sed "s|\\.\\/src\\/||g" | sed "s|\\.java||g")
        startinsert
        wincmd J
    ]])
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-\\><C-n>', true, true, true), 'n', true)
  elseif file_extension == "html" then
    require("live-server-nvim").start()
  end
end

vim.api.nvim_set_keymap("n", "<leader>xc", "<Cmd>lua compileExecuteCommand()<CR>", { noremap = true })


-- Create Maven project step by step
vim.keymap.set("n", "<leader>cm", function()
  local groupId = vim.fn.input("Enter groupId: ", "com.example")
  local artifactId = vim.fn.input("Enter artifactId: ", "my-app")
  local cmd = string.format("!mvn archetype:generate -DgroupId=%s -DartifactId=%s -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false", groupId, artifactId)
  vim.cmd(cmd)
end, opts)
