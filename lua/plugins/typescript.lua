return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {
		handlers = {
			["textDocument/publishDiagnostics"] = function(_, _, _, _)
				-- Disable diagnostics from tsserver
			end,
		},
	},
}
