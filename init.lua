require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.colorscheme")
-- require("user.cmp")
-- require("user.lsp")

require("user.diagnostics")

require("user.telescope")
require("user.treesitter")
require("user.nvim-tree")

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('user_lsp_attach', {clear = true}),
  callback = function(event)

    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    map('grn', vim.lsp.buf.rename, '[R]e[n]ame')
    map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })
    map('grr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    map('gri', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
    map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
    map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    map('gO', require('telescope.builtin').lsp_document_symbols, 'Open Document Symbols')
    map('gW', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Open Workspace Symbols')
    map('grt', require('telescope.builtin').lsp_type_definitions, '[G]oto [T]ype Definition')

    -- vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    -- vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
    -- vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
    -- vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
    -- vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
    -- vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
    -- vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
    -- vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
    -- vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
    -- vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
  end,
})

-- vim.lsp.default_capabilities()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

require("user.blink")

vim.lsp.config('elixirls', capabilities)
vim.lsp.enable('elixirls')

