local ts = require("synful.treesitter")

local M = {}

M.bg = "#000000"
M.fg = "#ffffff"

function M.highlight(group, hl)
  group = ts.get(group)
  if not group then
    return
  end
  if hl.style then
    if type(hl.style) == "table" then
      hl = vim.tbl_extend("force", hl, hl.style)
    elseif hl.style:lower() ~= "none" then
      -- handle old string style definitions
      for s in string.gmatch(hl.style, "([^,]+)") do
        hl[s] = true
      end
    end
    hl.style = nil
  end
  vim.api.nvim_set_hl(0, group, hl)
end

function M.onColorScheme()
  vim.cmd([[autocmd! synful ]])
  vim.cmd([[augroup! synful ]])
end

function M.autocmds(config)
  vim.cmd([[augroup Synful]])
  vim.cmd([[autocmd!]])
  vim.cmd([[autocmd ColorSchemePre * lua require("synful.util").onColorScheme()]])
  vim.cmd(
    [[  autocmd FileType ]]
    .. table.concat(config.sidebars, ",")
    .. [[ setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]]
  )
  if vim.tbl_contains(config.sidebars, "terminal") then
    vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]])
  end
  vim.cmd([[augroup end]])
end

function M.template(str, table)
  return (
      str:gsub("($%b{})", function(w)
        return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
      end)
      )
end

function M.syntax(syntax)
  for group, colors in pairs(syntax) do
    M.highlight(group, colors)
  end
end

---@param colors ColorScheme
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.terminal_black

  -- light
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue

  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan
end

function M.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "synful"

  if ts.new_style() then
    for group, colors in pairs(ts.defaults) do
      if not theme.highlights[group] then
        M.highlight(group, colors)
      end
    end
  end

  M.syntax(theme.highlights)

  -- vim.api.nvim_set_hl_ns(M.ns)
  if theme.config.terminal_colors then
    M.terminal(theme.colors)
  end

  M.autocmds(theme.config)

  vim.defer_fn(function()
    M.syntax(theme.defer)
  end, 100)
end

return M
