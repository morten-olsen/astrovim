return {
  "epwalsh/obsidian.nvim",
  lazy = false,
  -- event = { "BufReadPre " .. vim.fn.expand "~" .. "/notes/**.md" },
  -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
  -- event = { "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  config = function()
    require("obsidian").setup({
      dir = "~/notes",
      mappings = {},
      notes_subdir = "notes",
      templates = {
        subdir = "_templates",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M"
      },
      daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "dailies",
        -- Optional, if you want to change the date format for daily notes.
        date_format = "%Y-%m-%d"
      },
    })
    vim.keymap.set("n", "gf", function()
      if require("obsidian").util.cursor_on_markdown_link() then
        return "<cmd>ObsidianFollowLink<CR>"
      else
        return "gf"
      end
    end, { noremap = false, expr = true })
  end,
}
