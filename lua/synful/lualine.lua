local status, lualine = pcall(require, "lualine")

if not status then
	return
end

local colour = require("synful.colour")

lualine.setup({
	options = {
		theme = {
			normal = {
				a = { fg = colour.steel },
				b = { fg = colour.ashen },
				c = { fg = colour.ashen },
			},
			insert = {
				a = { fg = colour.ashen },
				b = { fg = colour.ashen },
			},
			visual = { a = { fg = colour.ashen } },
			replace = { a = { fg = colour.ashen } },
			inactive = {
				a = { fg = colour.ashen },
				b = { fg = colour.ashen },
				c = { fg = colour.ashen },
			},
		},
	},
})
