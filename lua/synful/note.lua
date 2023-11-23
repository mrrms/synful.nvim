local notes = {
  ['NoteTodo'] = { chars = 'TODO', link = 'Todo' },
  ['NoteTitle'] = { chars = '^•.*$', link = 'Title' },
  ['NoteComment'] = { chars = '^-.*$', link = 'Comment' },
  ['NoteBold'] = { chars = '_([^_]+)_', link = 'Macro' },
  ['NoteItalics'] = { chars = '%*([^%*]+)%*', link = 'Tag' },
  ['NoteBoldItalic'] = { chars = '__%*([^*_]+)%*__', link = 'Macro' },
  ['NoteString'] = { chars = "'([^'\n]*)'", link = 'String' },
  ['NoteMacro'] = { chars = '^#.*$', link = 'Macro' },
  ['NoteKeyword'] = { chars = '^#.*$', link = 'Keyword' },
  ['NoteBoolean'] = { chars = '^#.*$', link = 'Boolean' },
  ['NoteNumber'] = { chars = "[+-]?%d+%.?%d*[eE]?[+-]?%d*", link = 'Number' },
  ['NoteOperator'] = { chars = '^#.*$', link = 'Operator' },
}

for group, config in pairs(notes) do
  vim.cmd('highlight ' .. group .. ' ' .. config.chars)
  vim.cmd('syntax match ' .. group .. ' ' .. config.chars)
  vim.cmd('highlight link ' .. group .. ' ' .. config.link)
end
