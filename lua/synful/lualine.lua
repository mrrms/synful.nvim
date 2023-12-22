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
				b = { fg = colour.slate, bg = colour.stone, gui = "bold" },
				c = { fg = colour.stone, bg = "NONE" },
			},
			insert = { a = { fg = colour.paris, bg = colour.olive, gui = "bold" } },
			visual = { a = { fg = colour.metal, bg = colour.capri, gui = "bold" } },
			replace = { a = { fg = colour.pearl, bg = colour.mauve, gui = "bold" } },
			inactive = {
				a = { fg = colour.pearl, bg = colour.space },
				b = { fg = colour.pearl, bg = colour.space },
				c = { fg = colour.space, bg = colour.space },
			},
		},
	},
})
