require('neorg').setup({
  load = {
    ['core.defaults'] = {},
    ['core.concealer'] = {},
    ['core.dirman'] = { config = { workspaces = {
      todos = '~/Documents/Todos',
      notes = '~/Documents/Notes',
    } } }
  }
})
