require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

SESSION_DIR = vim.fn.getcwd()
IN_CONFIG = false
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


-- Opening the config
map("n", "<leader>cf", function ()
  if not IN_CONFIG then
    local config_path = vim.fn.stdpath('config')
    vim.fn.chdir(config_path)
    require("telescope.builtin").find_files()
    IN_CONFIG = true
  else
    vim.fn.chdir(SESSION_DIR)
    IN_CONFIG = false
  end
end, { desc = "Open the config folder" })
