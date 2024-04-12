-- provide a syntax match for periods or dots in lua '.'
vim.cmd("syntax match luaDot '\\.'")
vim.cmd("hi def link luaDot Number")
