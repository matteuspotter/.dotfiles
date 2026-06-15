vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>Pa", vim.cmd.PackerSync)
vim.keymap.set("n", "<leader>pr", function()
	vim.cmd("!pros mu --project ~/repos/11981D_2526")
end)




