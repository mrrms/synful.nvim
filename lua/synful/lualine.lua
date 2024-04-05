local status, lualine = pcall(require, "lualine")

if not status then
	return
end

local colour = require("synful.colour")

lualine.setup({
	options = {
		theme = {
			normal = {
				a = { fg = colour.raven, bg = colour.depth },
				b = { fg = colour.raven, bg = colour.depth },
				c = { fg = colour.raven, bg = "none" },
			},
			insert = {
				a = { fg = colour.green, bg = colour.depth },
				b = { fg = colour.raven, bg = colour.depth },
			},
			visual = { a = { fg = colour.capri, bg = colour.depth } },
			replace = { a = { fg = colour.raven, bg = colour.depth } },
			inactive = {
				a = { fg = colour.raven, bg = colour.space },
				b = { fg = colour.raven, bg = colour.space },
				c = { fg = colour.raven, bg = colour.space },
			},
		},
	},
})
