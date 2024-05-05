vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Directory Navigation
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { noremap = true, silent = true })

-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree<CR>", { noremap = true, silent = true })

-- whichkey
vim.keymap.set("n", "<leader>", ":WhichKey<CR>", { noremap = true, silent = true })

--telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })

-- bufferline
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
