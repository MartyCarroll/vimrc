local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig')['clangd'].setup {
  on_attach = on_attach,
  -- cmd = { '/bin/clangd' }
  -- flags = {
  --   debounce_text_changes = 150
  -- }
}
