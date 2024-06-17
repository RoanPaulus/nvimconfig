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
	{
		"kar9222/minimalist.nvim",
		lazy = false,
		priority = 1000,
		-- init = function()
		-- 	vim.cmd.colorscheme("")
		-- end,
	},
	{
		"eldritch-theme/eldritch.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = false,
			styles = {
				comments = { italic = true },
				keywords = { italic = false },
			},
		},
		-- init = function()
		-- 	vim.cmd.colorscheme("eldritch")
		-- end,
	},
}
