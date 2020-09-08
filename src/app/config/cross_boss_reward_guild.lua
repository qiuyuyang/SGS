--cross_boss_reward_guild

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  reward_type1 = 2,    --奖励类型1-int 
  reward_value1 = 3,    --奖励类型值1-int 
  number = 4,    --参与人数-int 
  plus_ratio = 5,    --对应加成系数-int 
  legion_rank_min_1 = 6,    --军团排名1min-int 
  legion_rank_max_1 = 7,    --军团排名1max-int 
  experience_1 = 8,    --军团排名1声望-int 
  legion_rank_min_2 = 9,    --军团排名2min-int 
  legion_rank_max_2 = 10,    --军团排名2max-int 
  experience_2 = 11,    --军团排名2声望-int 
  legion_rank_min_3 = 12,    --军团排名3min-int 
  legion_rank_max_3 = 13,    --军团排名3max-int 
  experience_3 = 14,    --军团排名3声望-int 
  legion_rank_min_4 = 15,    --军团排名4min-int 
  legion_rank_max_4 = 16,    --军团排名4max-int 
  experience_4 = 17,    --军团排名4声望-int 
  legion_rank_min_5 = 18,    --军团排名5min-int 
  legion_rank_max_5 = 19,    --军团排名5max-int 
  experience_5 = 20,    --军团排名5声望-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  reward_type1 = "int",    --奖励类型1-2 
  reward_value1 = "int",    --奖励类型值1-3 
  number = "int",    --参与人数-4 
  plus_ratio = "int",    --对应加成系数-5 
  legion_rank_min_1 = "int",    --军团排名1min-6 
  legion_rank_max_1 = "int",    --军团排名1max-7 
  experience_1 = "int",    --军团排名1声望-8 
  legion_rank_min_2 = "int",    --军团排名2min-9 
  legion_rank_max_2 = "int",    --军团排名2max-10 
  experience_2 = "int",    --军团排名2声望-11 
  legion_rank_min_3 = "int",    --军团排名3min-12 
  legion_rank_max_3 = "int",    --军团排名3max-13 
  experience_3 = "int",    --军团排名3声望-14 
  legion_rank_min_4 = "int",    --军团排名4min-15 
  legion_rank_max_4 = "int",    --军团排名4max-16 
  experience_4 = "int",    --军团排名4声望-17 
  legion_rank_min_5 = "int",    --军团排名5min-18 
  legion_rank_max_5 = "int",    --军团排名5max-19 
  experience_5 = "int",    --军团排名5声望-20 

}


-- data
local cross_boss_reward_guild = {
    version =  1,
    _data = {
        [1] = {1,5,18,1,1000,1,5,500,6,10,500,11,20,500,21,50,500,51,9999,500,},
        [2] = {2,5,18,2,1000,1,5,600,6,10,600,11,20,600,21,50,600,51,9999,600,},
        [3] = {3,5,18,3,1000,1,5,700,6,10,700,11,20,700,21,50,700,51,9999,700,},
        [4] = {4,5,18,4,1000,1,5,800,6,10,800,11,20,800,21,50,800,51,9999,800,},
        [5] = {5,5,18,5,1000,1,5,900,6,10,900,11,20,900,21,50,900,51,9999,900,},
        [6] = {6,5,18,6,1000,1,5,1000,6,10,1000,11,20,1000,21,50,1000,51,9999,1000,},
        [7] = {7,5,18,7,1000,1,5,1100,6,10,1100,11,20,1100,21,50,1100,51,9999,1100,},
        [8] = {8,5,18,8,1000,1,5,1200,6,10,1200,11,20,1200,21,50,1200,51,9999,1200,},
        [9] = {9,5,18,9,1000,1,5,1300,6,10,1300,11,20,1300,21,50,1300,51,9999,1300,},
        [10] = {10,5,18,10,1000,1,5,1400,6,10,1400,11,20,1400,21,50,1400,51,9999,1400,},
        [11] = {11,5,18,11,1000,1,5,1500,6,10,1500,11,20,1500,21,50,1500,51,9999,1500,},
        [12] = {12,5,18,12,1000,1,5,1600,6,10,1600,11,20,1600,21,50,1600,51,9999,1600,},
        [13] = {13,5,18,13,1000,1,5,1700,6,10,1700,11,20,1700,21,50,1700,51,9999,1700,},
        [14] = {14,5,18,14,1000,1,5,1800,6,10,1800,11,20,1800,21,50,1800,51,9999,1800,},
        [15] = {15,5,18,15,1000,1,5,2000,6,10,2000,11,20,2000,21,50,2000,51,9999,2000,},
        [16] = {16,5,18,16,1000,1,5,2200,6,10,2200,11,20,2200,21,50,2200,51,9999,2200,},
        [17] = {17,5,18,17,1000,1,5,2400,6,10,2400,11,20,2400,21,50,2400,51,9999,2400,},
        [18] = {18,5,18,18,1000,1,5,2600,6,10,2600,11,20,2600,21,50,2600,51,9999,2600,},
        [19] = {19,5,18,19,1000,1,5,2800,6,10,2800,11,20,2800,21,50,2800,51,9999,2800,},
        [20] = {20,5,18,20,1000,1,5,3000,6,10,3000,11,20,3000,21,50,3000,51,9999,3000,},
        [21] = {21,5,18,21,1000,1,5,3200,6,10,3200,11,20,3200,21,50,3200,51,9999,3200,},
        [22] = {22,5,18,22,1000,1,5,3400,6,10,3400,11,20,3400,21,50,3400,51,9999,3400,},
        [23] = {23,5,18,23,1000,1,5,3600,6,10,3600,11,20,3600,21,50,3600,51,9999,3600,},
        [24] = {24,5,18,24,1000,1,5,3800,6,10,3800,11,20,3800,21,50,3800,51,9999,3800,},
        [25] = {25,5,18,25,1000,1,5,4000,6,10,4000,11,20,4000,21,50,4000,51,9999,4000,},
        [26] = {26,5,18,26,1000,1,5,4200,6,10,4200,11,20,4200,21,50,4200,51,9999,4200,},
        [27] = {27,5,18,27,1000,1,5,4400,6,10,4400,11,20,4400,21,50,4400,51,9999,4400,},
        [28] = {28,5,18,28,1000,1,5,4600,6,10,4600,11,20,4600,21,50,4600,51,9999,4600,},
        [29] = {29,5,18,29,1000,1,5,4800,6,10,4800,11,20,4800,21,50,4800,51,9999,4800,},
        [30] = {30,5,18,30,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [31] = {31,5,18,31,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [32] = {32,5,18,32,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [33] = {33,5,18,33,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [34] = {34,5,18,34,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [35] = {35,5,18,35,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [36] = {36,5,18,36,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [37] = {37,5,18,37,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [38] = {38,5,18,38,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [39] = {39,5,18,39,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
        [40] = {40,5,18,40,1000,1,5,5000,6,10,5000,11,20,5000,21,50,5000,51,9999,5000,},
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
        assert(key_map[k], "cannot find " .. k .. " in cross_boss_reward_guild")
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
function cross_boss_reward_guild.length()
    return #cross_boss_reward_guild._data
end

-- 
function cross_boss_reward_guild.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function cross_boss_reward_guild.isVersionValid(v)
    if cross_boss_reward_guild.version then
        if v then
            return cross_boss_reward_guild.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function cross_boss_reward_guild.indexOf(index)
    if index == nil or not cross_boss_reward_guild._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/cross_boss_reward_guild.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/cross_boss_reward_guild.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/cross_boss_reward_guild.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "cross_boss_reward_guild" )
                _isDataExist = cross_boss_reward_guild.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "cross_boss_reward_guild" )
                _isBaseExist = cross_boss_reward_guild.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "cross_boss_reward_guild" )
                _isExist = cross_boss_reward_guild.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "cross_boss_reward_guild" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "cross_boss_reward_guild" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = cross_boss_reward_guild._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "cross_boss_reward_guild" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function cross_boss_reward_guild.get(id)
    
    return cross_boss_reward_guild.indexOf(__index_id[id])
        
end

--
function cross_boss_reward_guild.set(id, key, value)
    local record = cross_boss_reward_guild.get(id)
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
function cross_boss_reward_guild.index()
    return __index_id
end

return cross_boss_reward_guild