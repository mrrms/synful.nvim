local status, lualine = pcall(require, "lualine")

if not status then
	return
end

local colour = require("synful.colour")

lualine.setup({
	options = {
		theme = {
			normal = {
				a = { fg = colour.stone, bg = colour.depth },
				b = { fg = colour.raven, bg = colour.depth },
				c = { fg = colour.raven, bg = "NONE" },
			},
			insert = {
				a = { fg = colour.paris, bg = colour.depth },
				b = { fg = colour.raven, bg = colour.depth },
			},
			visual = { a = { fg = colour.capri, bg = colour.depth } },
			replace = { a = { fg = colour.raven, bg = colour.depth } },
			inactive = {
				a = { fg = colour.slate, bg = colour.space },
				b = { fg = colour.slate, bg = colour.space },
				c = { fg = colour.space, bg = colour.space },
			},
		},
	},
})
