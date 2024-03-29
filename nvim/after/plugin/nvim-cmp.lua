local cmp_status, cmp = pcall(require, 'cmp')
if not cmp_status then
    return
end

local luasnip_status, luasnip = pcall(require, 'luasnip')
if not luasnip_status then
    return
end

require('luasnip/loaders/from_vscode').lazy_load()

vim.opt.completeopt = 'menu,menuone,noselect'
local map = cmp.mapping

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = map.select_prev_item(),
        ['<C-n>'] = map.select_next_item(),
        ['<C-e>'] = map.abort(),
        ['<CR>'] = map.confirm({ select = false })
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' }
    })
})
