local status, lualine = pcall(require, "lualine")

if not status then
	return
end

local colour = require("synful.colour")

lualine.setup({
	options = {
		theme = {
			normal = {
				a = { fg = colour.royal, bg = colour.raven },
				b = { fg = colour.ultra, bg = colour.purps },
				c = { fg = colour.stone, bg = "NONE" },
			},
			insert = {
				a = { fg = colour.paris, bg = colour.green },
				b = { fg = colour.raven, bg = colour.stone },
			},
			visual = { a = { fg = colour.capri, bg = colour.stone } },
			replace = { a = { fg = colour.raven, bg = colour.purps } },
			inactive = {
				a = { fg = colour.slate, bg = colour.space },
				b = { fg = colour.slate, bg = colour.space },
				c = { fg = colour.space, bg = colour.space },
			},
		},
	},
})
