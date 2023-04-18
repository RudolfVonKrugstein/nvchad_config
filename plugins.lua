--@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
     "jose-elias-alvarez/null-ls.nvim",
     config = function()
       require "custom.configs.null-ls"
     end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "elkowar/yuck.vim", lazy = false
  },
  {
    "ahmedkhalf/project.nvim", lazy=false,
    config = function()
      require("project_nvim").setup {
        detection_methods = {"pattern", "lsp"},
        silent_chdir = false
      }
    end
  },
  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup {
      }
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = false,
    config = function()
      vim.fn["mkdp#util#install"]()
    end
  },
  {
    "pest-parser/pest.vim",
    lazy = false
  },
  {
    "pocco81/auto-save.nvim",
    lazy = false
  },
  {
    "Lilja/zellij.nvim",
    lazy =false,
    config = function()
      require('zellij').setup({})
    end
  }
}

return plugins
