return {
  "tomasky/bookmarks.nvim",
  event = "VimEnter",
  config = function()
    require("bookmarks").setup({
      keywords =  {
        ["@t"] = "󰃁 ", -- mark annotation startswith @t ,signs this icon as `Todo`
        ["@w"] = " ", -- mark annotation startswith @w ,signs this icon as `Warn`
        ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
        ["@n"] = "󰃃 ", -- mark annotation startswith @n ,signs this icon as `Note`
      },
      on_attach = function(bufnr)
        -- local bm = require "bookmarks"
        -- local map = vim.keymap.set
        -- map("n","mm",bm.bookmark_toggle) -- add or remove bookmark at current line
        -- map("n","mi",bm.bookmark_ann) -- add or edit mark annotation at current line
        -- map("n","mc",bm.bookmark_clean) -- clean all marks in local buffer
        -- map("n","mn",bm.bookmark_next) -- jump to next mark in local buffer
        -- map("n","mp",bm.bookmark_prev) -- jump to previous mark in local buffer
        -- map("n","ml",bm.bookmark_list) -- show marked file list in quickfix window
      end
    })
    require('telescope').load_extension('bookmarks')
  end,
  keys = {
    { "<leader>mm", ":lua require('bookmarks').bookmark_toggle()<cr>", desc = "Toggle bookmark"},
    { "<leader>mi", ":lua require('bookmarks').bookmark_ann()<cr>", desc = "Add/edit annotation"},
    { "<leader>mc", ":lua require('bookmarks').bookmark_clean()<cr>", desc = "Clear annotations"},
    { "<leader>mn", ":lua require('bookmarks').bookmark_next()<cr>", desc = "Next annotations"},
    { "<leader>mp", ":lua require('bookmarks').bookmark_prev()<cr>", desc = "Prev annotations"},
    { "<leader>ml", ":Telescope bookmarks list<cr>", desc = "List annotations"},
  }
}
