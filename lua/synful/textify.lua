local rms = vim.api.nvim_create_augroup('rms', { clear = true })

function _Autocmd(pattern, opts)
  opts.group = rms
  vim.api.nvim_create_autocmd(pattern, opts)
end

local textify = {
  textifyTodo = { pattern = 'TODO', group = 'Todo' },
  textifyBold = { pattern = '\\*.*\\*', group = 'Bold' },
  textifyItalic = { pattern = '_.*_', group = 'Italic' },
  textifyBoolean = { pattern = '(true|false|\\d+)', group = 'Boolean' },
  textifyKeyword = { pattern = '(if|else|while|for|const|let)', group = 'Keyword' },
  textifyMacro = { pattern = '(^#.*|^@.*|function)', group = 'Macro' },
  textifyReturn = { pattern = '(return|@.*|DONE)', group = 'Return' },
  textifyLocal = { pattern = '(local|for|end)', group = 'luaLocal' },
  textifyString = { pattern = "'[^']*'", group = 'String' },
  textifySlants = { pattern = "'[^`]*`", group = 'Tag' },
  textifyComment = { pattern = '^•.*', group = 'Comment' },
  -- textifyLink = { pattern = 'https?://.*', group = 'Underlined' },
}

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
