return {
	"machakann/vim-highlightedyank",
	event = "BufReadPost",
	config = function()
		vim.g.highlightedyank_highlight_duration = 300

		vim.api.nvim_create_autocmd("TextYankPost", {
			callback = function()
				vim.highlight.on_yank()
			end,
		})
	end,
}
