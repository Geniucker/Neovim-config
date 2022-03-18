-- Support Mouse
vim.o.mouse = "a"


-- Reletive Line Number
vim.wo.number = true
vim.wo.relativenumber = true


-- NERDTree
-- Auto start NERDTree, unless a file or session is specified.
vim.cmd[[
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | wincmd p | endif
]]
-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd[[autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif]]
--]]

require'nvim-tree'.setup{
  open_on_setup        = true,
}
