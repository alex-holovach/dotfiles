return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = { "InsertEnter", "LspAttach" },
    opts = {
      -- Copilot panel settings
      panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
        layout = {
          position = "bottom",
          ratio = 0.4,
        },
      },
      -- Suggestion settings
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-l>", -- Alt + l to accept
          accept_word = "<M-w>", -- Alt + w to accept word
          accept_line = "<M-j>", -- Alt + j to accept line
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      -- Filetypes to disable Copilot
      filetypes = {
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        ["."] = false,
        [""] = false,
      },
      -- LSP settings
      server_opts_overrides = {
        trace = "verbose",
        settings = {
          advanced = {
            listCount = 10, -- Number of completions for panel
            inlineSuggestCount = 3, -- Number of inline completions
          },
        },
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = true,
  },
}
