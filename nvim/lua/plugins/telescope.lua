return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>fs", builtin.find_files, {})
    vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>gs", builtin.git_files, {})
  end
}

