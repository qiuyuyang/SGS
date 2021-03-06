--shop_crystal_item

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  good_id = 1,    --商品编号-int 
  good_type = 2,    --商品类型-int 
  good_value = 3,    --商品类型值-int 
  good_size = 4,    --商品数量-int 
  price_type_1 = 5,    --价格类型1-int 
  price_value_1 = 6,    --价格类型值1-int 
  price_size_1 = 7,    --价格数量1-int 
  price_type_2 = 8,    --价格类型2-int 
  price_value_2 = 9,    --价格类型值2-int 
  price_size_2 = 10,    --价格数量2-int 
  limit = 11,    --次数限制-int 
  discount = 12,    --显示折扣-int 
  order = 13,    --排序-int 

}

-- key type
local __key_type = {
  good_id = "int",    --商品编号-1 
  good_type = "int",    --商品类型-2 
  good_value = "int",    --商品类型值-3 
  good_size = "int",    --商品数量-4 
  price_type_1 = "int",    --价格类型1-5 
  price_value_1 = "int",    --价格类型值1-6 
  price_size_1 = "int",    --价格数量1-7 
  price_type_2 = "int",    --价格类型2-8 
  price_value_2 = "int",    --价格类型值2-9 
  price_size_2 = "int",    --价格数量2-10 
  limit = "int",    --次数限制-11 
  discount = "int",    --显示折扣-12 
  order = "int",    --排序-13 

}


-- data
local shop_crystal_item = {
    version =  1,
    _data = {
        [1] = {1,11,1301,1,5,20,200,0,0,0,1,0,11,},
        [2] = {2,11,1303,1,5,20,200,0,0,0,1,0,12,},
        [3] = {3,11,1304,1,5,20,200,0,0,0,1,0,13,},
        [4] = {4,11,1308,1,5,20,200,0,0,0,1,0,14,},
        [5] = {5,11,1202,1,5,20,64,0,0,0,1,0,50,},
        [6] = {6,11,1203,1,5,20,64,0,0,0,1,0,51,},
        [7] = {7,11,1204,1,5,20,64,0,0,0,1,0,52,},
        [8] = {8,11,1205,1,5,20,64,0,0,0,1,0,53,},
        [9] = {9,11,1207,1,5,20,64,0,0,0,1,0,54,},
        [10] = {10,11,1208,1,5,20,64,0,0,0,1,0,55,},
        [11] = {11,11,1209,1,5,20,64,0,0,0,1,0,56,},
        [12] = {12,11,1211,1,5,20,64,0,0,0,1,0,57,},
        [13] = {13,11,1212,1,5,20,64,0,0,0,1,0,58,},
        [14] = {14,11,1213,1,5,20,64,0,0,0,1,0,59,},
        [15] = {15,11,1214,1,5,20,64,0,0,0,1,0,60,},
        [16] = {16,11,1215,1,5,20,64,0,0,0,1,0,61,},
        [17] = {17,11,1216,1,5,20,64,0,0,0,1,0,62,},
        [18] = {18,11,1217,1,5,20,64,0,0,0,1,0,63,},
        [19] = {19,11,1218,1,5,20,64,0,0,0,1,0,64,},
        [20] = {20,11,1219,1,5,20,64,0,0,0,1,0,65,},
        [21] = {21,11,1220,1,5,20,64,0,0,0,1,0,66,},
        [22] = {22,11,1221,1,5,20,64,0,0,0,1,0,67,},
        [23] = {23,11,1222,1,5,20,64,0,0,0,1,0,68,},
        [24] = {24,11,1223,1,5,20,64,0,0,0,1,0,69,},
        [25] = {25,6,42,1,5,20,64,0,0,0,1,0,3,},
        [26] = {26,11,1302,1,5,20,200,0,0,0,1,0,15,},
        [27] = {27,11,1309,1,5,20,200,0,0,0,1,0,16,},
        [28] = {28,11,1310,1,5,20,200,0,0,0,1,0,17,},
        [29] = {29,11,1311,1,5,20,200,0,0,0,1,0,18,},
        [30] = {30,6,43,1,5,20,140,0,0,0,1,0,2,},
        [31] = {31,5,20,1,6,33,2,0,0,0,0,0,1,},
        [32] = {32,11,1305,1,5,20,200,0,0,0,1,0,19,},
        [33] = {33,11,1313,1,5,20,200,0,0,0,1,0,20,},
        [34] = {34,11,1314,1,5,20,200,0,0,0,1,0,21,},
        [35] = {35,11,1315,1,5,20,200,0,0,0,1,0,22,},
        [36] = {36,11,1224,1,5,20,64,0,0,0,1,0,70,},
        [37] = {37,11,1225,1,5,20,64,0,0,0,1,0,71,},
        [38] = {38,11,1226,1,5,20,64,0,0,0,1,0,72,},
        [39] = {39,11,1227,1,5,20,64,0,0,0,1,0,73,},
        [40] = {40,6,33,2,5,20,1,0,0,0,0,0,1,},
    }
}

-- index
local __index_good_id = {
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
        assert(key_map[k], "cannot find " .. k .. " in shop_crystal_item")
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
function shop_crystal_item.length()
    return #shop_crystal_item._data
end

-- 
function shop_crystal_item.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function shop_crystal_item.isVersionValid(v)
    if shop_crystal_item.version then
        if v then
            return shop_crystal_item.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function shop_crystal_item.indexOf(index)
    if index == nil or not shop_crystal_item._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/shop_crystal_item.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/shop_crystal_item.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/shop_crystal_item.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "shop_crystal_item" )
                _isDataExist = shop_crystal_item.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "shop_crystal_item" )
                _isBaseExist = shop_crystal_item.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "shop_crystal_item" )
                _isExist = shop_crystal_item.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "shop_crystal_item" )
        local main_key = __main_key_map[index]
		local index_key = "__index_good_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "shop_crystal_item" )
        local main_key = __main_key_map[index]
		local index_key = "__index_good_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = shop_crystal_item._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "shop_crystal_item" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function shop_crystal_item.get(good_id)
    
    return shop_crystal_item.indexOf(__index_good_id[good_id])
        
end

--
function shop_crystal_item.set(good_id, key, value)
    local record = shop_crystal_item.get(good_id)
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
function shop_crystal_item.index()
    return __index_good_id
end

return shop_crystal_item