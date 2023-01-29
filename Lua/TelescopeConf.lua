                            --telescope
--local fb_actions = require "telescope".extensions.file_browser.actions
local builtin = require('telescope.builtin')
--file-browser
vim.api.nvim_set_keymap(
  "n",
  "<space>tl",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<space>ff', builtin.buffers, {})

--require("telescope").load_extension "file_browser"

