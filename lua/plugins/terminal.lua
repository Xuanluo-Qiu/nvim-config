return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("toggleterm").setup({
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
        persist_size = true,
        persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
        auto_scroll = true, -- automatically scroll to the bottom on terminal output
        border = "rounded",
      })
    end,
    keys = {
      { "<leader>th", "<cmd>ToggleTerm size=15 direction=horizontal<cr>", desc = "Open terminal by horizontal" },
      { "<leader>tv", "<cmd>ToggleTerm size=50 direction=vertical<cr>", desc = "Open terminal by vertical" },
      { "<C-/>", "<cmd>ToggleTerm direction=float<cr>", desc = "Open terminal by float" },
    },
  },
}
