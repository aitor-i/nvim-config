vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_var("tunings", {
  macOptionAsMeta = true,
})

vim.keymap.set("n", "<leader>ñ", vim.lsp.buf.code_action)

vim.cmd('set spell')
vim.cmd('set spelloptions=camel')

