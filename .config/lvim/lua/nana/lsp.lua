local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  { exe = "black" },
  { exe = "fish_indent" },
  { exe = "gofumpt" },
  { exe = "prettier" },
  { exe = "reorder-python-imports" },
  { exe = "rustfmt" },
  { exe = "shfmt", extra_filetypes = { "env" } },
  -- { exe = "stylua" },
  { exe = "phpcsfixer" },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  { exe = "eslint_d" },
  { exe = "flake8" },
  -- { exe = "luacheck", args = { "--globals", "lvim" } },
  { exe = "shellcheck" },
})

lvim.lsp.on_attach_callback = function(client, _)
  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
  end
  require("lsp_signature").on_attach()
end

-- Emmet-ls
local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "php", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
})

lspconfig.cssls.setup({
  settings = {
    css = {
      lint = {
        unknownAtRules = 'ignore',
      }
    }
  }
})


-- IDK why this doesn't work outside config.lua
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
