-- return {
--   -- add gruvbox
--   -- { "ellisonleao/gruvbox.nvim" },
--   { "catppuccin/nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--       background = "mocha",
--     },
--   },
-- }
--
return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = {
    contrast = "hard",
  },
  config = function(_, opts)
    require("gruvbox").setup(opts)
    vim.cmd.colorscheme("gruvbox")
  end,
}
