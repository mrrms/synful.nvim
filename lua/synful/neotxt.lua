local rms = vim.api.nvim_create_augroup('rms', { clear = true })
local autocmd = function(pattern, opts)
  opts.group = rms
  vim.api.nvim_create_autocmd(pattern, opts)
end

-- create an autocmd that uses vim notify when a .txt file is opened
autocmd('BufEnter', {
  pattern = '*.txt',
  callback = function()
    vim.notify('We have a .txt file here!')
  end,
})
