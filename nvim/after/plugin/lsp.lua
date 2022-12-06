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
        'sumneko_lua',
        'clangd',
        'tsserver',
        'svelte',
        'html',
        'cssls'
    }
})

local on_attach = function(_, bufnr) 
    local opts = { noremap = true, silent = true, buffer = bufnr }
end
local capabilities = require 'cmp_nvim_lsp'.default_capabilities()

local lsp_servers = {
    'pyright',
    'sumneko_lua',
    'clangd',
    'tsserver',
    'svelte',
    'html',
    'cssls'
}

for _, server in pairs(lsp_servers) do
    lspconfig[server].setup({
        capabilities = capabilities,
        on_attach = on_attach
    })
end

