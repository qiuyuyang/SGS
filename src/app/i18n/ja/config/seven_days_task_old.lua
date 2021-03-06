--seven_days_task_old

local seven_days_task_old = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --id-int 
      task_description = 2,    --条件说明-string 
      button_txt = 3,    --按钮文字-string 
    
    },
    -- data
    _data = {
        [1] = {10101,"今日のログインで受領","受領",},
        [2] = {10102,"累計チャージ%d元","受領",},
        [3] = {10103,"総戦力が30万に達する","受領",},
        [4] = {10104,"総戦力が55万に達する","受領",},
        [5] = {10201,"ストーリーの第%d回をクリア","受領",},
        [6] = {10202,"ストーリーの第%d回をクリア","受領",},
        [7] = {10203,"ストーリーの第%d回をクリア","受領",},
        [8] = {10204,"ストーリーの第%d回をクリア","受領",},
        [9] = {10205,"ストーリーの第%d回をクリア","受領",},
        [10] = {10206,"ストーリーの第%d回をクリア","受領",},
        [11] = {10207,"Lv%dになりました","受領",},
        [12] = {10208,"Lv%dになりました","受領",},
        [13] = {10209,"Lv%dになりました","受領",},
        [14] = {10210,"Lv%dになりました","受領",},
        [15] = {10312,"着用中の装備を最大Lv%dまで強化する","受領",},
        [16] = {10313,"着用中の装備を最大Lv%dまで強化する","受領",},
        [17] = {10314,"着用中の装備を最大Lv%dまで強化する","受領",},
        [18] = {10315,"着用中の装備を最大Lv%dまで強化する","受領",},
        [19] = {10316,"着用中の装備を最大Lv%dまで強化する","受領",},
        [20] = {10317,"着用中の装備を最大Lv%dまで強化する","受領",},
        [21] = {10318,"着用中の装備を最大Lv%dまで強化する","受領",},
        [22] = {10319,"着用中の全装備(24件)をLv%dまで強化する","受領",},
        [23] = {10320,"着用中の全装備(24件)をLv%dまで強化する","受領",},
        [24] = {10321,"着用中の全装備(24件)をLv%dまで強化する","受領",},
        [25] = {20101,"今日のログインで受領","受領",},
        [26] = {20102,"累計チャージ%d元","受領",},
        [27] = {20103,"Lv%dになりました","受領",},
        [28] = {20104,"Lv%dになりました","受領",},
        [29] = {20201,"周遊でサイコロを%d回投げる","受領",},
        [30] = {20202,"周遊でサイコロを%d回投げる","受領",},
        [31] = {20203,"周遊でサイコロを%d回投げる","受領",},
        [32] = {20204,"周遊でサイコロを%d回投げる","受領",},
        [33] = {20205,"周遊でサイコロを%d回投げる","受領",},
        [34] = {20206,"周遊でサイコロを%d回投げる","受領",},
        [35] = {20207,"競技場で%d位になる","受領",},
        [36] = {20208,"競技場で%d位になる","受領",},
        [37] = {20209,"競技場で%d位になる","受領",},
        [38] = {20210,"競技場で%d位になる","受領",},
        [39] = {20211,"競技場で%d位になる","受領",},
        [40] = {20212,"競技場で%d位になる","受領",},
        [41] = {20313,"宝物%d点を装備する","受領",},
        [42] = {20314,"宝物%d点を装備する","受領",},
        [43] = {20315,"宝物%d点を装備する","受領",},
        [44] = {20316,"宝物%d点を装備する","受領",},
        [45] = {20317,"宝物%d点を装備する","受領",},
        [46] = {20318,"宝物%d点を装備する","受領",},
        [47] = {20319,"装備中の宝物(12点)をすべてLv%dまで強化する","受領",},
        [48] = {20320,"装備中の宝物(12点)をすべてLv%dまで強化する","受領",},
        [49] = {20321,"装備中の宝物(12点)をすべてLv%dまで強化する","受領",},
        [50] = {20322,"装備中の宝物(12点)をすべてLv%dまで強化する","受領",},
        [51] = {30101,"今日のログインで受領","受領",},
        [52] = {30102,"累計チャージ%d元","受領",},
        [53] = {30103,"Lv%dになりました","受領",},
        [54] = {30104,"Lv%dになりました","受領",},
        [55] = {30201,"過関斬将で第%d関門をクリアする","受領",},
        [56] = {30202,"過関斬将で第%d関門をクリアする","受領",},
        [57] = {30203,"過関斬将で第%d関門をクリアする","受領",},
        [58] = {30204,"過関斬将で第%d関門をクリアする","受領",},
        [59] = {30205,"過関斬将で第%d関門をクリアする","受領",},
        [60] = {30206,"過関斬将で第%d関門をクリアする","受領",},
        [61] = {30207,"過関斬将で第%d関門をクリアする","受領",},
        [62] = {30208,"過関斬将で第%d関門をクリアする","受領",},
        [63] = {30209,"過関斬将で精鋭を%d個クリア","受領",},
        [64] = {30210,"過関斬将で精鋭を%d個クリア","受領",},
        [65] = {30211,"過関斬将で精鋭を%d個クリア","受領",},
        [66] = {30312,"青以上の装備を%d着着用","受領",},
        [67] = {30313,"青以上の装備を%d着着用","受領",},
        [68] = {30314,"青以上の装備を%d着着用","受領",},
        [69] = {30315,"青以上の装備を%d着着用","受領",},
        [70] = {30316,"装着している全ての装備(24点)の精錬がLv%dに達する","受領",},
        [71] = {30317,"装着している全ての装備(24点)の精錬がLv%dに達する","受領",},
        [72] = {30318,"装着している全ての装備(24点)の精錬がLv%dに達する","受領",},
        [73] = {30319,"装着している全ての装備(24点)の精錬がLv%dに達する","受領",},
        [74] = {40101,"今日のログインで受領","受領",},
        [75] = {40102,"累計チャージ%d元","受領",},
        [76] = {40103,"Lv%dになりました","受領",},
        [77] = {40104,"Lv%dになりました","受領",},
        [78] = {40201,"侵入してきた南蛮を%d回撃破する","受領",},
        [79] = {40202,"侵入してきた南蛮を%d回撃破する","受領",},
        [80] = {40203,"侵入してきた南蛮を%d回撃破する","受領",},
        [81] = {40204,"侵入してきた南蛮を%d回撃破する","受領",},
        [82] = {40205,"侵入してきた南蛮を%d回撃破する","受領",},
        [83] = {40206,"侵入してきた南蛮を%d回撃破する","受領",},
        [84] = {40207,"南蛮侵攻を%d回シェア","受領",},
        [85] = {40208,"南蛮侵攻を%d回シェア","受領",},
        [86] = {40209,"南蛮侵攻を%d回シェア","受領",},
        [87] = {40210,"南蛮侵攻を%d回シェア","受領",},
        [88] = {40311,"出陣武将%d名が神器を装備","受領",},
        [89] = {40312,"出陣武将%d名が神器を装備","受領",},
        [90] = {40313,"出陣武将%d名が神器を装備","受領",},
        [91] = {40314,"神器の練磨上限はR%dです。","受領",},
        [92] = {40315,"神器の練磨上限はR%dです。","受領",},
        [93] = {40316,"神器の練磨上限はR%dです。","受領",},
        [94] = {40317,"神器の練磨上限はR%dです。","受領",},
        [95] = {40318,"神器の練磨上限はR%dです。","受領",},
        [96] = {50101,"今日のログインで受領","受領",},
        [97] = {50102,"累計チャージ%d元","受領",},
        [98] = {50103,"Lv%dになりました","受領",},
        [99] = {50104,"Lv%dになりました","受領",},
        [100] = {50201,"武将商店のラインナップを%d回更新","受領",},
        [101] = {50202,"武将商店のラインナップを%d回更新","受領",},
        [102] = {50203,"武将商店のラインナップを%d回更新","受領",},
        [103] = {50204,"武将商店のラインナップを%d回更新","受領",},
        [104] = {50205,"武将商店のラインナップを%d回更新","受領",},
        [105] = {50206,"武将商店で%d回購入する","受領",},
        [106] = {50207,"武将商店で%d回購入する","受領",},
        [107] = {50208,"武将商店で%d回購入する","受領",},
        [108] = {50209,"武将商店で%d回購入する","受領",},
        [109] = {50310,"出陣6人全員がLv%d到達","受領",},
        [110] = {50311,"出陣6人全員がLv%d到達","受領",},
        [111] = {50312,"出陣6人全員がLv%d到達","受領",},
        [112] = {50313,"出陣6人全員がLv%d到達","受領",},
        [113] = {50314,"出陣6人全員が突破+%d","受領",},
        [114] = {50315,"出陣6人全員が突破+%d","受領",},
        [115] = {50316,"出陣6人全員が突破+%d","受領",},
        [116] = {50317,"出陣6人の最高が突破+%d到達","受領",},
        [117] = {50318,"出陣6人の最高が突破+%d到達","受領",},
        [118] = {60101,"今日のログインで受領","受領",},
        [119] = {60102,"累計チャージ%d元","受領",},
        [120] = {60103,"Lv%dになりました","受領",},
        [121] = {60104,"Lv%dになりました","受領",},
        [122] = {60201,"軍団ボスを%d回攻撃","受領",},
        [123] = {60202,"軍団ボスを%d回攻撃","受領",},
        [124] = {60203,"軍団ボスを%d回攻撃","受領",},
        [125] = {60204,"軍団ボスを%d回攻撃","受領",},
        [126] = {60205,"軍団ボスを%d回攻撃","受領",},
        [127] = {60206,"軍団ボスを%d回攻撃","受領",},
        [128] = {60207,"軍団オークションで%d個のアイテムを購入","受領",},
        [129] = {60208,"軍団オークションで%d個のアイテムを購入","受領",},
        [130] = {60209,"軍団オークションで%d個のアイテムを購入","受領",},
        [131] = {60210,"軍団オークションで%d個のアイテムを購入","受領",},
        [132] = {60211,"軍団オークションで%d個のアイテムを購入","受領",},
        [133] = {60312,"装備中の宝物を最大Lv%dまで精錬する","受領",},
        [134] = {60313,"装備中の宝物を最大Lv%dまで精錬する","受領",},
        [135] = {60314,"装備中の宝物を最大Lv%dまで精錬する","受領",},
        [136] = {60315,"装備中の宝物を最大Lv%dまで精錬する","受領",},
        [137] = {60316,"装備中の宝物(12点)をすべてLv%dまで精錬する","受領",},
        [138] = {60317,"装備中の宝物(12点)をすべてLv%dまで精錬する","受領",},
        [139] = {70101,"今日のログインで受領","受領",},
        [140] = {70102,"累計チャージ%d元","受領",},
        [141] = {70103,"Lv%dになりました","受領",},
        [142] = {70104,"Lv%dになりました","受領",},
        [143] = {70201,"総戦力が210万に達する","受領",},
        [144] = {70202,"総戦力が280万に達する","受領",},
        [145] = {70203,"総戦力が360万に達する","受領",},
        [146] = {70204,"総戦力が450万到達","受領",},
        [147] = {70205,"総戦力が560万に達する","受領",},
        [148] = {70306,"出陣武将の名将録を%d項開放","受領",},
        [149] = {70307,"出陣武将の名将録を%d項開放","受領",},
        [150] = {70308,"出陣武将の名将録を%d項開放","受領",},
        [151] = {70309,"出陣武将の名将録を%d項開放","受領",},
        [152] = {70310,"出陣武将の名将録を%d項開放","受領",},
    },

    -- index
    __index_id = {
        [10101] = 1,
        [10102] = 2,
        [10103] = 3,
        [10104] = 4,
        [10201] = 5,
        [10202] = 6,
        [10203] = 7,
        [10204] = 8,
        [10205] = 9,
        [10206] = 10,
        [10207] = 11,
        [10208] = 12,
        [10209] = 13,
        [10210] = 14,
        [10312] = 15,
        [10313] = 16,
        [10314] = 17,
        [10315] = 18,
        [10316] = 19,
        [10317] = 20,
        [10318] = 21,
        [10319] = 22,
        [10320] = 23,
        [10321] = 24,
        [20101] = 25,
        [20102] = 26,
        [20103] = 27,
        [20104] = 28,
        [20201] = 29,
        [20202] = 30,
        [20203] = 31,
        [20204] = 32,
        [20205] = 33,
        [20206] = 34,
        [20207] = 35,
        [20208] = 36,
        [20209] = 37,
        [20210] = 38,
        [20211] = 39,
        [20212] = 40,
        [20313] = 41,
        [20314] = 42,
        [20315] = 43,
        [20316] = 44,
        [20317] = 45,
        [20318] = 46,
        [20319] = 47,
        [20320] = 48,
        [20321] = 49,
        [20322] = 50,
        [30101] = 51,
        [30102] = 52,
        [30103] = 53,
        [30104] = 54,
        [30201] = 55,
        [30202] = 56,
        [30203] = 57,
        [30204] = 58,
        [30205] = 59,
        [30206] = 60,
        [30207] = 61,
        [30208] = 62,
        [30209] = 63,
        [30210] = 64,
        [30211] = 65,
        [30312] = 66,
        [30313] = 67,
        [30314] = 68,
        [30315] = 69,
        [30316] = 70,
        [30317] = 71,
        [30318] = 72,
        [30319] = 73,
        [40101] = 74,
        [40102] = 75,
        [40103] = 76,
        [40104] = 77,
        [40201] = 78,
        [40202] = 79,
        [40203] = 80,
        [40204] = 81,
        [40205] = 82,
        [40206] = 83,
        [40207] = 84,
        [40208] = 85,
        [40209] = 86,
        [40210] = 87,
        [40311] = 88,
        [40312] = 89,
        [40313] = 90,
        [40314] = 91,
        [40315] = 92,
        [40316] = 93,
        [40317] = 94,
        [40318] = 95,
        [50101] = 96,
        [50102] = 97,
        [50103] = 98,
        [50104] = 99,
        [50201] = 100,
        [50202] = 101,
        [50203] = 102,
        [50204] = 103,
        [50205] = 104,
        [50206] = 105,
        [50207] = 106,
        [50208] = 107,
        [50209] = 108,
        [50310] = 109,
        [50311] = 110,
        [50312] = 111,
        [50313] = 112,
        [50314] = 113,
        [50315] = 114,
        [50316] = 115,
        [50317] = 116,
        [50318] = 117,
        [60101] = 118,
        [60102] = 119,
        [60103] = 120,
        [60104] = 121,
        [60201] = 122,
        [60202] = 123,
        [60203] = 124,
        [60204] = 125,
        [60205] = 126,
        [60206] = 127,
        [60207] = 128,
        [60208] = 129,
        [60209] = 130,
        [60210] = 131,
        [60211] = 132,
        [60312] = 133,
        [60313] = 134,
        [60314] = 135,
        [60315] = 136,
        [60316] = 137,
        [60317] = 138,
        [70101] = 139,
        [70102] = 140,
        [70103] = 141,
        [70104] = 142,
        [70201] = 143,
        [70202] = 144,
        [70203] = 145,
        [70204] = 146,
        [70205] = 147,
        [70306] = 148,
        [70307] = 149,
        [70308] = 150,
        [70309] = 151,
        [70310] = 152,
    }
}

return seven_days_task_old