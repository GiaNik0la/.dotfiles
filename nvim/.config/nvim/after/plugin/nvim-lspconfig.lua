require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "rust_analyzer", "clangd" },
})

local lsp = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities();

lsp.clangd.setup {
    capabilities = capabilities
}

lsp.lua_ls.setup {
    capabilities = capabilities
}

lsp.rust_analyzer.setup {
    capabilities = capabilities
}
