local M = {}

local function execute_terminal(command)
  vim.api.nvim_command('TermExec cmd="' .. command .. '"')
end

local function exec_test(row_def)
  local file_path = vim.fn.expand('%')
  local extension = file_path:match("^.+(%..+)$")

  if extension == '.exs' then
    local command = string.format('mix test %s%s', file_path, row_def)
    execute_terminal(command)
  elseif extension == '.ex' then
    local test_file = file_path:gsub('.ex', '_test.exs'):gsub('lib', 'test')
    execute_terminal('mix test ' .. test_file)
  else
    print('not a file test or production file supported!')
  end
end

M.line_test = function()
  local cursor = vim.api.nvim_win_get_cursor(0) -- {line, column}
  exec_test(':' .. cursor[1])
end

M.complete_test = function()
  exec_test('')
end

return M

