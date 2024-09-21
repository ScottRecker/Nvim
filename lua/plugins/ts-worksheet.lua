return {
	-- https://github.com/typed-rocks/ts-worksheet-neovim
	"typed-rocks/ts-worksheet-neovim",
	opts = {
		severity = vim.diagnostic.severity.WARN,
	},
	config = function(_, opts)
		require("tsw").setup(opts)
	end,
}
