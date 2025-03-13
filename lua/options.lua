require "nvchad.options"

-- add yours here!

local o = vim.o

o.cursorlineopt ='both' -- to enable cursorline!
o.scrolloff = 10

-- GUI options
if vim.g.neovide then
  o.guifont = "CaskaydiaMono Nerd Font"
end
