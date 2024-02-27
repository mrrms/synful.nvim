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
				b = { fg = colour.ultra, bg = colour.death },
				c = { fg = colour.stone, bg = "NONE" },
			},
			insert = {
				a = { fg = colour.paris, bg = colour.green },
				b = { fg = "#b19bb0", bg = "#43405c" },
			},
			visual = { a = { fg = colour.capri, bg = colour.steel } },
			replace = { a = { fg = colour.purps, bg = colour.mauve } },
			inactive = {
				a = { fg = colour.ashen, bg = colour.space },
				b = { fg = colour.ashen, bg = colour.space },
				c = { fg = colour.space, bg = colour.space },
			},
		},
	},
})
