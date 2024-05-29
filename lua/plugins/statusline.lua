return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "auto",
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = {
				{
					"branch",
					-- Prevent branchname overlapping filename
					fmt = function(str)
						local window_width = vim.api.nvim_win_get_width(0)
						if window_width <= 100 then
							return nil
						end
						return str
					end,
				},
				"diff",

				"diagnostics",
			},
			lualine_c = { "filename" },
			lualine_x = { "encoding" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
	},
}
