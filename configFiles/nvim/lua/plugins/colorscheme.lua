return {
  -- add gruvbox
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
      -- colorscheme = "github_dark_high_contrast",
    },
  },
}
