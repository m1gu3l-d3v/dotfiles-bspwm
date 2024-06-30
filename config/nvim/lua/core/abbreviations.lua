function SetupAbbreviations()
  local file_extension = vim.fn.expand('%:e')
  if file_extension == 'java' then
    vim.cmd [[
      iabbrev <buffer> inic public class <C-R>=expand('%:t:r')<CR> {<CR><C-R>=Eat()<CR>
      iabbrev <buffer> psvm public static void main(String[] args) {<CR><C-R>=Eat()<CR>
      iabbrev <buffer> sout System.out.println("");<Left><Left><Left><C-R>=Eat()<CR>
      iabbrev <buffer> tost @Override<CR>public String toString(){<CR>return ;<Esc>A<Left><C-R>=Eat()<CR>
      iabbrev <buffer> fori for (int i = 0; i < ; i++) {<CR><C-R>=Eat()<CR>
      iabbrev <buffer> ifii if () {<CR><C-R>=Eat()<CR>
      iabbrev <buffer> elif else if () {<CR><C-R>=Eat()<CR>
      iabbrev <buffer> else else {<CR><C-R>=Eat()<CR>
      autocmd FileType javascript :iabbrev <buffer> date <C-R>=strftime("%d/%m/%Y")<CR><C-R>=Eat()<CR>
    ]]
  end
end

vim.api.nvim_exec([[autocmd BufEnter * lua SetupAbbreviations()]], false)

function Eat()
  local char = vim.fn.nr2char(vim.fn.getchar(0))
  return vim.fn.match(char, '%s') == -1 and char or ''
end
