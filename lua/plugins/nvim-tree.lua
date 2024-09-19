-- File Explorer / Tree
return {
	-- https://github.com/nvim-tree/nvim-tree.lua
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		-- https://github.com/nvim-tree/nvim-web-devicons
		"nvim-tree/nvim-web-devicons", -- Fancy icon support
	},
	opts = {
		update_focused_file = {
			enable = true,
			update_cwd = true,
		},
		git = {
			enable = true,
			ignore = false,
			timeout = 500,
		},
		view = {
			width = 35,
			relativenumber = true,
		},
		renderer = {
			indent_markers = {
				enable = true,
			},
			icons = {
				glyphs = {
					folder = {
						arrow_closed = "", -- arrow when folder is closed
						arrow_open = "", -- arrow when folder is open
					},
				},
			},
		},
		filters = {
			dotfiles = true,
		},
		actions = {
			open_file = {
				window_picker = {
					enable = false,
				},
			},
		},
	},
	config = function(_, opts)
		-- Recommended settings to disable default netrw file explorer
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		require("nvim-tree").setup(opts)
    vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "toggle file explorer" })
    vim.keymap.set("n", "<leader>eo", ":NvimTreeFocus<CR>", { desc = "toggle focus to file explorer" })
    vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "find file in file explorer" })
    vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "collapse all open folders" })
    vim.keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "refresh the file explorer" })
	end,
}

