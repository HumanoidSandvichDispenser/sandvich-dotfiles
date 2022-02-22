local signs = {
    Error = "",
    Warn = "",
    Hint = "",
    Info = ""
}

vim.lsp.handlers["textDocument/hover"] =
    vim.lsp.with(vim.lsp.handlers.hover,
    {
        border = "single"
    })

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
