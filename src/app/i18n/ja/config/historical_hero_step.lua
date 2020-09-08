--historical_hero_step

local historical_hero_step = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --编号-int 
      description = 2,    --技能描述-string 
    
    },
    -- data
    _data = {
        [1] = {101,"加護武将のHP+5%",},
        [2] = {101,"加護武将のHP+5%",},
        [3] = {102,"加護武将のダメージ+5%",},
        [4] = {102,"加護武将のダメージ+5%",},
        [5] = {103,"加護武将の攻撃力+5%",},
        [6] = {103,"加護武将の攻撃力+5%",},
        [7] = {104,"加護武将のダメージ軽減+5%",},
        [8] = {104,"加護武将のダメージ軽減+5%",},
        [9] = {201,"守護武将が受ける直接ダメージ-9%、受ける異常効果(麻痺、めまい、沈黙、やけど、中毒、虚弱、制圧、鉄鎖、吹っ飛ばし)の確率-12%",},
        [10] = {201,"守護武将が受ける異常効果(麻痺、めまい、沈黙、やけど、中毒、虚弱、制圧、鉄鎖、吹っ飛ばし)の確率が更に-24%",},
        [11] = {201,"守護武将が受ける異常効果(麻痺、めまい、沈黙、やけど、中毒、虚弱、制圧、鉄鎖、吹っ飛ばし)の確率が更に-24%",},
        [12] = {202,"加護武将の与ダメージおよび回復+9%、会心ダメージ+24%",},
        [13] = {202,"加護武将の会心ダメージ+24%",},
        [14] = {202,"加護武将の会心ダメージ+24%",},
        [15] = {203,"守護武将が味方の青龍、朱雀、玄武のバフを受ける時、効果が更に+25%(怒気+1pt)",},
        [16] = {203,"守護武将が味方の青龍、朱雀、玄武のバフを受ける時、効果が更に+25%(怒気が更に+1pt)",},
        [17] = {203,"守護武将が味方の青龍、朱雀、玄武のバフを受ける時、効果が更に+25%(怒気が更に+1pt)",},
        [18] = {204,"守護武将が敵武将の直接ダメージを受ける時、自身のやけどまたは中毒を解消する",},
        [19] = {204,"守護武将が直接ダメージ受ける時、追加で50％の確率で自身の制圧または虚弱状態を解消",},
        [20] = {204,"守護武将が直接ダメージ受ける時、追加で50％の確率で自身の制圧または虚弱状態を解消",},
    },

    -- index
    __index_id_step = {
        ["101_1"] = 1,
        ["101_2"] = 2,
        ["102_1"] = 3,
        ["102_2"] = 4,
        ["103_1"] = 5,
        ["103_2"] = 6,
        ["104_1"] = 7,
        ["104_2"] = 8,
        ["201_1"] = 9,
        ["201_2"] = 10,
        ["201_3"] = 11,
        ["202_1"] = 12,
        ["202_2"] = 13,
        ["202_3"] = 14,
        ["203_1"] = 15,
        ["203_2"] = 16,
        ["203_3"] = 17,
        ["204_1"] = 18,
        ["204_2"] = 19,
        ["204_3"] = 20,
    }
}

return historical_hero_step