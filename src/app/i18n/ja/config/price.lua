--price

local price = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --价格组id-int 
      Excluded = 2,    --功能-string 
    
    },
    -- data
    _data = {
        [1] = {1,"商店で行動力丹を購入",},
        [2] = {1,"商店で行動力丹を購入",},
        [3] = {1,"商店で行動力丹を購入",},
        [4] = {1,"商店で行動力丹を購入",},
        [5] = {1,"商店で行動力丹を購入",},
        [6] = {1,"商店で行動力丹を購入",},
        [7] = {1,"商店で行動力丹を購入",},
        [8] = {1,"商店で行動力丹を購入",},
        [9] = {1,"商店で行動力丹を購入",},
        [10] = {1,"商店で行動力丹を購入",},
        [11] = {1,"商店で行動力丹を購入",},
        [12] = {1,"商店で行動力丹を購入",},
        [13] = {1,"商店で行動力丹を購入",},
        [14] = {1,"商店で行動力丹を購入",},
        [15] = {1,"商店で行動力丹を購入",},
        [16] = {1,"商店で行動力丹を購入",},
        [17] = {1,"商店で行動力丹を購入",},
        [18] = {1,"商店で行動力丹を購入",},
        [19] = {1,"商店で行動力丹を購入",},
        [20] = {1,"商店で行動力丹を購入",},
        [21] = {1,"商店で行動力丹を購入",},
        [22] = {1,"商店で行動力丹を購入",},
        [23] = {1,"商店で行動力丹を購入",},
        [24] = {1,"商店で行動力丹を購入",},
        [25] = {2,"商店で気力丹を購入",},
        [26] = {2,"商店で気力丹を購入",},
        [27] = {2,"商店で気力丹を購入",},
        [28] = {2,"商店で気力丹を購入",},
        [29] = {2,"商店で気力丹を購入",},
        [30] = {2,"商店で気力丹を購入",},
        [31] = {2,"商店で気力丹を購入",},
        [32] = {2,"商店で気力丹を購入",},
        [33] = {2,"商店で気力丹を購入",},
        [34] = {2,"商店で気力丹を購入",},
        [35] = {2,"商店で気力丹を購入",},
        [36] = {2,"商店で気力丹を購入",},
        [37] = {2,"商店で気力丹を購入",},
        [38] = {2,"商店で気力丹を購入",},
        [39] = {2,"商店で気力丹を購入",},
        [40] = {2,"商店で気力丹を購入",},
        [41] = {2,"商店で気力丹を購入",},
        [42] = {2,"商店で気力丹を購入",},
        [43] = {2,"商店で気力丹を購入",},
        [44] = {2,"商店で気力丹を購入",},
        [45] = {2,"商店で気力丹を購入",},
        [46] = {2,"商店で気力丹を購入",},
        [47] = {2,"商店で気力丹を購入",},
        [48] = {2,"商店で気力丹を購入",},
        [49] = {100,"ストーリークエストリセット",},
        [50] = {100,"ストーリークエストリセット",},
        [51] = {100,"ストーリークエストリセット",},
        [52] = {100,"ストーリークエストリセット",},
        [53] = {100,"ストーリークエストリセット",},
        [54] = {100,"ストーリークエストリセット",},
        [55] = {10001,"競技場で挑戦回数を購入する",},
        [56] = {10001,"競技場で挑戦回数を購入する",},
        [57] = {10001,"競技場で挑戦回数を購入する",},
        [58] = {10001,"競技場で挑戦回数を購入する",},
        [59] = {10001,"競技場で挑戦回数を購入する",},
        [60] = {10001,"競技場で挑戦回数を購入する",},
        [61] = {10001,"競技場で挑戦回数を購入する",},
        [62] = {10001,"競技場で挑戦回数を購入する",},
        [63] = {10001,"競技場で挑戦回数を購入する",},
        [64] = {10001,"競技場で挑戦回数を購入する",},
        [65] = {10001,"競技場で挑戦回数を購入する",},
        [66] = {10001,"競技場で挑戦回数を購入する",},
        [67] = {10001,"競技場で挑戦回数を購入する",},
        [68] = {10001,"競技場で挑戦回数を購入する",},
        [69] = {10001,"競技場で挑戦回数を購入する",},
        [70] = {10001,"競技場で挑戦回数を購入する",},
        [71] = {10001,"競技場で挑戦回数を購入する",},
        [72] = {10001,"競技場で挑戦回数を購入する",},
        [73] = {10001,"競技場で挑戦回数を購入する",},
        [74] = {10001,"競技場で挑戦回数を購入する",},
        [75] = {10002,"軍団有償支援回数",},
        [76] = {10002,"軍団有償支援回数",},
        [77] = {10002,"軍団有償支援回数",},
        [78] = {10002,"軍団有償支援回数",},
        [79] = {10002,"軍団有償支援回数",},
        [80] = {10002,"軍団有償支援回数",},
        [81] = {10002,"軍団有償支援回数",},
        [82] = {10002,"軍団有償支援回数",},
        [83] = {10002,"軍団有償支援回数",},
        [84] = {10002,"軍団有償支援回数",},
        [85] = {10002,"軍団有償支援回数",},
        [86] = {10002,"軍団有償支援回数",},
        [87] = {10002,"軍団有償支援回数",},
        [88] = {10002,"軍団有償支援回数",},
        [89] = {10002,"軍団有償支援回数",},
        [90] = {10002,"軍団有償支援回数",},
        [91] = {10002,"軍団有償支援回数",},
        [92] = {10002,"軍団有償支援回数",},
        [93] = {10002,"軍団有償支援回数",},
        [94] = {10002,"軍団有償支援回数",},
        [95] = {3,"商店で南蛮令を購入",},
        [96] = {3,"商店で南蛮令を購入",},
        [97] = {3,"商店で南蛮令を購入",},
        [98] = {3,"商店で南蛮令を購入",},
        [99] = {3,"商店で南蛮令を購入",},
        [100] = {3,"商店で南蛮令を購入",},
        [101] = {3,"商店で南蛮令を購入",},
        [102] = {3,"商店で南蛮令を購入",},
        [103] = {3,"商店で南蛮令を購入",},
        [104] = {3,"商店で南蛮令を購入",},
        [105] = {3,"商店で南蛮令を購入",},
        [106] = {3,"商店で南蛮令を購入",},
        [107] = {3,"商店で南蛮令を購入",},
        [108] = {3,"商店で南蛮令を購入",},
        [109] = {3,"商店で南蛮令を購入",},
        [110] = {3,"商店で南蛮令を購入",},
        [111] = {3,"商店で南蛮令を購入",},
        [112] = {3,"商店で南蛮令を購入",},
        [113] = {3,"商店で南蛮令を購入",},
        [114] = {3,"商店で南蛮令を購入",},
        [115] = {3,"商店で南蛮令を購入",},
        [116] = {3,"商店で南蛮令を購入",},
        [117] = {3,"商店で南蛮令を購入",},
        [118] = {3,"商店で南蛮令を購入",},
        [119] = {3,"商店で南蛮令を購入",},
        [120] = {3,"商店で南蛮令を購入",},
        [121] = {3,"商店で南蛮令を購入",},
        [122] = {3,"商店で南蛮令を購入",},
        [123] = {3,"商店で南蛮令を購入",},
        [124] = {3,"商店で南蛮令を購入",},
        [125] = {3,"商店で南蛮令を購入",},
        [126] = {3,"商店で南蛮令を購入",},
        [127] = {3,"商店で南蛮令を購入",},
        [128] = {3,"商店で南蛮令を購入",},
        [129] = {3,"商店で南蛮令を購入",},
        [130] = {3,"商店で南蛮令を購入",},
        [131] = {3,"商店で南蛮令を購入",},
        [132] = {3,"商店で南蛮令を購入",},
        [133] = {3,"商店で南蛮令を購入",},
        [134] = {3,"商店で南蛮令を購入",},
        [135] = {4,"商店で兵糧令を購入",},
        [136] = {4,"商店で兵糧令を購入",},
        [137] = {4,"商店で兵糧令を購入",},
        [138] = {4,"商店で兵糧令を購入",},
        [139] = {4,"商店で兵糧令を購入",},
        [140] = {4,"商店で兵糧令を購入",},
        [141] = {4,"商店で兵糧令を購入",},
        [142] = {4,"商店で兵糧令を購入",},
        [143] = {4,"商店で兵糧令を購入",},
        [144] = {4,"商店で兵糧令を購入",},
        [145] = {4,"商店で兵糧令を購入",},
        [146] = {4,"商店で兵糧令を購入",},
        [147] = {4,"商店で兵糧令を購入",},
        [148] = {4,"商店で兵糧令を購入",},
        [149] = {4,"商店で兵糧令を購入",},
        [150] = {4,"商店で兵糧令を購入",},
        [151] = {4,"商店で兵糧令を購入",},
        [152] = {4,"商店で兵糧令を購入",},
        [153] = {4,"商店で兵糧令を購入",},
        [154] = {4,"商店で兵糧令を購入",},
        [155] = {4,"商店で兵糧令を購入",},
        [156] = {4,"商店で兵糧令を購入",},
        [157] = {4,"商店で兵糧令を購入",},
        [158] = {4,"商店で兵糧令を購入",},
        [159] = {10003,"武将(金)登用",},
        [160] = {10003,"武将(金)登用",},
        [161] = {10003,"武将(金)登用",},
        [162] = {10003,"武将(金)登用",},
        [163] = {10003,"武将(金)登用",},
    },

    -- index
    __index_id_time = {
        ["10001_1"] = 55,
        ["10001_10"] = 64,
        ["10001_11"] = 65,
        ["10001_12"] = 66,
        ["10001_13"] = 67,
        ["10001_14"] = 68,
        ["10001_15"] = 69,
        ["10001_16"] = 70,
        ["10001_17"] = 71,
        ["10001_18"] = 72,
        ["10001_19"] = 73,
        ["10001_2"] = 56,
        ["10001_20"] = 74,
        ["10001_3"] = 57,
        ["10001_4"] = 58,
        ["10001_5"] = 59,
        ["10001_6"] = 60,
        ["10001_7"] = 61,
        ["10001_8"] = 62,
        ["10001_9"] = 63,
        ["10002_1"] = 75,
        ["10002_10"] = 84,
        ["10002_11"] = 85,
        ["10002_12"] = 86,
        ["10002_13"] = 87,
        ["10002_14"] = 88,
        ["10002_15"] = 89,
        ["10002_16"] = 90,
        ["10002_17"] = 91,
        ["10002_18"] = 92,
        ["10002_19"] = 93,
        ["10002_2"] = 76,
        ["10002_20"] = 94,
        ["10002_3"] = 77,
        ["10002_4"] = 78,
        ["10002_5"] = 79,
        ["10002_6"] = 80,
        ["10002_7"] = 81,
        ["10002_8"] = 82,
        ["10002_9"] = 83,
        ["10003_1"] = 159,
        ["10003_2"] = 160,
        ["10003_3"] = 161,
        ["10003_4"] = 162,
        ["10003_5"] = 163,
        ["100_1"] = 49,
        ["100_2"] = 50,
        ["100_3"] = 51,
        ["100_4"] = 52,
        ["100_5"] = 53,
        ["100_6"] = 54,
        ["1_1"] = 1,
        ["1_10"] = 10,
        ["1_11"] = 11,
        ["1_12"] = 12,
        ["1_13"] = 13,
        ["1_14"] = 14,
        ["1_15"] = 15,
        ["1_16"] = 16,
        ["1_17"] = 17,
        ["1_18"] = 18,
        ["1_19"] = 19,
        ["1_2"] = 2,
        ["1_20"] = 20,
        ["1_21"] = 21,
        ["1_22"] = 22,
        ["1_23"] = 23,
        ["1_24"] = 24,
        ["1_3"] = 3,
        ["1_4"] = 4,
        ["1_5"] = 5,
        ["1_6"] = 6,
        ["1_7"] = 7,
        ["1_8"] = 8,
        ["1_9"] = 9,
        ["2_1"] = 25,
        ["2_10"] = 34,
        ["2_11"] = 35,
        ["2_12"] = 36,
        ["2_13"] = 37,
        ["2_14"] = 38,
        ["2_15"] = 39,
        ["2_16"] = 40,
        ["2_17"] = 41,
        ["2_18"] = 42,
        ["2_19"] = 43,
        ["2_2"] = 26,
        ["2_20"] = 44,
        ["2_21"] = 45,
        ["2_22"] = 46,
        ["2_23"] = 47,
        ["2_24"] = 48,
        ["2_3"] = 27,
        ["2_4"] = 28,
        ["2_5"] = 29,
        ["2_6"] = 30,
        ["2_7"] = 31,
        ["2_8"] = 32,
        ["2_9"] = 33,
        ["3_1"] = 95,
        ["3_10"] = 104,
        ["3_11"] = 105,
        ["3_12"] = 106,
        ["3_13"] = 107,
        ["3_14"] = 108,
        ["3_15"] = 109,
        ["3_16"] = 110,
        ["3_17"] = 111,
        ["3_18"] = 112,
        ["3_19"] = 113,
        ["3_2"] = 96,
        ["3_20"] = 114,
        ["3_21"] = 115,
        ["3_22"] = 116,
        ["3_23"] = 117,
        ["3_24"] = 118,
        ["3_25"] = 119,
        ["3_26"] = 120,
        ["3_27"] = 121,
        ["3_28"] = 122,
        ["3_29"] = 123,
        ["3_3"] = 97,
        ["3_30"] = 124,
        ["3_31"] = 125,
        ["3_32"] = 126,
        ["3_33"] = 127,
        ["3_34"] = 128,
        ["3_35"] = 129,
        ["3_36"] = 130,
        ["3_37"] = 131,
        ["3_38"] = 132,
        ["3_39"] = 133,
        ["3_4"] = 98,
        ["3_40"] = 134,
        ["3_5"] = 99,
        ["3_6"] = 100,
        ["3_7"] = 101,
        ["3_8"] = 102,
        ["3_9"] = 103,
        ["4_1"] = 135,
        ["4_10"] = 144,
        ["4_11"] = 145,
        ["4_12"] = 146,
        ["4_13"] = 147,
        ["4_14"] = 148,
        ["4_15"] = 149,
        ["4_16"] = 150,
        ["4_17"] = 151,
        ["4_18"] = 152,
        ["4_19"] = 153,
        ["4_2"] = 136,
        ["4_20"] = 154,
        ["4_21"] = 155,
        ["4_22"] = 156,
        ["4_23"] = 157,
        ["4_24"] = 158,
        ["4_3"] = 137,
        ["4_4"] = 138,
        ["4_5"] = 139,
        ["4_6"] = 140,
        ["4_7"] = 141,
        ["4_8"] = 142,
        ["4_9"] = 143,
    }
}

return price