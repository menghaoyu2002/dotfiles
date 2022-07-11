require('spellsitter').setup()

require('nvim_comment').setup()

require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = '<C-t>', action = "" },
      },
    },
  },
})
