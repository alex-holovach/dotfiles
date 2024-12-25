return {
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    config = function()
      vim.g.db_ui_use_nerd_fonts = 1

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "sql",
        callback = function()
          -- Execute buffer
          vim.keymap.set("n", "<leader>db", ":%DB<CR>", { buffer = true })
          -- Execute line
          vim.keymap.set("n", "<leader>dl", ":.DB<CR>", { buffer = true })
          -- Execute selection
          vim.keymap.set("v", "<leader>ds", ":DB<CR>", { buffer = true })
        end,
      })
    end,
  },
}
