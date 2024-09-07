return {
	"phaazon/hop.nvim",
	branch = "v2", -- optional but strongly recommended
	config = function()
		-- you can configure Hop the way you like here; see :h hop-config
		require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })

		local keymap = vim.keymap -- for conciseness

		-- place this in one of your configuration file(s)
		local hop = require("hop")
		local directions = require("hop.hint").HintDirection
		keymap.set("", "f", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR })
		end, { remap = true })
		keymap.set("", "F", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR })
		end, { remap = true })
		keymap.set("", "t", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, hint_offset = -1 })
		end, { remap = true })
		keymap.set("", "T", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, hint_offset = 1 })
		end, { remap = true })
	end,
}
