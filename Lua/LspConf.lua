                            --lst cofing

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    'rust_analyzer',
    'sumneko_lua',
})

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-Space>"] = cmp.mapping.complete(),
    ['<C-y>'] = cmp.mapping.confirm({select = true}),
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
