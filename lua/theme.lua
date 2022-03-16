-- nord
--[[
vim.cmd[[colorscheme nord]]
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'nord'
    -- ... your lualine config
  }
}
--]]

--onedark
--[[
require('onedark').setup {
    style = 'dark'
}
require('onedark').load()
require('lualine').setup {
  options = {
    theme = 'onedark'
    -- ... your lualine config
  }
}
--]]

--onenord
require('onenord').setup()
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'onenord'
    -- ... your lualine config
  }
}
