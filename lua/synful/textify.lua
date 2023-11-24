local rms = vim.api.nvim_create_augroup('rms', { clear = true })

function _Autocmd(pattern, opts)
  opts.group = rms
  vim.api.nvim_create_autocmd(pattern, opts)
end

local textify = {
  textifyTodo = { pattern = 'TODO', group = 'Todo' },
  textifyDone = { pattern = 'DONE', group = 'Keyword' },
  textifyBold = { pattern = '\\*.*\\*', group = 'Bold' },
  textifyItalic = { pattern = '_.*_', group = 'Italic' },
  textifyComment = { pattern = '^•.*', group = 'Comment' },
  textifyTrue = { pattern = 'true', group = 'Boolean' },
  textifyFalse = { pattern = 'false', group = 'Boolean' },
  textifyKeyword = { pattern = 'keyword', group = 'Keyword' },
  textifyMacro = { pattern = '^#.*', group = 'Macro' },
  textifyFunction = { pattern = 'function', group = 'Macro' },
  textifyReturn = { pattern = 'return', group = 'Return' },
  textifyCost = { pattern = 'const', group = 'Keyword' },
  textifyLet = { pattern = 'let', group = 'Keyword' },
  textifyLocal = { pattern = 'local', group = 'luaLocal' },
  textifyString = { pattern = "'[^']*'", group = 'String' },
  textifyNumber = { pattern = '\\%([0-9]\\+\\|[0-9]\\+\\.[0-9]\\+\\)', group = 'Number' },
  -- textifyLink = { pattern = 'https?://.*', group = 'Underlined' },
  -- textifyTag = { pattern = '@.*', group = 'Tag' },
}

_Autocmd({ 'TextChanged', 'TextChangedI' }, {
  group = rms,
  pattern = '*.txt',
  callback = function()
    local line = vim.fn.getline('.')
    local newLine = line:gsub('^:([^:]+):$', '-----------\n-- %1 --\n-----------')
    if newLine ~= line then
      vim.fn.setline('.', newLine)
    end
  end
})

_Autocmd('BufEnter', {
  pattern = '*.txt',
  callback = function()
    for k, v in pairs(textify) do
      vim.cmd('syntax match ' .. k .. ' /' .. v.pattern .. '/')
      vim.cmd('syntax match ' .. v.group .. ' /' .. v.pattern .. '/')
    end
  end
})

_Autocmd('TextChanged', {
  pattern = '*.txt',
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    for i, line in ipairs(lines) do
      line = line:gsub('[_*]', '')
      lines[i] = line
    end
    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
  end
})
