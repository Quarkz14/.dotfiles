local config = function ()
  require('lualine').setup{
    options = { theme = 'solarized_dark'}
  }
end

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = config,
}
