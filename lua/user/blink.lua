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
     default = { 'lsp', 'snippets', 'buffer', 'path' },
   },
 }
-- local cfg = vim.lsp.config.elixirls
-- vim.lsp.config('elixirls', {
--    capabilities = require('blink.cmp').get_lsp_capabilities(cfg.capabilities)
})
