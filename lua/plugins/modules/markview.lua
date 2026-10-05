local gh = require('plugins.lib.remotes').gh

vim.pack.add {
  gh 'OXY2DEV/markview.nvim',
}

require('markview').setup {}

local cmd = require('lib.vim-cmd')
vim.keymap.set('n', '<leader>tms', cmd ':Markview splitToggle', { desc = '[T]oggle [M]arkdown [S]plit view' })
