--guild_cross_war_road

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --路线id-int 
  point_1 = 2,    --起点id/路径id号-int 
  point_2 = 3,    --终点id-int 
  mid_point_1 = 4,    --路径点-string 
  mid_point_2 = 5,    --路径点-string 
  mid_point_3 = 6,    --路径点-string 
  mid_point_4 = 7,    --路径点-string 
  mid_point_5 = 8,    --路径点-string 

}

-- key type
local __key_type = {
  id = "int",    --路线id-1 
  point_1 = "int",    --起点id/路径id号-2 
  point_2 = "int",    --终点id-3 
  mid_point_1 = "string",    --路径点-4 
  mid_point_2 = "string",    --路径点-5 
  mid_point_3 = "string",    --路径点-6 
  mid_point_4 = "string",    --路径点-7 
  mid_point_5 = "string",    --路径点-8 

}


-- data
local guild_cross_war_road = {
    version =  1,
    _data = {
        [1] = {1,1,17,"3923|2806","3815|2682","3732|2539","","",},
        [2] = {2,2,17,"4235|2435","4003|2336","","","",},
        [3] = {3,3,18,"4451|1818","4191|1739","","","",},
        [4] = {4,4,18,"4374|1438","4285|1508","4157|1529","","",},
        [5] = {5,5,19,"3787|929","3480|990","","","",},
        [6] = {6,6,19,"3226|772","3240|913","","","",},
        [7] = {7,7,20,"2561|579","2521|728","","","",},
        [8] = {8,8,20,"1932|784","2131|859","","","",},
        [9] = {9,9,21,"1130|912","1343|1040","1393|1139","","",},
        [10] = {10,10,21,"1063|1377","2389|1343","","","",},
        [11] = {11,11,22,"1052|1838","1172|1951","","","",},
        [12] = {12,12,22,"1094|2255","1255|2172","","","",},
        [13] = {13,13,23,"1509|2536","1698|2425","","","",},
        [14] = {14,14,23,"1858|2874","1873|2739","2005|2575","","",},
        [15] = {15,15,24,"2517|2706","2607|2580","","","",},
        [16] = {16,16,24,"3059|2883","2980|2670","","","",},
        [17] = {17,17,1,"3732|2539","3815|2682","3923|2806","","",},
        [18] = {18,17,2,"4003|2336","4235|2435","","","",},
        [19] = {19,17,18,"3796|2068","3919|1922","","","",},
        [20] = {20,17,25,"3375|2103","3252|1952","3127|1802","","",},
        [21] = {21,18,3,"4191|1739","4451|1818","","","",},
        [22] = {22,18,4,"4157|1529","4285|1508","4374|1438","","",},
        [23] = {23,18,17,"3919|1922","3796|2068","","","",},
        [24] = {24,18,25,"3479|1740","3372|1762","3192|1718","","",},
        [25] = {25,19,5,"3480|990","3787|929","","","",},
        [26] = {26,19,6,"3240|913","3226|772","","","",},
        [27] = {27,19,20,"2933|1018","2629|952","","","",},
        [28] = {28,19,25,"3154|1385","3084|1446","2963|1491","","",},
        [29] = {29,20,7,"2521|728","2561|579","","","",},
        [30] = {30,20,8,"2131|859","1932|784","","","",},
        [31] = {31,20,19,"2637|948","2933|1018","","","",},
        [32] = {32,20,25,"2283|1218","2364|1301","2373|1430","","",},
        [33] = {33,21,9,"1393|1139","1343|1040","1130|912","","",},
        [34] = {34,21,10,"2389|1343","1063|1377","","","",},
        [35] = {35,21,22,"1363|1432","1335|1783","","","",},
        [36] = {36,21,25,"1874|1432","2132|1573","2237|1601","","",},
        [37] = {37,22,11,"1172|1951","1052|1838","","","",},
        [38] = {38,22,12,"1255|2172","1094|2255","","","",},
        [39] = {39,22,21,"1335|1783","1363|1432","","","",},
        [40] = {40,22,25,"1771|1842","1966|1760","2203|1640","","",},
        [41] = {41,23,13,"1698|2425","1509|2536","","","",},
        [42] = {42,23,14,"2005|2575","1873|2739","1858|2874","","",},
        [43] = {43,23,24,"2322|2433","2517|2475","","","",},
        [44] = {44,23,25,"2120|2102","2191|1926","2205|1825","2313|1778","",},
        [45] = {45,24,15,"2607|2580","2517|2706","","","",},
        [46] = {46,24,16,"2980|2670","3059|2883","","","",},
        [47] = {47,24,23,"2517|2475","2322|2433","","","",},
        [48] = {48,24,25,"2750|2212","2741|2059","2704|1878","","",},
        [49] = {49,25,17,"3127|1802","3252|1952","3375|2103","","",},
        [50] = {50,25,18,"3192|1718","3372|1762","3479|1740","","",},
        [51] = {51,25,19,"2963|1491","3084|1446","3154|1385","","",},
        [52] = {52,25,20,"2373|1430","2364|1301","2283|1218","","",},
        [53] = {53,25,21,"2237|1601","2132|1573","1874|1432","","",},
        [54] = {54,25,22,"2203|1640","1966|1760","1771|1842","","",},
        [55] = {55,25,23,"2313|1778","2205|1825","2191|1926","2120|2102","",},
        [56] = {56,25,24,"2704|1878","2741|2059","2750|2212","","",},
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
    [27] = 27,
    [28] = 28,
    [29] = 29,
    [3] = 3,
    [30] = 30,
    [31] = 31,
    [32] = 32,
    [33] = 33,
    [34] = 34,
    [35] = 35,
    [36] = 36,
    [37] = 37,
    [38] = 38,
    [39] = 39,
    [4] = 4,
    [40] = 40,
    [41] = 41,
    [42] = 42,
    [43] = 43,
    [44] = 44,
    [45] = 45,
    [46] = 46,
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [5] = 5,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
    [54] = 54,
    [55] = 55,
    [56] = 56,
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
    [27] = 27,
    [28] = 28,
    [29] = 29,
    [3] = 3,
    [30] = 30,
    [31] = 31,
    [32] = 32,
    [33] = 33,
    [34] = 34,
    [35] = 35,
    [36] = 36,
    [37] = 37,
    [38] = 38,
    [39] = 39,
    [4] = 4,
    [40] = 40,
    [41] = 41,
    [42] = 42,
    [43] = 43,
    [44] = 44,
    [45] = 45,
    [46] = 46,
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [5] = 5,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
    [54] = 54,
    [55] = 55,
    [56] = 56,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in guild_cross_war_road")
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
function guild_cross_war_road.length()
    return #guild_cross_war_road._data
end

-- 
function guild_cross_war_road.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function guild_cross_war_road.isVersionValid(v)
    if guild_cross_war_road.version then
        if v then
            return guild_cross_war_road.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function guild_cross_war_road.indexOf(index)
    if index == nil or not guild_cross_war_road._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/guild_cross_war_road.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/guild_cross_war_road.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/guild_cross_war_road.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "guild_cross_war_road" )
                _isDataExist = guild_cross_war_road.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "guild_cross_war_road" )
                _isBaseExist = guild_cross_war_road.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "guild_cross_war_road" )
                _isExist = guild_cross_war_road.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "guild_cross_war_road" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "guild_cross_war_road" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = guild_cross_war_road._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "guild_cross_war_road" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function guild_cross_war_road.get(id)
    
    return guild_cross_war_road.indexOf(__index_id[id])
        
end

--
function guild_cross_war_road.set(id, key, value)
    local record = guild_cross_war_road.get(id)
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
function guild_cross_war_road.index()
    return __index_id
end

return guild_cross_war_road