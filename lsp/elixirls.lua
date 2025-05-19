return {
  cmd = { "elixir-ls" },
  filetypes = {'ex', 'exs', 'heex'},
  root_markers = {'.git', 'mix.exs'},
  -- on_attach = custom_attach, -- this may be required for extended functionalities of the LSP
  -- capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  elixirLS = {
    dialyzerEnabled = false,
    fetchDeps = false,
  };
}
