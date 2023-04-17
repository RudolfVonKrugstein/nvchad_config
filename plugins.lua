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
  }
}
