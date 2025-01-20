.PHONY: check

check:
	@LUA_LS_CONFIGPATH=scripts/internal/.luarc.json nvim -l scripts/internal/__lua_language_server_check.lua
