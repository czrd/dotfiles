local ok, neoscroll = pcall(require, "neoscroll")
if not ok then
  print "neoscroll is not installed"
  return
end

neoscroll.setup {
  mappings = {},
  easing_function = "circular",
  stop_eof = false,
  hide_cursor = false,
}

local keymap = {
  ["<C-u>"] = function()
    neoscroll.ctrl_u { duration = 200 }
  end,
  ["<C-d>"] = function()
    neoscroll.ctrl_d { duration = 200 }
  end,
  ["<C-b>"] = function()
    neoscroll.ctrl_b { duration = 200 }
  end,
  ["<C-f>"] = function()
    neoscroll.ctrl_f { duration = 200 }
  end,
  ["<C-y>"] = function()
    neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 })
  end,
  ["<C-e>"] = function()
    neoscroll.scroll(0.1, { move_cursor = false, duration = 100 })
  end,
  ["zt"] = function()
    neoscroll.zt { half_win_duration = 200 }
  end,
  ["zz"] = function()
    neoscroll.zz { half_win_duration = 200 }
  end,
  ["zb"] = function()
    neoscroll.zb { half_win_duration = 200 }
  end,
}

local modes = { "n", "v", "x" }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end
