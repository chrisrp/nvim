local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }

-- shorter the function call
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = ","

keymap('n', '<CR>', 'o<ESC>', {desc = 'New line in normal mode'})
keymap('n', '<C-q>', '<ESC>:q<CR>', {desc = 'Exit'})
keymap('i', '<C-q>', '<ESC>:q<CR>', {desc = 'Exit'})
keymap('n', '<C-s>', '<ESC>:w<CR>', {desc = 'Save file'})
keymap('i', '<C-s>', '<ESC>:w<CR>', {desc = 'Save file'})
keymap('n', 'vv', '<C-w>v', {desc = 'Split horizontal', silent = true})
keymap('n', 'ss', '<C-w>s', {desc = 'Save vertical', silent = true})

-- open tree
keymap('n', '<leader>e', ':Lex 30<CR>', opts)

-- formats json
keymap("n", "<leader>f", ":%!jq .<CR>", opts)

-- resize with arrows
keymap("n", "<C-k>", ":resize +2<CR>", opts)
keymap("n", "<C-j>", ":resize -2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = 'Telescope live grep' })

-- luasnips
-- TODO: Descomentar qdo instalar snips
-- local ls = require("luasnip")

-- vim.keymap.set({'i', 's'}, '<C-;>', function ()
--   if ls.expand_or_jumpable() then
--     ls.expand_or_jump()
--   end
-- end, { silent = true })
--
-- vim.keymap.set({'i', 's'}, '<C-,>', function ()
--   if ls.jumpable(-1) then
--     ls.jump(-1)
--   end
-- end, { silent = true })


-- local m = require("user.user_functions")
--
-- vim.keymap.set('n', '<C-x>', function ()
--     m.line_test()
-- end, { desc = 'run test based on line number' })
--
-- vim.keymap.set('n', '<C-c>', function ()
--     m.complete_test()
-- end, { desc = 'run complete test file' })

-- waits for 1s between keys (needed for nvim-surround to work)
vim.o.timeoutlen = 1000
