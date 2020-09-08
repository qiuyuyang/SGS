--seven_days_admin

local seven_days_admin = {
    version =  1,
    -- key
    __key_map = {
      day = 1,    --天数-int 
      name = 2,    --页签名称-string 
    
    },
    -- data
    _data = {
        [1] = {1,"毎日ボーナス",},
        [2] = {1,"ストーリー",},
        [3] = {1,"装備強化",},
        [4] = {1,"半額セール",},
        [5] = {2,"毎日ボーナス",},
        [6] = {2,"周遊と競技",},
        [7] = {2,"宝物レベルアップ",},
        [8] = {2,"半額セール",},
        [9] = {3,"毎日ボーナス",},
        [10] = {3,"過関斬将",},
        [11] = {3,"装備精錬",},
        [12] = {3,"半額セール",},
        [13] = {4,"毎日ボーナス",},
        [14] = {4,"南蛮侵攻",},
        [15] = {4,"神器練磨",},
        [16] = {4,"半額セール",},
        [17] = {5,"毎日ボーナス",},
        [18] = {5,"武将商店",},
        [19] = {5,"レベルアップと突破",},
        [20] = {5,"半額セール",},
        [21] = {6,"毎日ボーナス",},
        [22] = {6,"軍団ボス",},
        [23] = {6,"宝物精錬",},
        [24] = {6,"半額セール",},
        [25] = {7,"毎日ボーナス",},
        [26] = {7,"総戦力",},
        [27] = {7,"名将録",},
        [28] = {7,"半額セール",},
    },

    -- index
    __index_day_sheet = {
        ["1_1"] = 1,
        ["1_2"] = 2,
        ["1_3"] = 3,
        ["1_4"] = 4,
        ["2_1"] = 5,
        ["2_2"] = 6,
        ["2_3"] = 7,
        ["2_4"] = 8,
        ["3_1"] = 9,
        ["3_2"] = 10,
        ["3_3"] = 11,
        ["3_4"] = 12,
        ["4_1"] = 13,
        ["4_2"] = 14,
        ["4_3"] = 15,
        ["4_4"] = 16,
        ["5_1"] = 17,
        ["5_2"] = 18,
        ["5_3"] = 19,
        ["5_4"] = 20,
        ["6_1"] = 21,
        ["6_2"] = 22,
        ["6_3"] = 23,
        ["6_4"] = 24,
        ["7_1"] = 25,
        ["7_2"] = 26,
        ["7_3"] = 27,
        ["7_4"] = 28,
    }
}

return seven_days_admin