local config = function()
  require("lazy").setup({{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          autotag {
            enable = true,
          },
          ensure_installed = { 
            "c", 
            "lua", 
            "vim", 
            "vimdoc", 
            "query", 
            "go", 
            "bash",
            "rust",
            "markdown",
            "yaml",
            "dockerfile",
            "json", 
            "javascript",
            "typescript",
            "html" 
          },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }})
end

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  config = config
 }
