local config = {
  root = vim.g.package_path,
  lockfile = vim.g.package_lock,
  defaults = { lazy = true },
  checker = { enabled = false },
  change_detection = { notify = false },
  install = { colorscheme = { 'catppuccin' } },
  ui = {
    backdrop = 100,
    size = { width = 0.7, height = 0.74 },
    border = settings.ui.border,
    icons = {
      cmd = icons.ui.Cmd,
      config = icons.ft.Config,
      event = icons.kinds.Event,
      ft = icons.kinds.File,
      init = icons.ft.Config,
      import = icons.ui.ArrowLeft,
      keys = icons.ui.Keyboard,
      lazy = ' ' .. icons.ui.Lazy .. ' ',
      loaded = icons.ui.CircleFilled,
      not_loaded = icons.ui.CircleOutline,
      plugin = icons.kinds.Module,
      runtime = icons.kinds.File,
      require = icons.ui.Lua,
      source = icons.kinds.Method,
      start = icons.ui.Play,
      task = icons.ui.Ok,
      list = { '' },
    },
  },
}

require('lazy').setup({ import = 'modules' }, config)
