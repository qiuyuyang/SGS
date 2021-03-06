--act_dinner

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  start_time = 2,    --起始时间-string 
  end_time = 3,    --终止时间-string 
  vit_reward = 4,    --体力奖励-int 
  gold_reward = 5,    --元宝奖励-int 
  name = 6,    --名称-string 
  time_txt = 7,    --客户端显示文字-string 
  chat_before = 8,    --领取前对话-string 
  chat_after = 9,    --领取后对话-string 
  retrieve = 10,    --追回元宝-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  start_time = "string",    --起始时间-2 
  end_time = "string",    --终止时间-3 
  vit_reward = "int",    --体力奖励-4 
  gold_reward = "int",    --元宝奖励-5 
  name = "string",    --名称-6 
  time_txt = "string",    --客户端显示文字-7 
  chat_before = "string",    --领取前对话-8 
  chat_after = "string",    --领取后对话-9 
  retrieve = "int",    --追回元宝-10 

}


-- data
local act_dinner = {
    version =  1,
    _data = {
        [1] = {1,"12|00|00","14|00|00",50,50,"午宴","12:00-14:00","主公饿了吧？来吃个饱～","主公记得晚上18:00再来哦～",60,},
        [2] = {2,"18|00|00","20|00|00",50,50,"晚宴","18:00-20:00","主公饿了吧？来吃个饱～","主公记得晚上21:00再来哦～",60,},
        [3] = {3,"21|00|00","23|00|00",50,50,"夜宵","21:00-23:00","请主公满饮此杯！","主公今晚不走了吧？",60,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [2] = 2,
    [3] = 3,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,
    [2] = 2,
    [3] = 3,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in act_dinner")
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
function act_dinner.length()
    return #act_dinner._data
end

-- 
function act_dinner.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function act_dinner.isVersionValid(v)
    if act_dinner.version then
        if v then
            return act_dinner.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function act_dinner.indexOf(index)
    if index == nil or not act_dinner._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/act_dinner.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/act_dinner.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/act_dinner.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "act_dinner" )
                _isDataExist = act_dinner.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "act_dinner" )
                _isBaseExist = act_dinner.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "act_dinner" )
                _isExist = act_dinner.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "act_dinner" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "act_dinner" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = act_dinner._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "act_dinner" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function act_dinner.get(id)
    
    return act_dinner.indexOf(__index_id[id])
        
end

--
function act_dinner.set(id, key, value)
    local record = act_dinner.get(id)
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
function act_dinner.index()
    return __index_id
end

return act_dinner