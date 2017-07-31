#!/usr/bin/env lua

-- usage: lua2json.lua [lua_file]
--
-- Eg:
-- echo '{ "testing" }' | ./lua2json.lua
-- ./lua2json.lua test.lua

local json = require "cjson"
local util = require "cjson.util"

local env = {
    json = { null = json.null },
    null = json.null
}

--json.encode_sparse_array(true,1,0)  
local d = {1,5,{a="a",},f="f"}
print(util.serialise_value(d))
d = json.encode(d)
print(d)
d = json.decode(d)
print(util.serialise_value(d))

-- vi:ai et sw=4 ts=4:
