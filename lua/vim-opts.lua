vim.g.mapleader = " "

vim.filetype.add({ extension = { asm = "nasm" }})

vim.opt.nu = true
vim.opt.rnu = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.keymap.set("n", "<C-m>", ":!make", {})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
