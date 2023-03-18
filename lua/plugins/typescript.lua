require'lspconfig'.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "typescript", "typescript.tsx"},
    cmd = {"typescript-language-server", "--stdio" }
}
