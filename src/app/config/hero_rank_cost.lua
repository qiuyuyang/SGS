--hero_rank_cost

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  rank = 1,    --突破等级-int 
  templet = 2,    --模板id-int 
  level = 3,    --等级限制-int 
  card = 4,    --同名卡数量-int 
  type_1 = 5,    --材料1type-int 
  value_1 = 6,    --材料1value-int 
  size_1 = 7,    --材料1size-int 
  type_2 = 8,    --材料2type-int 
  value_2 = 9,    --材料2value-int 
  size_2 = 10,    --材料2size-int 

}

-- key type
local __key_type = {
  rank = "int",    --突破等级-1 
  templet = "int",    --模板id-2 
  level = "int",    --等级限制-3 
  card = "int",    --同名卡数量-4 
  type_1 = "int",    --材料1type-5 
  value_1 = "int",    --材料1value-6 
  size_1 = "int",    --材料1size-7 
  type_2 = "int",    --材料2type-8 
  value_2 = "int",    --材料2value-9 
  size_2 = "int",    --材料2size-10 

}


-- data
local hero_rank_cost = {
    version =  1,
    _data = {
        [1] = {0,1,1,0,6,3,50,5,2,12000,},
        [2] = {1,1,15,0,6,3,100,5,2,24000,},
        [3] = {2,1,25,0,6,3,200,5,2,96000,},
        [4] = {3,1,35,0,6,3,500,5,2,240000,},
        [5] = {4,1,45,0,6,3,1000,5,2,600000,},
        [6] = {5,1,55,0,6,3,2000,5,2,960000,},
        [7] = {6,1,65,0,6,3,4000,5,2,1200000,},
        [8] = {7,1,75,0,6,3,8000,5,2,1800000,},
        [9] = {8,1,85,0,6,3,12000,5,2,2400000,},
        [10] = {9,1,95,0,6,3,18000,5,2,3000000,},
        [11] = {10,1,105,0,6,3,24000,5,2,3600000,},
        [12] = {11,1,115,0,6,3,30000,5,2,4200000,},
        [13] = {12,1,0,0,6,3,0,0,0,0,},
        [14] = {0,2,1,0,6,3,30,5,2,4000,},
        [15] = {1,2,15,0,6,3,60,5,2,8000,},
        [16] = {2,2,25,0,6,3,130,5,2,32000,},
        [17] = {3,2,35,0,6,3,190,5,2,80000,},
        [18] = {4,2,45,0,6,3,0,0,0,0,},
        [19] = {0,3,1,0,6,3,40,5,2,5000,},
        [20] = {1,3,15,0,6,3,80,5,2,10000,},
        [21] = {2,3,25,0,6,3,160,5,2,40000,},
        [22] = {3,3,35,0,6,3,240,5,2,100000,},
        [23] = {4,3,45,1,6,3,480,5,2,250000,},
        [24] = {5,3,55,1,6,3,800,5,2,400000,},
        [25] = {6,3,65,2,6,3,1600,5,2,500000,},
        [26] = {7,3,75,3,6,3,2800,5,2,750000,},
        [27] = {8,3,85,0,6,3,0,0,0,0,},
        [28] = {0,4,1,0,6,3,50,5,2,10000,},
        [29] = {1,4,15,0,6,3,100,5,2,20000,},
        [30] = {2,4,25,0,6,3,200,5,2,80000,},
        [31] = {3,4,35,0,6,3,300,5,2,200000,},
        [32] = {4,4,45,1,6,3,600,5,2,500000,},
        [33] = {5,4,55,1,6,3,1000,5,2,800000,},
        [34] = {6,4,65,2,6,3,2000,5,2,1000000,},
        [35] = {7,4,75,3,6,3,3500,5,2,1500000,},
        [36] = {8,4,85,4,6,3,5000,5,2,2000000,},
        [37] = {9,4,95,6,6,3,8000,5,2,2500000,},
        [38] = {10,4,105,8,6,3,12000,5,2,3000000,},
        [39] = {11,4,115,10,6,3,15000,5,2,3500000,},
        [40] = {12,4,0,0,6,3,0,0,0,0,},
        [41] = {0,5,1,0,6,3,80,5,2,15000,},
        [42] = {1,5,15,0,6,3,150,5,2,30000,},
        [43] = {2,5,25,0,6,3,300,5,2,120000,},
        [44] = {3,5,35,0,6,3,450,5,2,300000,},
        [45] = {4,5,45,1,6,3,900,5,2,750000,},
        [46] = {5,5,55,1,6,3,1500,5,2,1200000,},
        [47] = {6,5,65,2,6,3,3000,5,2,1500000,},
        [48] = {7,5,75,3,6,3,5250,5,2,2250000,},
        [49] = {8,5,85,4,6,3,7500,5,2,3000000,},
        [50] = {9,5,95,6,6,3,12000,5,2,3750000,},
        [51] = {10,5,105,7,6,3,16000,5,2,4500000,},
        [52] = {11,5,115,8,6,3,21000,5,2,5250000,},
        [53] = {12,5,0,0,6,3,0,0,0,0,},
    }
}

-- index
local __index_rank_templet = {
    ["0_1"] = 1,
    ["0_2"] = 14,
    ["0_3"] = 19,
    ["0_4"] = 28,
    ["0_5"] = 41,
    ["10_1"] = 11,
    ["10_4"] = 38,
    ["10_5"] = 51,
    ["11_1"] = 12,
    ["11_4"] = 39,
    ["11_5"] = 52,
    ["12_1"] = 13,
    ["12_4"] = 40,
    ["12_5"] = 53,
    ["1_1"] = 2,
    ["1_2"] = 15,
    ["1_3"] = 20,
    ["1_4"] = 29,
    ["1_5"] = 42,
    ["2_1"] = 3,
    ["2_2"] = 16,
    ["2_3"] = 21,
    ["2_4"] = 30,
    ["2_5"] = 43,
    ["3_1"] = 4,
    ["3_2"] = 17,
    ["3_3"] = 22,
    ["3_4"] = 31,
    ["3_5"] = 44,
    ["4_1"] = 5,
    ["4_2"] = 18,
    ["4_3"] = 23,
    ["4_4"] = 32,
    ["4_5"] = 45,
    ["5_1"] = 6,
    ["5_3"] = 24,
    ["5_4"] = 33,
    ["5_5"] = 46,
    ["6_1"] = 7,
    ["6_3"] = 25,
    ["6_4"] = 34,
    ["6_5"] = 47,
    ["7_1"] = 8,
    ["7_3"] = 26,
    ["7_4"] = 35,
    ["7_5"] = 48,
    ["8_1"] = 9,
    ["8_3"] = 27,
    ["8_4"] = 36,
    ["8_5"] = 49,
    ["9_1"] = 10,
    ["9_4"] = 37,
    ["9_5"] = 50,

}

-- index mainkey map
local __main_key_map = {
    [1] = "0_1",
    [14] = "0_2",
    [19] = "0_3",
    [28] = "0_4",
    [41] = "0_5",
    [11] = "10_1",
    [38] = "10_4",
    [51] = "10_5",
    [12] = "11_1",
    [39] = "11_4",
    [52] = "11_5",
    [13] = "12_1",
    [40] = "12_4",
    [53] = "12_5",
    [2] = "1_1",
    [15] = "1_2",
    [20] = "1_3",
    [29] = "1_4",
    [42] = "1_5",
    [3] = "2_1",
    [16] = "2_2",
    [21] = "2_3",
    [30] = "2_4",
    [43] = "2_5",
    [4] = "3_1",
    [17] = "3_2",
    [22] = "3_3",
    [31] = "3_4",
    [44] = "3_5",
    [5] = "4_1",
    [18] = "4_2",
    [23] = "4_3",
    [32] = "4_4",
    [45] = "4_5",
    [6] = "5_1",
    [24] = "5_3",
    [33] = "5_4",
    [46] = "5_5",
    [7] = "6_1",
    [25] = "6_3",
    [34] = "6_4",
    [47] = "6_5",
    [8] = "7_1",
    [26] = "7_3",
    [35] = "7_4",
    [48] = "7_5",
    [9] = "8_1",
    [27] = "8_3",
    [36] = "8_4",
    [49] = "8_5",
    [10] = "9_1",
    [37] = "9_4",
    [50] = "9_5",

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in hero_rank_cost")
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
function hero_rank_cost.length()
    return #hero_rank_cost._data
end

-- 
function hero_rank_cost.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function hero_rank_cost.isVersionValid(v)
    if hero_rank_cost.version then
        if v then
            return hero_rank_cost.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function hero_rank_cost.indexOf(index)
    if index == nil or not hero_rank_cost._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/hero_rank_cost.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/hero_rank_cost.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/hero_rank_cost.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "hero_rank_cost" )
                _isDataExist = hero_rank_cost.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "hero_rank_cost" )
                _isBaseExist = hero_rank_cost.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "hero_rank_cost" )
                _isExist = hero_rank_cost.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "hero_rank_cost" )
        local main_key = __main_key_map[index]
		local index_key = "__index_rank_templet"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "hero_rank_cost" )
        local main_key = __main_key_map[index]
		local index_key = "__index_rank_templet"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = hero_rank_cost._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "hero_rank_cost" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function hero_rank_cost.get(rank,templet)
    
    local k = rank .. '_' .. templet
    return hero_rank_cost.indexOf(__index_rank_templet[k])
        
end

--
function hero_rank_cost.set(rank,templet, key, value)
    local record = hero_rank_cost.get(rank,templet)
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
function hero_rank_cost.index()
    return __index_rank_templet
end

return hero_rank_cost