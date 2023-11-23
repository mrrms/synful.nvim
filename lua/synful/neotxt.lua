local rms = vim.api.nvim_create_augroup('rms', { clear = true })
local autocmd = function(pattern, opts)
  opts.group = rms
  vim.api.nvim_create_autocmd(pattern, opts)
end

-- set the cmdline height to zero
autocmd('FileType', {
  pattern = '*.txt',
  callback = function()
    vim.notify('We have a .txt file here!')
  end,
})
