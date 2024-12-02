local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tt', vim.cmd.Telescope, {})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Find via user input a match inside the actual folder
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
-- Use Telescope and Treesiter to find functions, variables and more inside the actual code file
vim.keymap.set('n', '<leader>fs', function()
    require('telescope.builtin').treesitter{}
end, { noremap = true, silent = true, desc = "Search inside the actual code file a function, variable and more related code terms." })

-- search current buffer
vim.keymap.set("n", "<C-s>", ":Telescope current_buffer_fuzzy_find<CR>", opts)
