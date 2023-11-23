local rms = vim.api.nvim_create_augroup('rms', { clear = true })

local autocmd = function(pattern, opts)
  opts.group = rms
  vim.api.nvim_create_autocmd(pattern, opts)
end

function _NeoTxtify()
  vim.cmd('syntax match textifyTodo "TODO"')
  vim.cmd('syntax match textifyDone "DONE"')
  vim.cmd('syntax match textifyBold "\\*.*\\*"')
  vim.cmd('syntax match textifyItalic "_.*_"')
  vim.cmd('syntax match textifyComment "•.*$"')
  vim.cmd('highlight link textifyDone Keyword')
  vim.cmd('highlight link textifyTodo Todo')
  vim.cmd('highlight link textifyBold Bold')
  vim.cmd('highlight link textifyItalic Italic')
  vim.cmd('highlight link textifyComment Comment')
end

-- create an autocmd that uses vim notify when a .txt file is opened
autocmd('BufEnter', {
  pattern = '*.txt',
  callback = function()
    _NeoTxtify()
  end,
})
