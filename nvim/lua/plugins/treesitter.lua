return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "c", "lua", "javascript", "html", "python", "typescript" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true }  
    })
  end
}

