return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  config = function()
    local palette = require("rose-pine.palette")

    require("rose-pine").setup({
      variant = "moon",
      styles = {
        transparency = true,
      },
      highlight_groups = {
        IblIndent = { fg = palette.highlight_med },
        IblScope = { fg = palette.muted },
      },
    })

    vim.cmd("colorscheme rose-pine")
  end,
}
