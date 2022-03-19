mymap = vim.api.nvim_set_keymap
myopts = { noremap = true, silent = true }

-- set the leader key
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

mymap("n","H","^",myopts)
mymap("n","L","$",myopts)

mymap("n","j","gj",myopts)
mymap("n","gj","j",myopts)
mymap("n","k","gk",myopts)
mymap("n","gk","k",myopts)

-- remap 'q'
mymap("n","q",":bd<CR>",myopts)
mymap("n","<leader>q","q",myopts)

-- Windows Controle
mymap("n","<A-h>","<C-w>h",myopts)
mymap("n","<A-j>","<C-w>j",myopts)
mymap("n","<A-k>","<C-w>k",myopts)
mymap("n","<A-l>","<C-w>l",myopts)
mymap("n","<A-H>",":vertical resize -1<CR>",myopts)
mymap("n","<A-L>",":vertical resize +1<CR>",myopts)
mymap("n","<A-J>",":resize -1<CR>",myopts)
mymap("n","<A-K>",":resize +1<CR>",myopts)

-- markdown preview
mymap("n","<leader>M",":MarkdownPreviewToggle<CR>",myopts)

pluginKeys = {}
-- nvim-cmp auto completion
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<S-tab>"] = cmp.mapping.select_prev_item(),
    -- 下一个
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<tab>"] = cmp.mapping.select_next_item(),
    -- 出现补全
    ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    -- 取消
    ["<A-,>"] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<CR>"] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
  }
end
return pluginKeys
