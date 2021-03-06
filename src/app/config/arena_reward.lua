--arena_reward

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  type = 2,    --排名奖励类型-int 
  rank_min = 3,    --最小排名-int 
  rank_max = 4,    --最大排名-int 
  award_type_1 = 5,    --奖励类型1-int 
  award_value_1 = 6,    --奖励类型值1-int 
  award_size_1 = 7,    --奖励数量1-int 
  award_type_2 = 8,    --奖励类型2-int 
  award_value_2 = 9,    --奖励类型值2-int 
  award_size_2 = 10,    --奖励数量2-int 
  award_type_3 = 11,    --奖励类型3-int 
  award_value_3 = 12,    --奖励类型值3-int 
  award_size_3 = 13,    --奖励数量3-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  type = "int",    --排名奖励类型-2 
  rank_min = "int",    --最小排名-3 
  rank_max = "int",    --最大排名-4 
  award_type_1 = "int",    --奖励类型1-5 
  award_value_1 = "int",    --奖励类型值1-6 
  award_size_1 = "int",    --奖励数量1-7 
  award_type_2 = "int",    --奖励类型2-8 
  award_value_2 = "int",    --奖励类型值2-9 
  award_size_2 = "int",    --奖励数量2-10 
  award_type_3 = "int",    --奖励类型3-11 
  award_value_3 = "int",    --奖励类型值3-12 
  award_size_3 = "int",    --奖励数量3-13 

}


-- data
local arena_reward = {
    version =  1,
    _data = {
        [1] = {1,2,5,1,5,1,75000,0,0,0,0,0,0,},
        [2] = {2,2,10,5,5,1,60000,0,0,0,0,0,0,},
        [3] = {3,2,20,10,5,1,50000,0,0,0,0,0,0,},
        [4] = {4,2,26,20,5,1,16166,0,0,0,0,0,0,},
        [5] = {5,2,38,26,5,1,16083,0,0,0,0,0,0,},
        [6] = {6,2,58,38,5,1,9600,0,0,0,0,0,0,},
        [7] = {7,2,78,58,5,1,9550,0,0,0,0,0,0,},
        [8] = {8,2,102,78,5,1,7916,0,0,0,0,0,0,},
        [9] = {9,2,126,102,5,1,7875,0,0,0,0,0,0,},
        [10] = {10,2,150,126,5,1,7833,0,0,0,0,0,0,},
        [11] = {11,2,174,150,5,1,7791,0,0,0,0,0,0,},
        [12] = {12,2,202,174,5,1,6642,0,0,0,0,0,0,},
        [13] = {13,2,230,202,5,1,6607,0,0,0,0,0,0,},
        [14] = {14,2,258,230,5,1,6571,0,0,0,0,0,0,},
        [15] = {15,2,286,258,5,1,6535,0,0,0,0,0,0,},
        [16] = {16,2,318,286,5,1,5687,0,0,0,0,0,0,},
        [17] = {17,2,350,318,5,1,5656,0,0,0,0,0,0,},
        [18] = {18,2,382,350,5,1,5625,0,0,0,0,0,0,},
        [19] = {19,2,418,382,5,1,4972,0,0,0,0,0,0,},
        [20] = {20,2,454,418,5,1,4944,0,0,0,0,0,0,},
        [21] = {21,2,490,454,5,1,4916,0,0,0,0,0,0,},
        [22] = {22,2,530,490,5,1,4400,0,0,0,0,0,0,},
        [23] = {23,2,570,530,5,1,4375,0,0,0,0,0,0,},
        [24] = {24,2,610,570,5,1,4350,0,0,0,0,0,0,},
        [25] = {25,2,650,610,5,1,4325,0,0,0,0,0,0,},
        [26] = {26,2,730,650,5,1,2150,0,0,0,0,0,0,},
        [27] = {27,2,810,730,5,1,2137,0,0,0,0,0,0,},
        [28] = {28,2,890,810,5,1,2125,0,0,0,0,0,0,},
        [29] = {29,2,1010,890,5,1,1375,0,0,0,0,0,0,},
        [30] = {30,2,1130,1010,5,1,1333,0,0,0,0,0,0,},
        [31] = {31,2,1250,1130,5,1,1291,0,0,0,0,0,0,},
        [32] = {32,2,1370,1250,5,1,1250,0,0,0,0,0,0,},
        [33] = {33,2,1530,1370,5,1,906,0,0,0,0,0,0,},
        [34] = {34,2,1690,1530,5,1,875,0,0,0,0,0,0,},
        [35] = {35,2,2010,1690,5,1,421,0,0,0,0,0,0,},
        [36] = {36,2,2330,2010,5,1,406,0,0,0,0,0,0,},
        [37] = {37,2,2650,2330,5,1,390,0,0,0,0,0,0,},
        [38] = {38,2,3050,2650,5,1,300,0,0,0,0,0,0,},
        [39] = {39,2,3450,3050,5,1,275,0,0,0,0,0,0,},
        [40] = {40,2,3850,3450,5,1,250,0,0,0,0,0,0,},
        [41] = {41,2,4250,3850,5,1,225,0,0,0,0,0,0,},
        [42] = {42,2,5000,4250,5,1,106,0,0,0,0,0,0,},
        [43] = {43,2,20000,5000,5,1,25,0,0,0,0,0,0,},
        [44] = {44,2,200000,20000,5,1,2,0,0,0,0,0,0,},
        [45] = {1001,1,1,1,5,2,100000,5,7,5000,0,0,0,},
        [46] = {1002,1,2,2,5,2,95000,5,7,4750,0,0,0,},
        [47] = {1003,1,3,3,5,2,90000,5,7,4500,0,0,0,},
        [48] = {1004,1,4,4,5,2,85000,5,7,4250,0,0,0,},
        [49] = {1005,1,6,5,5,2,80000,5,7,4000,0,0,0,},
        [50] = {1006,1,10,7,5,2,78000,5,7,3900,0,0,0,},
        [51] = {1007,1,20,11,5,2,76000,5,7,3800,0,0,0,},
        [52] = {1008,1,30,21,5,2,74000,5,7,3700,0,0,0,},
        [53] = {1009,1,40,31,5,2,72000,5,7,3600,0,0,0,},
        [54] = {1010,1,50,41,5,2,70000,5,7,3500,0,0,0,},
        [55] = {1011,1,60,51,5,2,60000,5,7,3000,0,0,0,},
        [56] = {1012,1,100,61,5,2,59000,5,7,2950,0,0,0,},
        [57] = {1013,1,200,101,5,2,58000,5,7,2900,0,0,0,},
        [58] = {1014,1,300,201,5,2,57000,5,7,2850,0,0,0,},
        [59] = {1015,1,400,301,5,2,56000,5,7,2800,0,0,0,},
        [60] = {1016,1,500,401,5,2,50000,5,7,2500,0,0,0,},
        [61] = {1017,1,1000,501,5,2,49000,5,7,2450,0,0,0,},
        [62] = {1018,1,1500,1001,5,2,48000,5,7,2400,0,0,0,},
        [63] = {1019,1,2000,1501,5,2,47000,5,7,2350,0,0,0,},
        [64] = {1020,1,2500,2001,5,2,46000,5,7,2300,0,0,0,},
        [65] = {1021,1,3000,2501,5,2,45000,5,7,2250,0,0,0,},
        [66] = {1022,1,3500,3001,5,2,44000,5,7,2200,0,0,0,},
        [67] = {1023,1,4000,3501,5,2,43000,5,7,2150,0,0,0,},
        [68] = {1024,1,5000,4001,5,2,42000,5,7,2100,0,0,0,},
        [69] = {1025,1,6000,5001,5,2,41000,5,7,2050,0,0,0,},
        [70] = {1026,1,7000,6001,5,2,40000,5,7,2000,0,0,0,},
        [71] = {1027,1,8000,7001,5,2,39000,5,7,1950,0,0,0,},
        [72] = {1028,1,10000,8001,5,2,38000,5,7,1900,0,0,0,},
        [73] = {1029,1,15000,10001,5,2,37000,5,7,1850,0,0,0,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 10,
    [1001] = 45,
    [1002] = 46,
    [1003] = 47,
    [1004] = 48,
    [1005] = 49,
    [1006] = 50,
    [1007] = 51,
    [1008] = 52,
    [1009] = 53,
    [1010] = 54,
    [1011] = 55,
    [1012] = 56,
    [1013] = 57,
    [1014] = 58,
    [1015] = 59,
    [1016] = 60,
    [1017] = 61,
    [1018] = 62,
    [1019] = 63,
    [1020] = 64,
    [1021] = 65,
    [1022] = 66,
    [1023] = 67,
    [1024] = 68,
    [1025] = 69,
    [1026] = 70,
    [1027] = 71,
    [1028] = 72,
    [1029] = 73,
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
    [45] = 1001,
    [46] = 1002,
    [47] = 1003,
    [48] = 1004,
    [49] = 1005,
    [50] = 1006,
    [51] = 1007,
    [52] = 1008,
    [53] = 1009,
    [54] = 1010,
    [55] = 1011,
    [56] = 1012,
    [57] = 1013,
    [58] = 1014,
    [59] = 1015,
    [60] = 1016,
    [61] = 1017,
    [62] = 1018,
    [63] = 1019,
    [64] = 1020,
    [65] = 1021,
    [66] = 1022,
    [67] = 1023,
    [68] = 1024,
    [69] = 1025,
    [70] = 1026,
    [71] = 1027,
    [72] = 1028,
    [73] = 1029,
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
        assert(key_map[k], "cannot find " .. k .. " in arena_reward")
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
function arena_reward.length()
    return #arena_reward._data
end

-- 
function arena_reward.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function arena_reward.isVersionValid(v)
    if arena_reward.version then
        if v then
            return arena_reward.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function arena_reward.indexOf(index)
    if index == nil or not arena_reward._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/arena_reward.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/arena_reward.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/arena_reward.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "arena_reward" )
                _isDataExist = arena_reward.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "arena_reward" )
                _isBaseExist = arena_reward.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "arena_reward" )
                _isExist = arena_reward.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "arena_reward" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "arena_reward" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = arena_reward._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "arena_reward" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function arena_reward.get(id)
    
    return arena_reward.indexOf(__index_id[id])
        
end

--
function arena_reward.set(id, key, value)
    local record = arena_reward.get(id)
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
function arena_reward.index()
    return __index_id
end

return arena_reward