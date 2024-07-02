return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()

    local oilconfig = require("oil")
    oilconfig.setup({
      defualt_file_explorer = true,
      show_hidden = true
    })
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    vim.keymap.set("n", "<leader>-", oilconfig.toggle_float)
  end
}
