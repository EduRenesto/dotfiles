-- LSP Settings 
local nvim_lsp = require'nvim_lsp'

-- clangd for C/C++
nvim_lsp.clangd.setup{
    on_attach = require'completion'.on_attach
}
-- rust_analyzer for the best language
nvim_lsp.rust_analyzer.setup{
    on_attach = require'completion'.on_attach
}
