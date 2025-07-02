local blink = require('blink.cmp')

blink.setup {
  fuzzy = { implementation = "lua" },
  keymap = { preset = 'enter' },
  -- (Default) Only show the documentation popup when manually triggered
  completion = { documentation = { auto_show = false } },
  snippets = { preset = 'luasnip' },
  signature = { enabled = true },
  appearance = {
    -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
    -- Adjusts spacing to ensure icons are aligned
    nerd_font_variant = 'normal'
  },
  sources = {
    default = { 'snippets', 'lsp', 'buffer', 'path' },
    providers = {
      snippets = {
        min_keyword_length = 2,
        score_offset = 4,
      },
      lsp = {
        min_keyword_length = 2,
        score_offset = 3,
      },
      buffer = {
        min_keyword_length = 3,
        score_offset = 1,
      },
    },
  },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = blink.get_lsp_capabilities(capabilities)

vim.lsp.config('elixirls', capabilities)
vim.lsp.enable('elixirls')

vim.lsp.config('luals', capabilities)
vim.lsp.enable('luals')
