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
    File = { hl = "@text.uri" },
    Module = { hl = "@namespace" },
    Namespace = { hl = "@namespace" },
    Package = { hl = "@namespace" },
    Class = { hl = "@type" },
    Method = { hl = "@method" },
    Property = { hl = "@method" },
    Field = { hl = "@field" },
    Constructor = { hl = "@constructor" },
    Enum = { hl = "@type" },
    Interface = { hl = "@type" },
    Function = { hl = "@function" },
    Variable = { hl = "@constant" },
    Constant = { hl = "@constant" },
    String = { hl = "@string" },
    Number = { hl = "@number" },
    Boolean = { hl = "@boolean" },
    Array = { hl = "@constant" },
    Object = { hl = "@type" },
    Key = { hl = "@type" },
    Null = { hl = "@type" },
    EnumMember = { hl = "@field" },
    Struct = { hl = "@type" },
    Event = { hl = "@type" },
    Operator = { hl = "@operator" },
    TypeParameter = { hl = "@parameter" },
  },
}
