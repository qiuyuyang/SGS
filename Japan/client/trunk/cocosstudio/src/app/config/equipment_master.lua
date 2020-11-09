--equipment_master

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  level = 1,    --显示用的等级-int 
  equip_type = 2,    --大师类型-int 
  equip_value = 3,    --类型值-int 
  master_type1 = 4,    --附加属性1类型-int 
  master_value1 = 5,    --附加属性1类型值-int 
  master_type2 = 6,    --附加属性2类型-int 
  master_value2 = 7,    --附加属性2类型值-int 
  master_type3 = 8,    --附加属性3类型-int 
  master_value3 = 9,    --附加属性3类型值-int 
  master_type4 = 10,    --附加属性4类型-int 
  master_value4 = 11,    --附加属性4类型值-int 

}

-- key type
local __key_type = {
  level = "int",    --显示用的等级-1 
  equip_type = "int",    --大师类型-2 
  equip_value = "int",    --类型值-3 
  master_type1 = "int",    --附加属性1类型-4 
  master_value1 = "int",    --附加属性1类型值-5 
  master_type2 = "int",    --附加属性2类型-6 
  master_value2 = "int",    --附加属性2类型值-7 
  master_type3 = "int",    --附加属性3类型-8 
  master_value3 = "int",    --附加属性3类型值-9 
  master_type4 = "int",    --附加属性4类型-10 
  master_value4 = "int",    --附加属性4类型值-11 

}


-- data
local equipment_master = {
    version =  1,
    _data = {
        [1] = {0,1,0,1,0,5,0,6,0,7,0,},
        [2] = {1,1,10,1,40,5,20,6,20,7,300,},
        [3] = {2,1,20,1,40,5,20,6,20,7,300,},
        [4] = {3,1,30,1,40,5,20,6,20,7,300,},
        [5] = {4,1,40,1,40,5,20,6,20,7,300,},
        [6] = {5,1,50,1,60,5,30,6,30,7,450,},
        [7] = {6,1,60,1,60,5,30,6,30,7,450,},
        [8] = {7,1,70,1,60,5,30,6,30,7,450,},
        [9] = {8,1,80,1,80,5,40,6,40,7,600,},
        [10] = {9,1,90,1,80,5,40,6,40,7,600,},
        [11] = {10,1,100,1,100,5,50,6,50,7,750,},
        [12] = {11,1,110,1,120,5,60,6,60,7,900,},
        [13] = {12,1,120,1,140,5,70,6,70,7,1050,},
        [14] = {13,1,130,1,160,5,80,6,80,7,1200,},
        [15] = {14,1,140,1,180,5,90,6,90,7,1350,},
        [16] = {15,1,150,1,200,5,100,6,100,7,1500,},
        [17] = {16,1,160,1,220,5,110,6,110,7,1650,},
        [18] = {17,1,170,1,260,5,130,6,130,7,1950,},
        [19] = {18,1,180,1,300,5,150,6,150,7,2250,},
        [20] = {19,1,190,1,320,5,160,6,160,7,2400,},
        [21] = {20,1,200,1,380,5,190,6,190,7,2850,},
        [22] = {21,1,210,1,420,5,210,6,210,7,3150,},
        [23] = {22,1,220,1,460,5,230,6,230,7,3450,},
        [24] = {23,1,230,1,520,5,260,6,260,7,3900,},
        [25] = {24,1,240,1,580,5,290,6,290,7,4350,},
        [26] = {25,1,250,1,640,5,320,6,320,7,4800,},
        [27] = {0,2,0,19,0,20,0,0,0,0,0,},
        [28] = {1,2,2,19,30,20,30,0,0,0,0,},
        [29] = {2,2,4,19,30,20,30,0,0,0,0,},
        [30] = {3,2,6,19,30,20,30,0,0,0,0,},
        [31] = {4,2,8,19,30,20,30,0,0,0,0,},
        [32] = {5,2,10,19,30,20,30,0,0,0,0,},
        [33] = {6,2,12,19,30,20,30,0,0,0,0,},
        [34] = {7,2,14,19,30,20,30,0,0,0,0,},
        [35] = {8,2,16,19,30,20,30,0,0,0,0,},
        [36] = {9,2,18,19,30,20,30,0,0,0,0,},
        [37] = {10,2,20,19,30,20,30,0,0,0,0,},
        [38] = {11,2,22,19,30,20,30,0,0,0,0,},
        [39] = {12,2,24,19,30,20,30,0,0,0,0,},
        [40] = {13,2,26,19,30,20,30,0,0,0,0,},
        [41] = {14,2,28,19,30,20,30,0,0,0,0,},
        [42] = {15,2,30,19,30,20,30,0,0,0,0,},
        [43] = {16,2,32,19,30,20,30,0,0,0,0,},
        [44] = {0,3,0,1,0,7,0,0,0,0,0,},
        [45] = {1,3,5,1,60,7,450,0,0,0,0,},
        [46] = {2,3,10,1,100,7,750,0,0,0,0,},
        [47] = {3,3,15,1,120,7,900,0,0,0,0,},
        [48] = {4,3,20,1,140,7,1050,0,0,0,0,},
        [49] = {5,3,25,1,180,7,1350,0,0,0,0,},
        [50] = {6,3,30,1,240,7,1800,0,0,0,0,},
        [51] = {7,3,35,1,320,7,2400,0,0,0,0,},
        [52] = {8,3,40,1,420,7,3150,0,0,0,0,},
        [53] = {9,3,45,1,540,7,4050,0,0,0,0,},
        [54] = {10,3,50,1,680,7,5100,0,0,0,0,},
        [55] = {11,3,55,1,860,7,6450,0,0,0,0,},
        [56] = {12,3,60,1,1080,7,8100,0,0,0,0,},
        [57] = {13,3,65,1,1340,7,10050,0,0,0,0,},
        [58] = {14,3,70,1,1640,7,12300,0,0,0,0,},
        [59] = {15,3,75,1,1980,7,14850,0,0,0,0,},
        [60] = {17,3,80,1,2360,7,17700,0,0,0,0,},
        [61] = {18,3,85,1,2780,7,20850,0,0,0,0,},
        [62] = {19,3,90,1,3200,7,24000,0,0,0,0,},
        [63] = {20,3,95,1,3620,7,27150,0,0,0,0,},
        [64] = {21,3,100,1,4040,7,30300,0,0,0,0,},
        [65] = {22,3,105,1,4460,7,33450,0,0,0,0,},
        [66] = {23,3,110,1,4880,7,36600,0,0,0,0,},
        [67] = {0,4,0,19,0,20,0,0,0,0,0,},
        [68] = {1,4,2,19,60,20,60,0,0,0,0,},
        [69] = {2,4,4,19,60,20,60,0,0,0,0,},
        [70] = {3,4,6,19,60,20,60,0,0,0,0,},
        [71] = {4,4,8,19,60,20,60,0,0,0,0,},
        [72] = {5,4,10,19,60,20,60,0,0,0,0,},
        [73] = {6,4,12,19,60,20,60,0,0,0,0,},
        [74] = {7,4,14,19,60,20,60,0,0,0,0,},
        [75] = {8,4,16,19,60,20,60,0,0,0,0,},
        [76] = {9,4,18,19,60,20,60,0,0,0,0,},
        [77] = {10,4,20,19,60,20,60,0,0,0,0,},
        [78] = {11,4,22,19,60,20,60,0,0,0,0,},
        [79] = {12,4,24,19,60,20,60,0,0,0,0,},
        [80] = {13,4,26,19,60,20,60,0,0,0,0,},
        [81] = {14,4,28,19,60,20,60,0,0,0,0,},
        [82] = {15,4,30,19,60,20,60,0,0,0,0,},
        [83] = {16,4,32,19,60,20,60,0,0,0,0,},
        [84] = {17,4,34,19,60,20,60,0,0,0,0,},
        [85] = {18,4,36,19,60,20,60,0,0,0,0,},
    }
}

-- index
local __index_equip_type_equip_value = {
    ["1_0"] = 1,
    ["1_10"] = 2,
    ["1_100"] = 11,
    ["1_110"] = 12,
    ["1_120"] = 13,
    ["1_130"] = 14,
    ["1_140"] = 15,
    ["1_150"] = 16,
    ["1_160"] = 17,
    ["1_170"] = 18,
    ["1_180"] = 19,
    ["1_190"] = 20,
    ["1_20"] = 3,
    ["1_200"] = 21,
    ["1_210"] = 22,
    ["1_220"] = 23,
    ["1_230"] = 24,
    ["1_240"] = 25,
    ["1_250"] = 26,
    ["1_30"] = 4,
    ["1_40"] = 5,
    ["1_50"] = 6,
    ["1_60"] = 7,
    ["1_70"] = 8,
    ["1_80"] = 9,
    ["1_90"] = 10,
    ["2_0"] = 27,
    ["2_10"] = 32,
    ["2_12"] = 33,
    ["2_14"] = 34,
    ["2_16"] = 35,
    ["2_18"] = 36,
    ["2_2"] = 28,
    ["2_20"] = 37,
    ["2_22"] = 38,
    ["2_24"] = 39,
    ["2_26"] = 40,
    ["2_28"] = 41,
    ["2_30"] = 42,
    ["2_32"] = 43,
    ["2_4"] = 29,
    ["2_6"] = 30,
    ["2_8"] = 31,
    ["3_0"] = 44,
    ["3_10"] = 46,
    ["3_100"] = 64,
    ["3_105"] = 65,
    ["3_110"] = 66,
    ["3_15"] = 47,
    ["3_20"] = 48,
    ["3_25"] = 49,
    ["3_30"] = 50,
    ["3_35"] = 51,
    ["3_40"] = 52,
    ["3_45"] = 53,
    ["3_5"] = 45,
    ["3_50"] = 54,
    ["3_55"] = 55,
    ["3_60"] = 56,
    ["3_65"] = 57,
    ["3_70"] = 58,
    ["3_75"] = 59,
    ["3_80"] = 60,
    ["3_85"] = 61,
    ["3_90"] = 62,
    ["3_95"] = 63,
    ["4_0"] = 67,
    ["4_10"] = 72,
    ["4_12"] = 73,
    ["4_14"] = 74,
    ["4_16"] = 75,
    ["4_18"] = 76,
    ["4_2"] = 68,
    ["4_20"] = 77,
    ["4_22"] = 78,
    ["4_24"] = 79,
    ["4_26"] = 80,
    ["4_28"] = 81,
    ["4_30"] = 82,
    ["4_32"] = 83,
    ["4_34"] = 84,
    ["4_36"] = 85,
    ["4_4"] = 69,
    ["4_6"] = 70,
    ["4_8"] = 71,

}

-- index mainkey map
local __main_key_map = {
    [1] = "1_0",
    [2] = "1_10",
    [11] = "1_100",
    [12] = "1_110",
    [13] = "1_120",
    [14] = "1_130",
    [15] = "1_140",
    [16] = "1_150",
    [17] = "1_160",
    [18] = "1_170",
    [19] = "1_180",
    [20] = "1_190",
    [3] = "1_20",
    [21] = "1_200",
    [22] = "1_210",
    [23] = "1_220",
    [24] = "1_230",
    [25] = "1_240",
    [26] = "1_250",
    [4] = "1_30",
    [5] = "1_40",
    [6] = "1_50",
    [7] = "1_60",
    [8] = "1_70",
    [9] = "1_80",
    [10] = "1_90",
    [27] = "2_0",
    [32] = "2_10",
    [33] = "2_12",
    [34] = "2_14",
    [35] = "2_16",
    [36] = "2_18",
    [28] = "2_2",
    [37] = "2_20",
    [38] = "2_22",
    [39] = "2_24",
    [40] = "2_26",
    [41] = "2_28",
    [42] = "2_30",
    [43] = "2_32",
    [29] = "2_4",
    [30] = "2_6",
    [31] = "2_8",
    [44] = "3_0",
    [46] = "3_10",
    [64] = "3_100",
    [65] = "3_105",
    [66] = "3_110",
    [47] = "3_15",
    [48] = "3_20",
    [49] = "3_25",
    [50] = "3_30",
    [51] = "3_35",
    [52] = "3_40",
    [53] = "3_45",
    [45] = "3_5",
    [54] = "3_50",
    [55] = "3_55",
    [56] = "3_60",
    [57] = "3_65",
    [58] = "3_70",
    [59] = "3_75",
    [60] = "3_80",
    [61] = "3_85",
    [62] = "3_90",
    [63] = "3_95",
    [67] = "4_0",
    [72] = "4_10",
    [73] = "4_12",
    [74] = "4_14",
    [75] = "4_16",
    [76] = "4_18",
    [68] = "4_2",
    [77] = "4_20",
    [78] = "4_22",
    [79] = "4_24",
    [80] = "4_26",
    [81] = "4_28",
    [82] = "4_30",
    [83] = "4_32",
    [84] = "4_34",
    [85] = "4_36",
    [69] = "4_4",
    [70] = "4_6",
    [71] = "4_8",

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in equipment_master")
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
function equipment_master.length()
    return #equipment_master._data
end

-- 
function equipment_master.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function equipment_master.isVersionValid(v)
    if equipment_master.version then
        if v then
            return equipment_master.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function equipment_master.indexOf(index)
    if index == nil or not equipment_master._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/equipment_master.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/equipment_master.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/equipment_master.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "equipment_master" )
                _isDataExist = equipment_master.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "equipment_master" )
                _isBaseExist = equipment_master.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "equipment_master" )
                _isExist = equipment_master.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "equipment_master" )
        local main_key = __main_key_map[index]
		local index_key = "__index_equip_type_equip_value"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "equipment_master" )
        local main_key = __main_key_map[index]
		local index_key = "__index_equip_type_equip_value"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = equipment_master._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "equipment_master" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function equipment_master.get(equip_type,equip_value)
    
    local k = equip_type .. '_' .. equip_value
    return equipment_master.indexOf(__index_equip_type_equip_value[k])
        
end

--
function equipment_master.set(equip_type,equip_value, key, value)
    local record = equipment_master.get(equip_type,equip_value)
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
function equipment_master.index()
    return __index_equip_type_equip_value
end

return equipment_master