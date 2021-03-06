--guild_boss_award

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  boss_id = 2,    --对应BOSS-int 
  day_min = 3,    --开服天数min-int 
  day_max = 4,    --开服天数max-int 
  type_1 = 5,    --类型1-int 
  value_1 = 6,    --类型值1-int 
  size_1 = 7,    --数量1-int 
  type_2 = 8,    --类型2-int 
  value_2 = 9,    --类型值2-int 
  size_2 = 10,    --数量2-int 
  type_3 = 11,    --类型3-int 
  value_3 = 12,    --类型值3-int 
  size_3 = 13,    --数量3-int 
  type_4 = 14,    --类型4-int 
  value_4 = 15,    --类型值4-int 
  size_4 = 16,    --数量4-int 
  type_5 = 17,    --类型5-int 
  value_5 = 18,    --类型值5-int 
  size_5 = 19,    --数量5-int 
  type_6 = 20,    --类型6-int 
  value_6 = 21,    --类型值6-int 
  size_6 = 22,    --数量6-int 
  type_7 = 23,    --类型7-int 
  value_7 = 24,    --类型值7-int 
  size_7 = 25,    --数量7-int 
  type_8 = 26,    --类型8-int 
  value_8 = 27,    --类型值8-int 
  size_8 = 28,    --数量8-int 
  type_9 = 29,    --类型9-int 
  value_9 = 30,    --类型值9-int 
  size_9 = 31,    --数量9-int 
  type_10 = 32,    --类型10-int 
  value_10 = 33,    --类型值10-int 
  size_10 = 34,    --数量10-int 
  type_11 = 35,    --类型11-int 
  value_11 = 36,    --类型值11-int 
  size_11 = 37,    --数量11-int 
  type_12 = 38,    --类型12-int 
  value_12 = 39,    --类型值12-int 
  size_12 = 40,    --数量12-int 
  type_13 = 41,    --类型13-int 
  value_13 = 42,    --类型值13-int 
  size_13 = 43,    --数量13-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  boss_id = "int",    --对应BOSS-2 
  day_min = "int",    --开服天数min-3 
  day_max = "int",    --开服天数max-4 
  type_1 = "int",    --类型1-5 
  value_1 = "int",    --类型值1-6 
  size_1 = "int",    --数量1-7 
  type_2 = "int",    --类型2-8 
  value_2 = "int",    --类型值2-9 
  size_2 = "int",    --数量2-10 
  type_3 = "int",    --类型3-11 
  value_3 = "int",    --类型值3-12 
  size_3 = "int",    --数量3-13 
  type_4 = "int",    --类型4-14 
  value_4 = "int",    --类型值4-15 
  size_4 = "int",    --数量4-16 
  type_5 = "int",    --类型5-17 
  value_5 = "int",    --类型值5-18 
  size_5 = "int",    --数量5-19 
  type_6 = "int",    --类型6-20 
  value_6 = "int",    --类型值6-21 
  size_6 = "int",    --数量6-22 
  type_7 = "int",    --类型7-23 
  value_7 = "int",    --类型值7-24 
  size_7 = "int",    --数量7-25 
  type_8 = "int",    --类型8-26 
  value_8 = "int",    --类型值8-27 
  size_8 = "int",    --数量8-28 
  type_9 = "int",    --类型9-29 
  value_9 = "int",    --类型值9-30 
  size_9 = "int",    --数量9-31 
  type_10 = "int",    --类型10-32 
  value_10 = "int",    --类型值10-33 
  size_10 = "int",    --数量10-34 
  type_11 = "int",    --类型11-35 
  value_11 = "int",    --类型值11-36 
  size_11 = "int",    --数量11-37 
  type_12 = "int",    --类型12-38 
  value_12 = "int",    --类型值12-39 
  size_12 = "int",    --数量12-40 
  type_13 = "int",    --类型13-41 
  value_13 = "int",    --类型值13-42 
  size_13 = "int",    --数量13-43 

}


-- data
local guild_boss_award = {
    version =  1,
    _data = {
        [1] = {1,0,1,6,1,103,1,1,203,1,1,303,1,1,403,1,4,103,1,4,203,1,4,303,1,4,403,1,6,81,1,0,0,0,0,0,0,0,0,0,0,0,0,},
        [2] = {2,1,1,6,4,403,1,6,81,1,7,1403,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [3] = {3,2,1,6,4,403,1,6,81,1,7,1403,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [4] = {4,3,1,6,4,203,1,6,81,1,7,1203,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [5] = {5,4,1,6,4,203,1,6,81,1,7,1203,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [6] = {6,5,1,6,4,303,1,6,81,1,7,1303,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [7] = {7,6,1,6,4,303,1,6,81,1,7,1303,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [8] = {8,7,1,6,4,103,1,6,81,1,7,1103,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [9] = {9,8,1,6,4,103,1,6,81,1,7,1103,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [10] = {10,9,1,6,1,103,1,7,1103,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [11] = {11,10,1,6,1,203,1,7,1203,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [12] = {12,11,1,6,1,303,1,7,1303,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [13] = {13,12,1,6,1,403,1,7,1403,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [14] = {14,0,7,999,1,103,1,1,203,1,1,303,1,1,403,1,11,1308,1,11,1301,1,11,1303,1,11,1304,1,11,1302,1,11,1310,1,11,1309,1,11,1311,1,0,0,0,},
        [15] = {15,1,7,999,4,403,1,6,81,1,7,1403,1,11,1211,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [16] = {16,2,7,999,4,403,1,6,81,1,7,1403,1,11,1211,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [17] = {17,3,7,999,4,203,1,6,81,1,7,1203,1,11,1207,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [18] = {18,4,7,999,4,203,1,6,81,1,7,1203,1,11,1207,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [19] = {19,5,7,999,4,303,1,6,81,1,7,1303,1,11,1212,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [20] = {20,6,7,999,4,303,1,6,81,1,7,1303,1,11,1212,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [21] = {21,7,7,999,4,103,1,6,81,1,7,1103,1,11,1214,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [22] = {22,8,7,999,4,103,1,6,81,1,7,1103,1,11,1214,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [23] = {23,9,7,999,1,103,1,11,1308,1,11,1302,1,7,1103,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [24] = {24,10,7,999,1,203,1,11,1301,1,11,1310,1,7,1203,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [25] = {25,11,7,999,1,303,1,11,1303,1,11,1309,1,7,1303,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [26] = {26,12,7,999,1,403,1,11,1304,1,11,1311,1,7,1403,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 10,
    [11] = 11,
    [12] = 12,
    [13] = 13,
    [14] = 14,
    [15] = 15,
    [16] = 16,
    [17] = 17,
    [18] = 18,
    [19] = 19,
    [2] = 2,
    [20] = 20,
    [21] = 21,
    [22] = 22,
    [23] = 23,
    [24] = 24,
    [25] = 25,
    [26] = 26,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,
    [10] = 10,
    [11] = 11,
    [12] = 12,
    [13] = 13,
    [14] = 14,
    [15] = 15,
    [16] = 16,
    [17] = 17,
    [18] = 18,
    [19] = 19,
    [2] = 2,
    [20] = 20,
    [21] = 21,
    [22] = 22,
    [23] = 23,
    [24] = 24,
    [25] = 25,
    [26] = 26,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in guild_boss_award")
        if _lang ~= "cn" and _isDataExist  and t._data_key_map[k] then
            return t._data[t._data_key_map[k]]
        end
        if _lang ~= "cn" and _isExist  and t._lang_key_map[k] then
            return t._lang[t._lang_key_map[k]]
        end
        return t._raw[key_map[k]]
    end
}

-- 
function guild_boss_award.length()
    return #guild_boss_award._data
end

-- 
function guild_boss_award.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function guild_boss_award.isVersionValid(v)
    if guild_boss_award.version then
        if v then
            return guild_boss_award.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function guild_boss_award.indexOf(index)
    if index == nil or not guild_boss_award._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/guild_boss_award.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/guild_boss_award.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/guild_boss_award.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "guild_boss_award" )
                _isDataExist = guild_boss_award.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "guild_boss_award" )
                _isBaseExist = guild_boss_award.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "guild_boss_award" )
                _isExist = guild_boss_award.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "guild_boss_award" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "guild_boss_award" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = guild_boss_award._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "guild_boss_award" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function guild_boss_award.get(id)
    
    return guild_boss_award.indexOf(__index_id[id])
        
end

--
function guild_boss_award.set(id, key, value)
    local record = guild_boss_award.get(id)
    if record then
        if _lang ~= "cn" and _isDataExist then
            local keyIndex =  record._data_key_map[key]
            if keyIndex then
                record._data[keyIndex] = value
                return
            end
        end
        if _lang ~= "cn" and _isExist then
            local keyIndex =  record._lang_key_map[key]
            if keyIndex then
                record._lang[keyIndex] = value
                return
            end
        end
        local keyIndex = record._raw_key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

--
function guild_boss_award.index()
    return __index_id
end

return guild_boss_award