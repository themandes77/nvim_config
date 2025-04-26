return {
    "nvimtools/none-ls.nvim",
    config = function()
	local null_ls = require("null-ls")
	null_ls.setup({
	    sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
	    },
	})
	vim.keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async=true})<cr>')
    end,
}
