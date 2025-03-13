require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


-- Opening the config
map("n", "<leader>cf", function ()
  local config_path = vim.fn.stdpath('config')
  vim.fn.chdir(config_path)
  require("telescope.builtin").find_files()
end, { desc = "Open the config folder" })
