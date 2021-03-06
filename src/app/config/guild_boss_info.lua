--guild_boss_info

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  type = 2,    --怪物类型-int 
  group = 3,    --BOSS组-int 
  monster_team_id = 4,    --怪物组id-int 
  battle_scene = 5,    --战斗场景-int 
  city_name = 6,    --城池名称-string 
  name = 7,    --名称-string 
  x = 8,    --x坐标-int 
  y = 9,    --y坐标-int 
  city_pic = 10,    --城池图片-string 
  name_pic_lock = 11,    --未解锁名称-string 
  name_pic = 12,    --名称-string 
  hero_id = 13,    --武将id-int 
  image = 14,    --名称图片-string 
  boss_bubble = 15,    --boss对话-string 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  type = "int",    --怪物类型-2 
  group = "int",    --BOSS组-3 
  monster_team_id = "int",    --怪物组id-4 
  battle_scene = "int",    --战斗场景-5 
  city_name = "string",    --城池名称-6 
  name = "string",    --名称-7 
  x = "int",    --x坐标-8 
  y = "int",    --y坐标-9 
  city_pic = "string",    --城池图片-10 
  name_pic_lock = "string",    --未解锁名称-11 
  name_pic = "string",    --名称-12 
  hero_id = "int",    --武将id-13 
  image = "string",    --名称图片-14 
  boss_bubble = "string",    --boss对话-15 

}


-- data
local guild_boss_info = {
    version =  1,
    _data = {
        [1] = {1,1,1,5400001,1,"兖州","华雄",-100,90,"yanzhou_xuzhou","","txt_guild_chouzhou",406,"txt_boss_lvbu01","1401|1402|1403|1404",},
        [2] = {2,1,1,5400002,2,"徐州","公孙瓒",-320,50,"yanzhou_xuzhou","","txt_guild_xuzhou",408,"txt_boss_sunce01","1401|1402|1403|1404",},
        [3] = {3,1,2,5400003,3,"西城","庞统",-270,-100,"xicheng_jieting","","txt_guild_xiyu",211,"txt_boss_zhaoyun01","1401|1402|1403|1404",},
        [4] = {4,1,2,5400004,4,"街亭","徐庶",-100,-130,"xicheng_jieting","","txt_guild_jieting",212,"txt_boss_caocao01","1401|1402|1403|1404",},
        [5] = {5,1,3,5400005,5,"夏口","甘宁",310,-190,"xiakou_sanjiangkou","","txt_guild_xiakou",308,"txt_boss_lvbu01","1401|1402|1403|1404",},
        [6] = {6,1,3,5400006,6,"三江口","吕蒙",170,-75,"xiakou_sanjiangkou","","txt_guild_sanjiangkou",307,"txt_boss_sunce01","1401|1402|1403|1404",},
        [7] = {7,1,4,5400007,7,"仓亭","曹仁",270,74,"changting_wucao","","txt_guild_cangting",106,"txt_boss_zhaoyun01","1401|1402|1403|1404",},
        [8] = {8,1,4,5400008,8,"乌巢","张郃",80,150,"changting_wucao","","txt_guild_wucao",110,"txt_boss_caocao01","1401|1402|1403|1404",},
        [9] = {9,2,4,5400012,9,"","魏武帝曹操",390,160,"","txt_guild_caocao01","txt_guild_caocao",103,"txt_boss_caocao01","1401|1402|1403|1404",},
        [10] = {10,2,2,5400010,10,"","卧龙诸葛亮",-420,-165,"","txt_guild_zhugeliang01","txt_guild_zhugeliang",203,"txt_boss_sunce01","1401|1402|1403|1404",},
        [11] = {11,2,3,5400011,11,"","大都督周瑜",440,-80,"","txt_guild_zhouyu01","txt_guild_zhouyu",303,"txt_boss_zhaoyun01","1401|1402|1403|1404",},
        [12] = {12,2,1,5400009,12,"","战神吕布",-300,150,"","txt_guild_lvbu01","txt_guild_lvbu",403,"txt_boss_lvbu01","1401|1402|1403|1404",},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 10,
    [11] = 11,
    [12] = 12,
    [2] = 2,
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
    [2] = 2,
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
        assert(key_map[k], "cannot find " .. k .. " in guild_boss_info")
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
function guild_boss_info.length()
    return #guild_boss_info._data
end

-- 
function guild_boss_info.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function guild_boss_info.isVersionValid(v)
    if guild_boss_info.version then
        if v then
            return guild_boss_info.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function guild_boss_info.indexOf(index)
    if index == nil or not guild_boss_info._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/guild_boss_info.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/guild_boss_info.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/guild_boss_info.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "guild_boss_info" )
                _isDataExist = guild_boss_info.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "guild_boss_info" )
                _isBaseExist = guild_boss_info.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "guild_boss_info" )
                _isExist = guild_boss_info.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "guild_boss_info" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "guild_boss_info" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = guild_boss_info._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "guild_boss_info" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function guild_boss_info.get(id)
    
    return guild_boss_info.indexOf(__index_id[id])
        
end

--
function guild_boss_info.set(id, key, value)
    local record = guild_boss_info.get(id)
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
function guild_boss_info.index()
    return __index_id
end

return guild_boss_info