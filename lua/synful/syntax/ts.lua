-- When an index.ts file is opened, detect the character * and link the highlight group to 'Boolean'
-- write this in luascript

vim.cmd("autocmd BufRead,BufNewFile *.ts syntax match Boolean /\\*/")
