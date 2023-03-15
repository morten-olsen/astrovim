return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.editing-support/zen-mode-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
}
