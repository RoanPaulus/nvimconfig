return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		opts = {
			styles = {
				bold = false,
				italic = false,
				transparency = false,
			},
		},
		init = function()
			vim.cmd.colorscheme("rose-pine-moon")
		end,
	},
}
