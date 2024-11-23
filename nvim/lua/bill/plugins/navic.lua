return {
  "SmiteshP/nvim-navic",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("nvim-navic").setup({
      highlight = true,
      click = true,
      lsp = {
        auto_attach = true,
      },
    })
  end,
}
