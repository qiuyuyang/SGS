--guild_redpacket

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --红包id-int 
  name = 2,    --红包名称-string 
  index = 3,    --红包排序-int 
  type = 4,    --红包类型-int 
  value = 5,    --数量-int 
  number = 6,    --默认红包个数-int 
  gold = 7,    --默认红包金额-int 
  show = 8,    --红包外形-int 

}

-- key type
local __key_type = {
  id = "int",    --红包id-1 
  name = "string",    --红包名称-2 
  index = "int",    --红包排序-3 
  type = "int",    --红包类型-4 
  value = "int",    --数量-5 
  number = "int",    --默认红包个数-6 
  gold = "int",    --默认红包金额-7 
  show = "int",    --红包外形-8 

}


-- data
local guild_redpacket = {
    version =  1,
    _data = {
        [1] = {101,"竞技场王者",1,1,1,10,200,1,},
        [2] = {702,"全员紫色装备",2,7,4,10,500,1,},
        [3] = {703,"全员橙色装备",3,7,5,20,2000,1,},
        [4] = {704,"全员红色装备",4,7,6,20,5000,1,},
        [5] = {801,"司马官衔",5,8,2,10,100,1,},
        [6] = {802,"都尉官衔",6,8,3,20,200,1,},
        [7] = {803,"校尉官衔",7,8,4,10,400,1,},
        [8] = {804,"太守官衔",8,8,5,10,500,1,},
        [9] = {805,"刺史官衔",9,8,6,10,600,1,},
        [10] = {806,"中郎将官衔",10,8,7,20,1500,1,},
        [11] = {807,"京兆尹官衔",11,8,8,20,2000,1,},
        [12] = {808,"尚书令官衔",12,8,9,20,2500,1,},
        [13] = {809,"卫将军官衔",13,8,10,20,3000,1,},
        [14] = {810,"大都督官衔",14,8,11,20,5000,1,},
        [15] = {811,"大将军官衔",15,8,12,20,8000,1,},
        [16] = {812,"大司空官衔",16,8,13,20,10000,1,},
        [17] = {813,"大司徒官衔",17,8,14,20,12000,1,},
        [18] = {814,"大司马官衔",18,8,15,20,15000,1,},
        [19] = {815,"太尉官衔",19,8,16,20,18000,1,},
        [20] = {1106,"激活30条名将册",20,11,30,20,2000,1,},
        [21] = {1107,"激活36条名将册",21,11,36,20,5000,1,},
        [22] = {1108,"激活42条名将册",88,11,42,20,5000,1,},
        [23] = {1109,"激活48条名将册",89,11,48,20,5000,1,},
        [24] = {1110,"激活54条名将册",90,11,54,20,5000,1,},
        [25] = {1111,"激活60条名将册",91,11,60,20,5000,1,},
        [26] = {1901,"首次充值",22,19,1,5,100,1,},
        [27] = {2001,"VIP 3",23,20,3,5,100,1,},
        [28] = {2002,"VIP 5",24,20,5,10,300,1,},
        [29] = {2003,"VIP 6",25,20,6,10,500,1,},
        [30] = {2004,"VIP 7",26,20,7,20,2000,1,},
        [31] = {2005,"VIP 8",27,20,8,20,4000,1,},
        [32] = {2006,"VIP 9",28,20,9,20,6000,1,},
        [33] = {2007,"VIP 10",29,20,10,20,8000,1,},
        [34] = {2008,"VIP 11",30,20,11,30,10000,1,},
        [35] = {2009,"VIP 12",31,20,12,30,12000,1,},
        [36] = {2010,"VIP 13",32,20,13,30,15000,1,},
        [37] = {2011,"VIP 14",33,20,14,30,18000,1,},
        [38] = {2012,"VIP 15",34,20,15,30,20000,1,},
        [39] = {2013,"VIP 16",35,20,16,30,24000,1,},
        [40] = {2201,"成长基金第一期",36,22,1,5,100,1,},
        [41] = {2202,"成长基金第二期",37,22,2,10,300,1,},
        [42] = {2203,"成长基金第三期",38,22,3,10,400,1,},
        [43] = {2204,"成长基金第四期",39,22,4,10,400,1,},
        [44] = {2205,"成长基金第五期",40,22,5,10,400,1,},
        [45] = {2206,"成长基金第六期",41,22,6,10,400,1,},
        [46] = {2207,"成长基金第七期",42,22,7,10,400,1,},
        [47] = {2208,"成长基金第八期",43,22,8,10,400,1,},
        [48] = {2209,"成长基金第九期",44,22,9,10,400,1,},
        [49] = {2210,"成长基金第十期",45,22,10,10,400,1,},
        [50] = {2211,"成长基金十一期",46,22,11,10,400,1,},
        [51] = {2212,"成长基金十二期",47,22,12,10,400,1,},
        [52] = {2213,"成长基金十三期",48,22,13,10,400,1,},
        [53] = {2214,"成长基金十四期",49,22,14,10,400,1,},
        [54] = {2215,"成长基金十五期",50,22,15,10,400,1,},
        [55] = {2216,"成长基金十六期",51,22,16,10,400,1,},
        [56] = {2217,"成长基金十七期",52,22,17,10,400,1,},
        [57] = {2301,"黄金宝箱·橙装",53,23,1,5,100,1,},
        [58] = {2401,"黄金宝箱·红装",54,24,1,10,500,1,},
        [59] = {10101,"豪华周卡",55,101,1,5,100,1,},
        [60] = {10201,"至尊月卡",56,102,1,5,200,1,},
        [61] = {10301,"周每日礼包",57,103,1,5,300,1,},
        [62] = {10401,"军团BOSS第一",58,104,1,10,200,1,},
        [63] = {99,"狂欢大红包",59,99,0,100,200,2,},
        [64] = {1,"红色整将一口价",66,99,0,50,500,2,},
        [65] = {2,"红将碎片一口价",67,99,0,20,500,2,},
        [66] = {3,"红色神兵一口价",68,99,0,20,500,2,},
        [67] = {4,"红色万能神兵一口价",69,99,0,20,500,2,},
        [68] = {5,"春秋一口价",70,99,0,20,500,2,},
        [69] = {6,"战国一口价",71,99,0,20,500,2,},
        [70] = {7,"红锦囊一口价",72,99,0,50,500,2,},
        [71] = {8,"橙锦囊一口价",73,99,0,30,500,2,},
        [72] = {9,"择贤令一口价",74,99,0,30,500,2,},
        [73] = {10,"择贤举善令一口价",75,99,0,40,500,2,},
        [74] = {11,"橙色名将碎片一口价",61,99,0,30,500,2,},
        [75] = {12,"橙色武器碎片一口价",62,99,0,30,500,2,},
        [76] = {13,"金将碎片一口价",60,99,0,20,500,2,},
        [77] = {14,"原石一口价",63,99,0,30,500,2,},
        [78] = {15,"礼记一口价",64,99,0,30,500,2,},
        [79] = {16,"周易一口价",65,99,0,30,500,2,},
        [80] = {17,"橙色万能神兵一口价",76,99,0,20,500,2,},
        [81] = {11001,"新春红包雨",70,100,0,0,0,1,},
        [82] = {11002,"新春红包雨",71,100,0,0,0,2,},
        [83] = {7101,"见龙在田总积分第一",72,7101,1,100,150000,2,},
        [84] = {7102,"见龙在田总积分第二",73,7102,1,100,90000,2,},
        [85] = {7103,"见龙在田总积分第三",74,7103,1,100,60000,2,},
        [86] = {7104,"见龙在田总积分第四至十",75,7104,1,100,30000,2,},
        [87] = {7201,"欢乐抽奖积分第一",76,7201,1,50,50000,2,},
        [88] = {7202,"欢乐抽奖积分第二",77,7202,1,50,30000,2,},
        [89] = {7203,"欢乐抽奖积分第三",78,7203,1,50,20000,2,},
        [90] = {3101,"饕餮盛宴第一军团",79,3101,0,50,20000,1,},
        [91] = {3102,"饕餮盛宴第二军团",80,3102,0,50,10000,1,},
        [92] = {3103,"饕餮盛宴第三军团",81,3103,0,50,5000,1,},
        [93] = {3401,"跨服饕餮盛宴第一军团",82,3401,0,50,50000,1,},
        [94] = {3402,"跨服饕餮盛宴第二军团",83,3402,0,50,30000,1,},
        [95] = {3403,"跨服饕餮盛宴第三军团",84,3403,0,50,20000,1,},
        [96] = {3404,"跨服饕餮盛宴强力军团",85,3404,0,50,10000,1,},
        [97] = {3405,"跨服饕餮盛宴强力军团",86,3405,0,50,10000,1,},
        [98] = {3501,"乐善好施",87,3501,1,10,200,1,},
        [99] = {3601,"32进24晋级红包",88,3601,0,50,20000,1,},
        [100] = {3602,"24进16晋级红包",89,3602,0,50,30000,1,},
        [101] = {3603,"16进8晋级红包",90,3603,0,50,50000,1,},
        [102] = {3604,"4强晋级红包",91,3604,0,100,80000,1,},
        [103] = {3605,"决赛晋级红包",92,3605,0,100,100000,1,},
        [104] = {3606,"冠军红包",93,3606,0,100,150000,1,},
        [105] = {30,"一元起拍消费2千玉璧",4,109,0,10,300,1,},
        [106] = {31,"一元起拍消费5千玉璧",3,109,0,10,500,1,},
        [107] = {32,"一元起拍消费2万玉璧",2,109,0,20,2000,1,},
        [108] = {33,"一元起拍消费5万玉璧",1,109,0,20,5000,1,},
    }
}

-- index
local __index_id = {
    [1] = 64,
    [10] = 73,
    [101] = 1,
    [10101] = 59,
    [10201] = 60,
    [10301] = 61,
    [10401] = 62,
    [11] = 74,
    [11001] = 81,
    [11002] = 82,
    [1106] = 20,
    [1107] = 21,
    [1108] = 22,
    [1109] = 23,
    [1110] = 24,
    [1111] = 25,
    [12] = 75,
    [13] = 76,
    [14] = 77,
    [15] = 78,
    [16] = 79,
    [17] = 80,
    [1901] = 26,
    [2] = 65,
    [2001] = 27,
    [2002] = 28,
    [2003] = 29,
    [2004] = 30,
    [2005] = 31,
    [2006] = 32,
    [2007] = 33,
    [2008] = 34,
    [2009] = 35,
    [2010] = 36,
    [2011] = 37,
    [2012] = 38,
    [2013] = 39,
    [2201] = 40,
    [2202] = 41,
    [2203] = 42,
    [2204] = 43,
    [2205] = 44,
    [2206] = 45,
    [2207] = 46,
    [2208] = 47,
    [2209] = 48,
    [2210] = 49,
    [2211] = 50,
    [2212] = 51,
    [2213] = 52,
    [2214] = 53,
    [2215] = 54,
    [2216] = 55,
    [2217] = 56,
    [2301] = 57,
    [2401] = 58,
    [3] = 66,
    [30] = 105,
    [31] = 106,
    [3101] = 90,
    [3102] = 91,
    [3103] = 92,
    [32] = 107,
    [33] = 108,
    [3401] = 93,
    [3402] = 94,
    [3403] = 95,
    [3404] = 96,
    [3405] = 97,
    [3501] = 98,
    [3601] = 99,
    [3602] = 100,
    [3603] = 101,
    [3604] = 102,
    [3605] = 103,
    [3606] = 104,
    [4] = 67,
    [5] = 68,
    [6] = 69,
    [7] = 70,
    [702] = 2,
    [703] = 3,
    [704] = 4,
    [7101] = 83,
    [7102] = 84,
    [7103] = 85,
    [7104] = 86,
    [7201] = 87,
    [7202] = 88,
    [7203] = 89,
    [8] = 71,
    [801] = 5,
    [802] = 6,
    [803] = 7,
    [804] = 8,
    [805] = 9,
    [806] = 10,
    [807] = 11,
    [808] = 12,
    [809] = 13,
    [810] = 14,
    [811] = 15,
    [812] = 16,
    [813] = 17,
    [814] = 18,
    [815] = 19,
    [9] = 72,
    [99] = 63,

}

-- index mainkey map
local __main_key_map = {
    [64] = 1,
    [73] = 10,
    [1] = 101,
    [59] = 10101,
    [60] = 10201,
    [61] = 10301,
    [62] = 10401,
    [74] = 11,
    [81] = 11001,
    [82] = 11002,
    [20] = 1106,
    [21] = 1107,
    [22] = 1108,
    [23] = 1109,
    [24] = 1110,
    [25] = 1111,
    [75] = 12,
    [76] = 13,
    [77] = 14,
    [78] = 15,
    [79] = 16,
    [80] = 17,
    [26] = 1901,
    [65] = 2,
    [27] = 2001,
    [28] = 2002,
    [29] = 2003,
    [30] = 2004,
    [31] = 2005,
    [32] = 2006,
    [33] = 2007,
    [34] = 2008,
    [35] = 2009,
    [36] = 2010,
    [37] = 2011,
    [38] = 2012,
    [39] = 2013,
    [40] = 2201,
    [41] = 2202,
    [42] = 2203,
    [43] = 2204,
    [44] = 2205,
    [45] = 2206,
    [46] = 2207,
    [47] = 2208,
    [48] = 2209,
    [49] = 2210,
    [50] = 2211,
    [51] = 2212,
    [52] = 2213,
    [53] = 2214,
    [54] = 2215,
    [55] = 2216,
    [56] = 2217,
    [57] = 2301,
    [58] = 2401,
    [66] = 3,
    [105] = 30,
    [106] = 31,
    [90] = 3101,
    [91] = 3102,
    [92] = 3103,
    [107] = 32,
    [108] = 33,
    [93] = 3401,
    [94] = 3402,
    [95] = 3403,
    [96] = 3404,
    [97] = 3405,
    [98] = 3501,
    [99] = 3601,
    [100] = 3602,
    [101] = 3603,
    [102] = 3604,
    [103] = 3605,
    [104] = 3606,
    [67] = 4,
    [68] = 5,
    [69] = 6,
    [70] = 7,
    [2] = 702,
    [3] = 703,
    [4] = 704,
    [83] = 7101,
    [84] = 7102,
    [85] = 7103,
    [86] = 7104,
    [87] = 7201,
    [88] = 7202,
    [89] = 7203,
    [71] = 8,
    [5] = 801,
    [6] = 802,
    [7] = 803,
    [8] = 804,
    [9] = 805,
    [10] = 806,
    [11] = 807,
    [12] = 808,
    [13] = 809,
    [14] = 810,
    [15] = 811,
    [16] = 812,
    [17] = 813,
    [18] = 814,
    [19] = 815,
    [72] = 9,
    [63] = 99,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in guild_redpacket")
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
function guild_redpacket.length()
    return #guild_redpacket._data
end

-- 
function guild_redpacket.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function guild_redpacket.isVersionValid(v)
    if guild_redpacket.version then
        if v then
            return guild_redpacket.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function guild_redpacket.indexOf(index)
    if index == nil or not guild_redpacket._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/guild_redpacket.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/guild_redpacket.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/guild_redpacket.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "guild_redpacket" )
                _isDataExist = guild_redpacket.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "guild_redpacket" )
                _isBaseExist = guild_redpacket.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "guild_redpacket" )
                _isExist = guild_redpacket.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "guild_redpacket" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "guild_redpacket" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = guild_redpacket._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "guild_redpacket" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function guild_redpacket.get(id)
    
    return guild_redpacket.indexOf(__index_id[id])
        
end

--
function guild_redpacket.set(id, key, value)
    local record = guild_redpacket.get(id)
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
function guild_redpacket.index()
    return __index_id
end

return guild_redpacket