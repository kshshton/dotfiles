local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status then
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_nvim_lsp_status then
    return
end

local mason_status, mason = pcall(require, 'mason')
if not mason_status then
    return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_status then
    return
end

mason.setup()

mason_lspconfig.setup ({
    ensure_installed = {
        'pyright',
        'tsserver',
        'svelte',
        'html',
        'cssls'
    }
})

local on_attach = function(client, bufnr) 
    local opts = { noremap = true, silent = true, buffer = bufnr }
end
local capabilities = require 'cmp_nvim_lsp'.default_capabilities()

lspconfig['pyright'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig['tsserver'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig['svelte'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig['html'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig['cssls'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

