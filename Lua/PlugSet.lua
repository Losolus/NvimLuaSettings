require('Treesitter')
require('NvimTreeSettings')
--require('TelescopeConf')
require('LspConf')

                            --mason config
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


