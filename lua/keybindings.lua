local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

keymap("n","H","^",opts)
keymap("n","L","$",opts)

keymap("n","q",":bd<CR>",opts)
keymap("n","<leader>q","q",opts)

-- Windows Controle
keymap("n","<A-h>","<C-w>h",opts)
keymap("n","<A-j>","<C-w>j",opts)
keymap("n","<A-k>","<C-w>k",opts)
keymap("n","<A-l>","<C-w>l",opts)


pluginKeys = {}

-- NERDTree
keymap("","<F3>",":NERDTreeToggle<CR>",opts)

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<S-tab>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<tab>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end
return pluginKeys
