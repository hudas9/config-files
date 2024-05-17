return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      pickers = {
        find_files = {
          -- dont show files in node_modules & vendor
          -- find_command = { "rg", "--files", "--hidden", "--glob", "!.git", "--glob", "!node_modules", "--glob", "!vendor" },
          -- theme = "dropdown",
        },
      },
    })
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, {silent = true, noremap = true})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {silent = true, noremap = true})
  end
}
