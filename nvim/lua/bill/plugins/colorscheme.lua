return {
  "rose-pine/neovim",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "moon",
      styles = {
        transparency = true,
      },
    })

    vim.cmd("colorscheme rose-pine-moon")
  end,
}
