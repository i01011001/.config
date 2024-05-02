return{
{
  "/akinsho/bufferline.nvim",
  options = {
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    }
  }
},

{
  "nvim-cmp",
  opts = {
    window = {
      completion = {
        border = 'single',
        scrollbar = false,
        winhighlight = "Normal:none,FloatBorder:none"
      },
      documentation = {
        border = 'single',
        scrollbar = false,
        winhighlight = "Normal:none,FloatBorder:none"
      },
      ui = {
        border = 'single',
        scrollbar = false,
        winhighlight = "Normal:None,FloatBorder:None"
      },
    },
    formatting = {
      fields = { "abbr", "menu", "kind" },
      format = function(entry, item)
        -- Define menu shorthand for different completion sources.
        local menu_icon = {
          nvim_lsp = "NLSP",
          nvim_lua = "NLUA",
          luasnip = "LSNP",
          buffer = "BUFF",
          path = "PATH",
        }
        -- Set the menu "icon" to the shorthand for each completion source.
        item.menu = menu_icon[entry.source.name]

        -- Set the fixed width of the completion menu to 60 characters.
        -- fixed_width = 20

        -- Set 'fixed_width' to false if not provided.
        fixed_width = fixed_width or false

        -- Get the completion entry text shown in the completion window.
        local content = item.abbr
        -- Set the fixed completion window width.
        if fixed_width then
          vim.o.pumwidth = fixed_width
        end

        -- Get the width of the current window.
        local win_width = vim.api.nvim_win_get_width(0)

        -- Set the max content width based on either: 'fixed_width'
        -- or a percentage of the window width, in this case 20%.
        -- We subtract 10 from 'fixed_width' to leave room for 'kind' fields.
        local max_content_width = fixed_width and fixed_width - 10 or math.floor(win_width * 0.2)

        -- Truncate the completion entry text if it's longer than the
        -- max content width. We subtract 3 from the max content width
        -- to account for the "..." that will be appended to it.
        if #content > max_content_width then
          item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 3) .. "..."
        else
          item.abbr = content .. (" "):rep(max_content_width - #content)
        end
        return item
      end,
    },
  },
},

{
  "lazy.nvim",
  opts = {
    ui={
        border = "single",
      }
    }
  },
  {
    "nvim-lspconfig",
    opts = function ()
      require('lspconfig.ui.windows').default_options.border = 'single'
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = { left = '', right = ''},
        component_separators = { left = '|', right = '|'},
      },
      sections = {
        -- lualine_a = {'mode'},
        -- lualine_b = {'branch', 'diff', 'diagnostics'},
        -- lualine_c = {'filename'},
        -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        -- lualine_y = {'progress'},
        -- lualine_z = {'progress', 'location'}
        lualine_z = {''}
      }
    }
  },

  {
    "mason.nvim",
    opts = {
      ui = {
        border = 'single',
        scrollbar = false,
        winhighlight = "Normal:None,FloatBorder:None"
      }
    }
  },

  {
    "tokyonight.nvim",
    opts={
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      }
    }
  },

  {
    "/folke/which-key.nvim",
    opts={
      window = {
        border = "single", -- none, single, double, shadow
        padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
      }
    }
  },

  {
    "gelguy/wilder.nvim",
    ui = {
      winhighlight = "Normal:None,FloatBorder:None,Bg:None" },
  },

  {
    "/kevinhwang91/nvim-ufo",
    dependencies={'kevinhwang91/promise-async'},
    opts=function ()
      vim.o.foldcolumn = '1' -- '0' is not bad
      vim.o.foldlevel = 20 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 20
      vim.o.foldenable = true

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
      }
      local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
      for _, ls in ipairs(language_servers) do
        require('lspconfig')[ls].setup({
          capabilities = capabilities
          -- you can add other fields for setting up lsp server in this table
        })
      end
      require('ufo').setup()

    end
  }
}



