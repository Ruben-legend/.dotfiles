return {
  "neovim/nvim-lspconfig",
  opts = function ()
    local lspconfig = require("lspconfig")

lspconfig.emmet_ls.setup({
  -- Enable the file types you want emmet_ls to work on
  filetypes = { "html", "css", "javascript", "typescriptreact", "javascriptreact", "vue", "svelte" },
  init_options = {
    html = {
      options = {
        -- For example, change options here
        ["bem.enabled"] = true,
      },
    },
  },
})
  end
}
