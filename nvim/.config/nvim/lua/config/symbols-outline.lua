local ok, so = pcall(require, "symbols-outline")
if not ok then
  print "symbols-outline is not installed"
  return
end

so.setup {
  width = 20,
  highlight_hovered_item = true,
  show_symbol_details = false,
  keymaps = {
    close = { "<Esc>", "q", "T" },
  },
  symbols = {
    File = { icon = "󰖟", hl = "@text.uri" },
    Module = { icon = "󰕳", hl = "@namespace" },
    Namespace = { icon = "", hl = "@namespace" },
    Package = { icon = "", hl = "@namespace" },
    Class = { icon = "𝓒", hl = "@type" },
    Method = { icon = "ƒ", hl = "@method" },
    Property = { icon = "", hl = "@method" },
    Field = { icon = "", hl = "@field" },
    Constructor = { icon = "", hl = "@constructor" },
    Enum = { icon = "ℰ", hl = "@type" },
    Interface = { icon = "", hl = "@type" },
    Function = { icon = "󰊕", hl = "@function" },
    Variable = { icon = "", hl = "@constant" },
    Constant = { icon = "", hl = "@constant" },
    String = { icon = "𝓐", hl = "@string" },
    Number = { icon = "#", hl = "@number" },
    Boolean = { icon = "⊨", hl = "@boolean" },
    Array = { icon = "", hl = "@constant" },
    Object = { icon = "⦿", hl = "@type" },
    Key = { icon = "🔐", hl = "@type" },
    Null = { icon = "NULL", hl = "@type" },
    EnumMember = { icon = "", hl = "@field" },
    Struct = { icon = "𝓢", hl = "@type" },
    Event = { icon = "🗲", hl = "@type" },
    Operator = { icon = "+", hl = "@operator" },
    TypeParameter = { icon = "𝙏", hl = "@parameter" },
    Component = { icon = "󰡀", hl = "@function" },
    Fragment = { icon = "󰘦", hl = "@constant" },
  },
}
