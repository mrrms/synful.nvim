local rms = vim.api.nvim_create_augroup('rms', { clear = true })
local autocmd = function(pattern, opts)
  opts.group = rms
  vim.api.nvim_create_autocmd(pattern, opts)
end

function _NeoTxtify()
  vim.cmd('syntax match NeotxtComment "#.*$"')
  vim.cmd('syntax match NeotxtTodo "TODO.*$"')
  vim.cmd('highlight link NeotxtComment Comment')
  vim.cmd('highlight link NeotxtTodo Todo')
  vim.cmd('syntax on')
  vim.cmd('syntax sync fromstart')
  vim.cmd('syntax reset')
end

-- create an autocmd that uses vim notify when a .txt file is opened
autocmd('BufEnter', {
  pattern = '*.txt',
  callback = function()
    _NeoTxtify()
  end,
})
