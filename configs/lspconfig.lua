local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
lspconfig.pylsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'python' },
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = true,
          ignore = { 'E203', 'E121', 'E123', 'E126', 'E133', 'E226', 'E241', 'E242', 'E704', 'W503', 'W504', 'W505' },
          maxLineLength = 100,
        },
        pydocstyle = {
          enabled = true
        },
        pylint = {
          enabled = true
        },
        isort = {
          enabled = true,
        },
        python_lsp_black = {
          enabled = true,
          line_length = 100,
        },
      }
    }
  }
}

