local status, lualine = pcall(require, "lualine")

if not status then
	return
end

local colour = require("synful.colour")

lualine.setup({
	options = {
		theme = {
			normal = {
				a = { fg = colour.raven },
				b = { fg = colour.raven },
				c = { fg = colour.raven },
			},
			insert = {
				a = { fg = colour.green },
				b = { fg = colour.raven },
			},
			visual = { a = { fg = colour.capri } },
			replace = { a = { fg = colour.raven } },
			inactive = {
				a = { fg = colour.raven },
				b = { fg = colour.raven },
				c = { fg = colour.raven },
			},
		},
	},
})
