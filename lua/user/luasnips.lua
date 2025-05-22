local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("elixir", {
  s("wat", fmt([[
  IO.puts ">>>>>>>>>>>>>>>>>>>>"
  IO.inspect {}
  IO.puts ">>>>>>>>>>>>>>>>>>>>"
  ]], {
      -- i(1) is at nodes[1], i(2) at nodes[2], etc.
      i(1, "add_here_weird_thing")
    })),
  s("watpipe", { t('|> IO.inspect()') }),
  s("if", { t('if ('), i(1), t('), do: '), i(2), }),
})
