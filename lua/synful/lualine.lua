local status, lualine = pcall(require, "lualine")

if not status then
	return
end

local colour = require("synful.colour")

lualine.setup({
	options = {
		theme = {
			normal = {
				a = { fg = colour.royal, bg = colour.raven, gui = "bold" },
				b = { fg = colour.ashen, bg = colour.death, gui = "bold" },
				c = { fg = colour.stone, bg = "NONE", gui = "italic,bold" },
			},
			insert = { a = { fg = colour.paris, bg = colour.green, gui = "bold" } },
			visual = { a = { fg = colour.capri, bg = colour.steel, gui = "bold" } },
			replace = { a = { fg = colour.ashen, bg = colour.mauve, gui = "bold" } },
			inactive = {
				a = { fg = colour.ashen, bg = colour.space },
				b = { fg = colour.ashen, bg = colour.space },
				c = { fg = colour.space, bg = colour.space },
			},
		},
	},
})
