-- ~/.config/nvim/lua/plugins/copilot.lua
return {
	"zbirenbaum/copilot.lua",
	config = function()
		require("copilot").setup({
			suggestion = { enabled = false }, -- disables ghost text
			panel = { enabled = false },
		})
	end,
}
