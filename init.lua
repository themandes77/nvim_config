vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=5")
vim.cmd("set ts=2")

require("config.lazy")

require("catppuccin").setup()
vim.o.background = "dark"
vim.cmd.colorscheme "gruvbox"
vim.opt.clipboard:append { "unnamed", "unnamedplus" }

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
