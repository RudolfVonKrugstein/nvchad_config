local plugins = {
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
