return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- Trouble
		-- TODO: Is this the best way for this?
		vim.keymap.set("n", "<leader>xx", function()
			require("trouble").toggle()
		end, { desc = "Trouble toggle" }),

		vim.keymap.set("n", "<leader>xw", function()
			require("trouble").toggle("workspace_diagnostics")
		end, { desc = "Trouble workspace diagnostics" }),

		vim.keymap.set("n", "<leader>xd", function()
			require("trouble").toggle("document_diagnostics")
		end, { desc = "Trouble document diagnostics" }),

		vim.keymap.set("n", "<leader>xq", function()
			require("trouble").toggle("quickfix")
		end, { desc = "Trouble quickfix" }),

		vim.keymap.set("n", "<leader>xl", function()
			require("trouble").toggle("loclist")
		end, { desc = "Trouble loclist" }),

		vim.keymap.set("n", "gR", function()
			require("trouble").toggle("lsp_references")
		end, { desc = "Trouble lsp references" }),
		vim.keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<cr>", { desc = "Open todos in Trouble" }),
	},
}
