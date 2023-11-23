local rms = vim.api.nvim_create_augroup('rms', { clear = true })

local autocmd = function(pattern, opts)
  opts.group = rms
  vim.api.nvim_create_autocmd(pattern, opts)
end

local textify = {
  textifyTodo = { pattern = 'TODO', group = 'Todo' },
  textifyDone = { pattern = 'DONE', group = 'Keyword' },
  textifyBold = { pattern = '\\*.*\\*', group = 'Bold' },
  textifyItalic = { pattern = '_.*_', group = 'Italic' },
  textifyComment = { pattern = '•.*$', group = 'Comment' },
  textifyBullet = { pattern = '•', group = 'Todo' },
  textifyLink = { pattern = 'https?://.*', group = 'Underlined' },
  textifyTag = { pattern = '@.*', group = 'Tag' },
  textifyMacro = { pattern = '#.*', group = 'Macro' },
  textifyNumber = { pattern = '#.*', group = 'Number' },
  textifyBoolean = { pattern = 'true', group = 'Boolean' },
  textifyString = { pattern = '"[^"]*"', group = 'String' },
  textifyFunction = { pattern = 'function', group = 'Function' },
  textifyReturn = { pattern = 'return', group = 'Return' },
  textifyCost = { pattern = 'const', group = 'Keyword' },
  textifyLocal = { pattern = 'local', group = 'luaLocal' },
}

autocmd('BufEnter', {
  group = rms,
  -- all text files
  pattern = '*.txt',
  callback = function()
    for k, v in pairs(textify) do
      vim.cmd('syntax match ' .. k .. ' "' .. v.pattern .. '"')
      vim.cmd('highlight link ' .. k .. ' ' .. v.group)
    end
  end
})
