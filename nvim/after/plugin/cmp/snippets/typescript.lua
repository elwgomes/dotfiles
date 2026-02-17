local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node

luasnip.add_snippets("typescript", {

	-- 1️⃣ Função execute normal
	s("exec", {
		t("public execute() {"),
		t({ "", "    " }),
		i(1),
		t({ "", "}" }),
	}),

	-- 2️⃣ Função execute com parâmetro
	s("execp", {
		t("public execute("),
		i(1, "params"), -- parâmetro default
		t("): void {"),
		t({ "", "    " }),
		i(2),
		t({ "", "}" }),
	}),

	-- 3️⃣ Função async sem parâmetro
	s("execa", {
		t("public async execute() {"),
		t({ "", "    " }),
		i(1),
		t({ "", "}" }),
	}),

	-- 4️⃣ Função async com parâmetro
	s("execap", {
		t("public async execute("),
		i(1, "params: any"), -- parâmetro default com tipo
		t("): Promise<void> {"),
		t({ "", "    " }),
		i(2),
		t({ "", "}" }),
	}),
})
