return{
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function ()
     require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "pyright" },
        opts = {
          auto_install = true,
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.tsserver.setup({ capabilities = capabilities})
      lspconfig.pyright.setup({
        capabilities = capabilities,
        filetype = {"python"},
      })
      lspconfig.lua_ls.setup({ capabilities =  capabilities})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({"n", "v"} , "<leader>ca", vim.lsp.buf.code_action, {})
    end
  }
}
