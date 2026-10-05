local gh = require('plugins.lib.remotes').gh

vim.pack.add {
  gh 'neovim/nvim-lspconfig',
  gh 'mason-org/mason.nvim',
  gh 'mason-org/mason-lspconfig.nvim',
  gh "WhoIsSethDaniel/mason-tool-installer.nvim",
}

require('mason').setup()

require('mason-lspconfig').setup()

require("mason-tool-installer").setup {
  ensure_installed = {
    "stylua",
    'lua_ls',
    'ruff',
    'ty',
    'angularls',
  },
}

local function vimcmd(command) return function() vim.cmd(command) end end
vim.keymap.set('n', '<leader>om', vimcmd ':Mason', { desc = '[O]pen [M]ason' })
