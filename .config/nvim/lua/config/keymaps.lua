local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", {noremap = true, silent = true})
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

-- Pane Navigation
-- Window Management 
