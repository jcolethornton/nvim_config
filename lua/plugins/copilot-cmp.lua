-- ~/.config/nvim/lua/plugins/copilot-cmp.lua
return {
	"zbirenbaum/copilot-cmp",
	dependencies = { "zbirenbaum/copilot.lua" },
	config = function()
		require("copilot_cmp").setup()
		-- Add Copilot source at the top of cmp sources for higher priority
		local cmp = require("cmp")
		cmp.setup({
			sources = cmp.config.sources({
				{ name = "copilot" },
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),
		})
	end,
}
