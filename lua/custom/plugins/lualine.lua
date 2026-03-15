return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    -- require('lualine').setup(),
    event = 'VeryLazy',
    config = function()
      require('lualine').setup()
    end,
  },
}
