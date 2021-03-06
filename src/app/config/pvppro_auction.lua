--pvppro_auction

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  day_min = 2,    --天数min-int 
  day_max = 3,    --天数max-int 
  num_min = 4,    --人数min-int 
  num_max = 5,    --人数max-int 
  reward_id1 = 6,    --奖励组1-int 
  reward_id2 = 7,    --奖励组2-int 
  reward_id3 = 8,    --奖励组3-int 
  reward_id4 = 9,    --奖励组4-int 
  reward_id5 = 10,    --奖励组5-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  day_min = "int",    --天数min-2 
  day_max = "int",    --天数max-3 
  num_min = "int",    --人数min-4 
  num_max = "int",    --人数max-5 
  reward_id1 = "int",    --奖励组1-6 
  reward_id2 = "int",    --奖励组2-7 
  reward_id3 = "int",    --奖励组3-8 
  reward_id4 = "int",    --奖励组4-9 
  reward_id5 = "int",    --奖励组5-10 

}


-- data
local pvppro_auction = {
    version =  1,
    _data = {
        [1] = {1,1,24,1401,99999,101,102,0,104,0,},
        [2] = {2,1,24,1301,1400,201,202,0,204,0,},
        [3] = {3,1,24,1201,1300,301,302,0,304,0,},
        [4] = {4,1,24,1101,1200,401,402,0,404,0,},
        [5] = {5,1,24,1001,1100,501,502,0,504,0,},
        [6] = {6,1,24,951,1000,601,602,0,604,0,},
        [7] = {7,1,24,901,950,701,702,0,704,0,},
        [8] = {8,1,24,851,900,801,802,0,804,0,},
        [9] = {9,1,24,801,850,901,902,0,904,0,},
        [10] = {10,1,24,751,800,1001,1002,0,1004,0,},
        [11] = {11,1,24,701,750,1101,1102,0,1104,0,},
        [12] = {12,1,24,651,700,1201,1202,0,1204,0,},
        [13] = {13,1,24,601,650,1301,1302,0,1304,0,},
        [14] = {14,1,24,551,600,1401,1402,0,1404,0,},
        [15] = {15,1,24,501,550,1501,1502,0,1504,0,},
        [16] = {16,1,24,451,500,1601,1602,0,1604,0,},
        [17] = {17,1,24,401,450,1701,1702,0,1704,0,},
        [18] = {18,1,24,351,400,1801,1802,0,1804,0,},
        [19] = {19,1,24,301,350,1901,1902,0,1904,0,},
        [20] = {20,1,24,251,300,2001,2002,0,2004,0,},
        [21] = {21,1,24,201,250,2101,2102,0,2104,0,},
        [22] = {22,1,24,151,200,2201,2202,0,2204,0,},
        [23] = {23,1,24,101,150,2301,2302,0,2304,0,},
        [24] = {24,1,24,51,100,2401,2402,0,2404,0,},
        [25] = {25,1,24,1,50,2501,2502,0,2504,0,},
        [26] = {26,25,9999,1401,99999,101,102,103,104,0,},
        [27] = {27,25,9999,1301,1400,201,202,203,204,0,},
        [28] = {28,25,9999,1201,1300,301,302,303,304,0,},
        [29] = {29,25,9999,1101,1200,401,402,403,404,0,},
        [30] = {30,25,9999,1001,1100,501,502,503,504,0,},
        [31] = {31,25,9999,951,1000,601,602,603,604,0,},
        [32] = {32,25,9999,901,950,701,702,703,704,0,},
        [33] = {33,25,9999,851,900,801,802,803,804,0,},
        [34] = {34,25,9999,801,850,901,902,903,904,0,},
        [35] = {35,25,9999,751,800,1001,1002,1003,1004,0,},
        [36] = {36,25,9999,701,750,1101,1102,1103,1104,0,},
        [37] = {37,25,9999,651,700,1201,1202,1203,1204,0,},
        [38] = {38,25,9999,601,650,1301,1302,1303,1304,0,},
        [39] = {39,25,9999,551,600,1401,1402,1403,1404,0,},
        [40] = {40,25,9999,501,550,1501,1502,1503,1504,0,},
        [41] = {41,25,9999,451,500,1601,1602,1603,1604,0,},
        [42] = {42,25,9999,401,450,1701,1702,1703,1704,0,},
        [43] = {43,25,9999,351,400,1801,1802,1803,1804,0,},
        [44] = {44,25,9999,301,350,1901,1902,1903,1904,0,},
        [45] = {45,25,9999,251,300,2001,2002,2003,2004,0,},
        [46] = {46,25,9999,201,250,2101,2102,2103,2104,0,},
        [47] = {47,25,9999,151,200,2201,2202,2203,2204,0,},
        [48] = {48,25,9999,101,150,2301,2302,2303,2304,0,},
        [49] = {49,25,9999,51,100,2401,2402,2403,2404,0,},
        [50] = {50,25,9999,1,50,2501,2502,2503,2504,0,},
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
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in pvppro_auction")
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
function pvppro_auction.length()
    return #pvppro_auction._data
end

-- 
function pvppro_auction.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function pvppro_auction.isVersionValid(v)
    if pvppro_auction.version then
        if v then
            return pvppro_auction.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function pvppro_auction.indexOf(index)
    if index == nil or not pvppro_auction._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/pvppro_auction.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/pvppro_auction.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/pvppro_auction.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "pvppro_auction" )
                _isDataExist = pvppro_auction.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "pvppro_auction" )
                _isBaseExist = pvppro_auction.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "pvppro_auction" )
                _isExist = pvppro_auction.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "pvppro_auction" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "pvppro_auction" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = pvppro_auction._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "pvppro_auction" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function pvppro_auction.get(id)
    
    return pvppro_auction.indexOf(__index_id[id])
        
end

--
function pvppro_auction.set(id, key, value)
    local record = pvppro_auction.get(id)
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
function pvppro_auction.index()
    return __index_id
end

return pvppro_auction