local status, lualine = pcall(require, "lualine")

if not status then
	return
end

local colour = require("synful.colour")

lualine.setup({
	options = {
		theme = {
			normal = {
				a = { fg = colour.stone },
				b = { fg = colour.stone },
				c = { fg = colour.stone },
			},
			insert = {
				a = { fg = colour.stone },
				b = { fg = colour.stone },
			},
			visual = { a = { fg = colour.stone } },
			replace = { a = { fg = colour.stone } },
			inactive = {
				a = { fg = colour.stone },
				b = { fg = colour.stone },
				c = { fg = colour.stone },
			},
		},
	},
})
