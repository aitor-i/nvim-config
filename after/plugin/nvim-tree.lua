--[[
   [local setup, nvimtree = pcall(require, "nvim-tree")
   [if not setup then
   [    return
   [    end
   [
   [ --disable netrw at the very start of your init.lua
   [vim.g.loaded_netrw = 0
   [vim.g.loaded_netrwPlugin = 0
   [
   [ --empty setup using defaults
   [require("nvim-tree").setup()
   [
   [ --OR setup with some options
   [
   [require("nvim-tree").setup({
   [  sort_by = "case_sensitive",
   [  view = {
   [    width = 30,
   [  },
   [  renderer = {
   [    group_empty = true,
   [  },
   [  filters = {
   [    dotfiles = true,
   [  },
   [})
   [
   [ --OR setup with some options
   [nvimtree.setup ({
   [
   [} )
   ]]
