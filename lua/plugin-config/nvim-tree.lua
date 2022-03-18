mymap('', '<A-m>', ':NvimTreeToggle<CR>', myopts)
require'nvim-tree'.setup {
  view = {
    mappings = { -- the mapping set of nvim-tree
      custom_only = false,
      list = {
        { key = {"<CR>", "o", "l", "<2-LeftMouse>"}, action = "edit" },
        { key = "i", action = "split" },
        { key = "s", action = "vsplit" },
        { key = "?", action = "toggle_help" },
      },
    },
  },
}
