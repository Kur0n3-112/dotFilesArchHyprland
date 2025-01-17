function RmAllMarks()
    vim.cmd("delm! | delm A-Z0-9\"<>")
end

RmAllMarks()

vim.keymap.set("n", "<leader>rm", function()
    RmAllMarks()
    vim.cmd("echo 'All the marks have been deleted.'")
end)

