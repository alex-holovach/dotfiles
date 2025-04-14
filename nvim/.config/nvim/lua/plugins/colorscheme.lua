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
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "hard" -- darkest background
      vim.g.gruvbox_material_foreground = "material" -- richer, modern fg
      vim.g.gruvbox_material_enable_italic = 0
      vim.cmd("colorscheme gruvbox-material")
    end,
  },
}
