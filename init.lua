---- // Lazy \\ ----
require("config.lazy")
---- // Theme \\ ----
require("catppuccin").setup()
---- // Vim options \\ ----
vim.o.background = "dark"
vim.cmd.colorscheme "tokyonight-moon"
vim.opt.clipboard:append { "unnamed", "unnamedplus" }
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.number = true

local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {
    "lua",
    "luau",
    "css",
    "c",
    "zig"
  },
  highlight = {
    enable = true
  },
  indent = { enable = true },
  modules = {},
  sync_install = true,
  auto_install = true,
  ignore_install = {}
})

require("keymaps")
require("snippets")
require("custom-commands")
