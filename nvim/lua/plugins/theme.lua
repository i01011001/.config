return {
  {
    "/rebelot/kanagawa.nvim",
    opts = {
      colors = {
        palette = {
          -- change all usages of these colors
          dragonBlack3 = "#000000",
          samuraiRed = "#de3e3e",
        },
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
              float = {
                bg = "#202020",
                bg_border = "#666666",
                fg_border = "#666666",
              },
              pmenu = {
                bg = "#202020",
              },
            },
          },
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
