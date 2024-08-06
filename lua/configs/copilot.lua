require('copilot').setup({
  suggestion = { enabled = true, auto_trigger = true, keymap = { accept = '<Nop>' } }, -- Mapped to <Tab> in core._internals.completion
  panel = { enabled = false },
})
