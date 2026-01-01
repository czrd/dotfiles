require("lspsaga").setup {
  ui = {
    border = "single",
    code_action = "💡",
    imp_sign = "",
    expand = "",
    collapse = "",
    lines = { "└", "├", "│", "─", "┌" },
  },
  hover = {
    max_width = 0.3,
  },
  lightbulb = {
    enable = false,
  },
  outline = {
    win_width = 50,
    keys = {
      toggle_or_jump = "<CR>",
      jump = "<CR>",
    },
  },
  callhierarchy = {
    keys = {
      edit = "<CR>",
    },
  },
}
