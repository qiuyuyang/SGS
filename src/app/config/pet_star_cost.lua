--pet_star_cost

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  star = 1,    --星级-int 
  color = 2,    --品质-int 
  is_red = 3,    --原始红-int 
  lv = 4,    --需要神兽等级-int 
  card = 5,    --同名卡数量-int 
  potential_card = 6,    --消耗界限突破前神兽数量-int 
  type_1 = 7,    --材料1type-int 
  value_1 = 8,    --材料1value-int 
  size_1 = 9,    --材料1size-int 
  type_2 = 10,    --材料2type-int 
  value_2 = 11,    --材料2value-int 
  size_2 = 12,    --材料2size-int 
  special_size = 13,    --特殊材料数量-int 

}

-- key type
local __key_type = {
  star = "int",    --星级-1 
  color = "int",    --品质-2 
  is_red = "int",    --原始红-3 
  lv = "int",    --需要神兽等级-4 
  card = "int",    --同名卡数量-5 
  potential_card = "int",    --消耗界限突破前神兽数量-6 
  type_1 = "int",    --材料1type-7 
  value_1 = "int",    --材料1value-8 
  size_1 = "int",    --材料1size-9 
  type_2 = "int",    --材料2type-10 
  value_2 = "int",    --材料2value-11 
  size_2 = "int",    --材料2size-12 
  special_size = "int",    --特殊材料数量-13 

}


-- data
local pet_star_cost = {
    version =  1,
    _data = {
        [1] = {0,2,0,20,1,0,6,32,50,5,2,100000,0,},
        [2] = {1,2,0,40,1,0,6,32,100,5,2,200000,0,},
        [3] = {2,2,0,60,1,0,6,32,200,5,2,400000,0,},
        [4] = {3,2,0,80,1,0,6,32,300,5,2,600000,0,},
        [5] = {4,2,0,100,1,0,6,32,400,5,2,800000,0,},
        [6] = {5,2,0,0,0,0,0,0,0,0,0,0,0,},
        [7] = {0,3,0,20,1,0,6,32,50,5,2,100000,0,},
        [8] = {1,3,0,40,1,0,6,32,100,5,2,200000,0,},
        [9] = {2,3,0,60,1,0,6,32,200,5,2,400000,0,},
        [10] = {3,3,0,80,1,0,6,32,300,5,2,600000,0,},
        [11] = {4,3,0,100,1,0,6,32,400,5,2,800000,0,},
        [12] = {5,3,0,0,0,0,0,0,0,0,0,0,0,},
        [13] = {0,4,0,20,1,0,6,32,100,5,2,150000,0,},
        [14] = {1,4,0,40,1,0,6,32,200,5,2,300000,0,},
        [15] = {2,4,0,60,1,0,6,32,400,5,2,600000,0,},
        [16] = {3,4,0,80,1,0,6,32,500,5,2,900000,0,},
        [17] = {4,4,0,100,1,0,6,32,700,5,2,1200000,0,},
        [18] = {5,4,0,0,0,0,0,0,0,0,0,0,0,},
        [19] = {0,5,0,20,1,0,6,32,500,5,2,200000,0,},
        [20] = {1,5,0,40,1,0,6,32,1000,5,2,400000,0,},
        [21] = {2,5,0,60,1,0,6,32,1800,5,2,800000,0,},
        [22] = {3,5,0,80,1,0,6,32,2700,5,2,1200000,0,},
        [23] = {4,5,0,100,1,0,6,32,3600,5,2,1600000,0,},
        [24] = {5,5,0,0,0,0,0,0,0,0,0,0,0,},
        [25] = {0,6,0,20,0,3,6,32,3300,5,2,1400000,0,},
        [26] = {1,6,0,40,0,1,6,32,2700,5,2,1200000,0,},
        [27] = {2,6,0,60,0,1,6,32,3600,5,2,1600000,0,},
        [28] = {3,6,0,80,0,2,6,32,4800,5,2,2400000,1,},
        [29] = {4,6,0,100,0,2,6,32,6000,5,2,4200000,1,},
        [30] = {5,6,0,0,0,0,0,0,0,0,0,0,0,},
        [31] = {3,6,1,100,1,0,6,32,6800,5,2,3600000,0,},
        [32] = {4,6,1,100,1,0,6,32,13600,5,2,7200000,0,},
        [33] = {5,6,1,100,1,0,0,0,0,0,0,0,0,},
    }
}

-- index
local __index_star_color_is_red = {
    ["0_2_0"] = 1,
    ["0_3_0"] = 7,
    ["0_4_0"] = 13,
    ["0_5_0"] = 19,
    ["0_6_0"] = 25,
    ["1_2_0"] = 2,
    ["1_3_0"] = 8,
    ["1_4_0"] = 14,
    ["1_5_0"] = 20,
    ["1_6_0"] = 26,
    ["2_2_0"] = 3,
    ["2_3_0"] = 9,
    ["2_4_0"] = 15,
    ["2_5_0"] = 21,
    ["2_6_0"] = 27,
    ["3_2_0"] = 4,
    ["3_3_0"] = 10,
    ["3_4_0"] = 16,
    ["3_5_0"] = 22,
    ["3_6_0"] = 28,
    ["3_6_1"] = 31,
    ["4_2_0"] = 5,
    ["4_3_0"] = 11,
    ["4_4_0"] = 17,
    ["4_5_0"] = 23,
    ["4_6_0"] = 29,
    ["4_6_1"] = 32,
    ["5_2_0"] = 6,
    ["5_3_0"] = 12,
    ["5_4_0"] = 18,
    ["5_5_0"] = 24,
    ["5_6_0"] = 30,
    ["5_6_1"] = 33,

}

-- index mainkey map
local __main_key_map = {
    [1] = "0_2_0",
    [7] = "0_3_0",
    [13] = "0_4_0",
    [19] = "0_5_0",
    [25] = "0_6_0",
    [2] = "1_2_0",
    [8] = "1_3_0",
    [14] = "1_4_0",
    [20] = "1_5_0",
    [26] = "1_6_0",
    [3] = "2_2_0",
    [9] = "2_3_0",
    [15] = "2_4_0",
    [21] = "2_5_0",
    [27] = "2_6_0",
    [4] = "3_2_0",
    [10] = "3_3_0",
    [16] = "3_4_0",
    [22] = "3_5_0",
    [28] = "3_6_0",
    [31] = "3_6_1",
    [5] = "4_2_0",
    [11] = "4_3_0",
    [17] = "4_4_0",
    [23] = "4_5_0",
    [29] = "4_6_0",
    [32] = "4_6_1",
    [6] = "5_2_0",
    [12] = "5_3_0",
    [18] = "5_4_0",
    [24] = "5_5_0",
    [30] = "5_6_0",
    [33] = "5_6_1",

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in pet_star_cost")
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
function pet_star_cost.length()
    return #pet_star_cost._data
end

-- 
function pet_star_cost.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function pet_star_cost.isVersionValid(v)
    if pet_star_cost.version then
        if v then
            return pet_star_cost.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function pet_star_cost.indexOf(index)
    if index == nil or not pet_star_cost._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/pet_star_cost.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/pet_star_cost.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/pet_star_cost.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "pet_star_cost" )
                _isDataExist = pet_star_cost.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "pet_star_cost" )
                _isBaseExist = pet_star_cost.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "pet_star_cost" )
                _isExist = pet_star_cost.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "pet_star_cost" )
        local main_key = __main_key_map[index]
		local index_key = "__index_star_color_is_red"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "pet_star_cost" )
        local main_key = __main_key_map[index]
		local index_key = "__index_star_color_is_red"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = pet_star_cost._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "pet_star_cost" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function pet_star_cost.get(star,color,is_red)
    
    local k = star .. '_' .. color .. '_' .. is_red
    return pet_star_cost.indexOf(__index_star_color_is_red[k])
        
end

--
function pet_star_cost.set(star,color,is_red, key, value)
    local record = pet_star_cost.get(star,color,is_red)
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
function pet_star_cost.index()
    return __index_star_color_is_red
end

return pet_star_cost