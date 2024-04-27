vim.g.python3_host_prog = "/usr/bin/python3.12"

--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Settings/options ]]
vim.g.have_nerd_font = true

-- Spaces/Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 0
vim.opt.autoindent = true
vim.opt.smarttab = true

-- Gutter
vim.opt.number = true
vim.opt.relativenumber = true

-- Other
vim.opt.mouse = "a"

vim.opt.showmode = false

vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = {
	tab = "  " --[[alternative value: "» "]],
	trail = "·",
	nbsp = "␣",
}

-- Preview substitutions live, as you type! (hightlight -> :s)
vim.opt.inccommand = "split"

vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = true

-- [[ Keymaps ]]
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank into system registry." })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from system registry below cursor." })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "Paste from system registry above cursor." })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
-- "plugins" after .setup causes layze to load lua/plugins.lua and lua/plugins/*.lua
require("lazy").setup("plugins", {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
