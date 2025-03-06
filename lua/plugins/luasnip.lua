return {
  "L3MON4D3/LuaSnip",
  event = "LspAttach",
  dependencies = { "Nash0x7E2/awesome-flutter-snippets" },
  version = "v2.*",
  build = "make install_jsregexp",
  init = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
