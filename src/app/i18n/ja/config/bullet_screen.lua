--bullet_screen

local bullet_screen = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --id-int 
      text = 2,    --文本-string 
    
    },
    -- data
    _data = {
        [1] = {1,"[#name#]が#number#ptのダメージを出しました！",},
        [2] = {2,"[#name#]はボスに#number#ダメージを与えました！",},
        [3] = {3,"[#name#]がボスに挑戦し、ダメージ#number#ptを与えました！",},
        [4] = {4,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [5] = {5,"[#name#]はボスを踏みつけ、ダメージ#number#ptを与えました！",},
        [6] = {6,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [7] = {7,"[#name#]が#number#ptのダメージを出しました！",},
        [8] = {8,"[#name#]が#number#ptのダメージを出しました！",},
        [9] = {9,"[#name#]はボスに#number#ダメージを与えました！",},
        [10] = {10,"[#name#]はボスに#number#ダメージを与えました！",},
        [11] = {11,"[#name#]が全力の一撃でボスの足元を払い、ダメージ#number#ptを与えました！",},
        [12] = {12,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [13] = {13,"[#name#]が#number#ダメージを与えました！もの凄い威力です",},
        [14] = {14,"[#name#]は混乱中にボスのお尻をキック。#number#ptのダメージを与えた！",},
        [15] = {15,"[#name#]は力を溜めた一撃で、ボスに#number#ptのダメージを与えました！",},
        [16] = {16,"[#name#]は一撃で#number#ptのダメージを与えた！ボスは蚊に刺されたのかと思った。",},
        [17] = {17,"[#name#]が#number#ptのダメージを叩き出しました！ボスはちょっとショックを受けました！",},
        [18] = {18,"[#name#]がボスを思い切り蹴って、リアルダメージ#number#ptを与えました！",},
        [19] = {19,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [20] = {20,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [21] = {21,"[#name#]は渾身の力でボスに#number#ptの致命的ダメージを与えた！この記録を超えてみせろ！",},
        [22] = {22,"[#name#]の轟雷の一撃がボスの肛門を直撃！#number#ptの爆発的ダメージを与えました！",},
        [23] = {23,"[#name#]が虚を突いて背後からボスを奇襲し、#number#ptのダメージを与えました！",},
        [24] = {24,"[#name#]が連続技を繰り出し、ボスにダメージ#number#ptを与えました！",},
        [25] = {25,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [26] = {26,"[#name#]がボスに追い打ちをかけ、#number#ダメージを与えました！",},
        [27] = {27,"[#name#]はボスに#number#ptの最終ダメージを与えました！爆発的火力ですね！",},
        [28] = {28,"[#name#]は長らくチャージしていましが、武器を取り出しボスに会心ダメージ#number#ptを与えました！",},
        [29] = {29,"[#name#]が一気に攻め、ボスに#number#ptの高ダメージを与えました！",},
        [30] = {30,"[#name#]がダメージ#number#ptを与えました！群雄を圧倒！誰も太刀打ちできません！",},
        [31] = {31,"[#name#]が#number#ptのダメージを出しました！",},
        [32] = {32,"[#name#]はボスに#number#ダメージを与えました！",},
        [33] = {33,"[#name#]がボスに挑戦し、ダメージ#number#ptを与えました！",},
        [34] = {34,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [35] = {35,"[#name#]はボスを踏みつけ、ダメージ#number#ptを与えました！",},
        [36] = {36,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [37] = {37,"[#name#]が#number#ptのダメージを出しました！",},
        [38] = {38,"[#name#]が#number#ptのダメージを出しました！",},
        [39] = {39,"[#name#]はボスに#number#ダメージを与えました！",},
        [40] = {40,"[#name#]はボスに#number#ダメージを与えました！",},
        [41] = {41,"[#name#]が全力の一撃でボスの足元を払い、ダメージ#number#ptを与えました！",},
        [42] = {42,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [43] = {43,"[#name#]が#number#ダメージを与えました！もの凄い威力です",},
        [44] = {44,"[#name#]は混乱中にボスのお尻をキック。#number#ptのダメージを与えた！",},
        [45] = {45,"[#name#]は力を溜めた一撃で、ボスに#number#ptのダメージを与えました！",},
        [46] = {46,"[#name#]は一撃で#number#ptのダメージを与えた！ボスは蚊に刺されたのかと思った。",},
        [47] = {47,"[#name#]が#number#ptのダメージを叩き出しました！ボスはちょっとショックを受けました！",},
        [48] = {48,"[#name#]がボスを思い切り蹴って、リアルダメージ#number#ptを与えました！",},
        [49] = {49,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [50] = {50,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [51] = {51,"[#name#]は渾身の力でボスに#number#ptの致命的ダメージを与えた！この記録を超えてみせろ！",},
        [52] = {52,"[#name#]の轟雷の一撃がボスの肛門を直撃！#number#ptの爆発的ダメージを与えました！",},
        [53] = {53,"[#name#]が虚を突いて背後からボスを奇襲し、#number#ptのダメージを与えました！",},
        [54] = {54,"[#name#]が連続技を繰り出し、ボスにダメージ#number#ptを与えました！",},
        [55] = {55,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [56] = {56,"[#name#]がボスに追い打ちをかけ、#number#ダメージを与えました！",},
        [57] = {57,"[#name#]はボスに#number#ptの最終ダメージを与えました！爆発的火力ですね！",},
        [58] = {58,"[#name#]は長らくチャージしていましが、武器を取り出しボスに会心ダメージ#number#ptを与えました！",},
        [59] = {59,"[#name#]が一気に攻め、ボスに#number#ptの高ダメージを与えました！",},
        [60] = {60,"[#name#]がダメージ#number#ptを与えました！群雄を圧倒！誰も太刀打ちできません！",},
        [61] = {101,"初の犠牲者！[#guild1#]の[#player1#]が本戦場で初撃破を遂げました！",},
        [62] = {102,"[#guild1#]の[#player1#]が[#guild2#]の[#player2#]を撃破しました。",},
        [63] = {103,"2キル！[#guild1#]の[#player1#]が[#guild2#]の[#player2#]を撃破しました。殺戮が展開されています！",},
        [64] = {104,"三重殺！[#guild1#]の[#player1#]が[#guild2#]の[#player2#]を撃破、もう誰にも止められません！",},
        [65] = {105,"4キル！[#guild1#]の[#player1#]が[#guild2#]の[#player2#]を撃破しました。戦神が憑依しているかのようです！",},
        [66] = {106,"5キル！[#guild1#]の[#player1#]が[#guild2#]の[#player2#]を撃破しました。神を超越した殺戮です！",},
        [67] = {107,"暴走発生！[#guild#]の[#player#]が20回撃破を達成し、暴走中です。誰か彼を阻止してください！",},
        [68] = {108,"[#guild#]軍団の#player#が[#city#]の城門を突破しました！",},
        [69] = {109,"[#guild#]軍団が見事[#city#]の龍柱支配権を奪取しました！",},
        [70] = {201,"#server##name#が#goods#を獲得しました！",},
        [71] = {202,"天地に来たる時間はみな同じ！#server##name#が#goods#を獲得しました！",},
        [72] = {203,"#server##name#が#goods#を獲得しました！",},
        [73] = {204,"#server##name#が#goods#を獲得しました！",},
        [74] = {205,"#server##name#が#goods#を獲得しました！",},
        [75] = {206,"#server##name#が#goods#を獲得しました！",},
        [76] = {301,"#server1##name1#が#server2##name2#を撃破しました！",},
        [77] = {302,"#server##guild#が#position#を占領し、軍団ポイントを獲得し続けています！",},
        [78] = {303,"#server1##guild1#は#server2##guild2#から#position#を奪取し、引き続き軍団ポイントを獲得しました!",},
        [79] = {304,"#server##guild#はメンバー全員が勇敢に戦って守衛を撃破し、大量の軍団ポイントを獲得しました！",},
        [80] = {401,"#guild#軍団の#player#がさきほど本軍団の#graincar#を攻撃しました！",},
        [81] = {402,"#player#が今、所属軍団の#graincar#を攻撃しました！",},
        [82] = {501,"[#name#]が#number#ptのダメージを出しました！",},
        [83] = {502,"[#name#]はボスに#number#ダメージを与えました！",},
        [84] = {503,"[#name#]がボスに挑戦し、ダメージ#number#ptを与えました！",},
        [85] = {504,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [86] = {505,"[#name#]はボスを踏みつけ、ダメージ#number#ptを与えました！",},
        [87] = {506,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [88] = {507,"[#name#]が#number#ptのダメージを出しました！",},
        [89] = {508,"[#name#]が#number#ptのダメージを出しました！",},
        [90] = {509,"[#name#]はボスに#number#ダメージを与えました！",},
        [91] = {510,"[#name#]はボスに#number#ダメージを与えました！",},
        [92] = {511,"[#name#]が全力の一撃でボスの足元を払い、ダメージ#number#ptを与えました！",},
        [93] = {512,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [94] = {513,"[#name#]が#number#ダメージを与えました！もの凄い威力です",},
        [95] = {514,"[#name#]は混乱中にボスのお尻をキック。#number#ptのダメージを与えた！",},
        [96] = {515,"[#name#]は力を溜めた一撃で、ボスに#number#ptのダメージを与えました！",},
        [97] = {516,"[#name#]は一撃で#number#ptのダメージを与えた！ボスは蚊に刺されたのかと思った。",},
        [98] = {517,"[#name#]が#number#ptのダメージを叩き出しました！ボスはちょっとショックを受けました！",},
        [99] = {518,"[#name#]がボスを思い切り蹴って、リアルダメージ#number#ptを与えました！",},
        [100] = {519,"[#name#]が乱戦中にボスを急襲し、#number#ptのダメージを与えました！",},
        [101] = {520,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [102] = {521,"[#name#]は渾身の力でボスに#number#ptの致命的ダメージを与えた！この記録を超えてみせろ！",},
        [103] = {522,"[#name#]の轟雷の一撃がボスの肛門を直撃！#number#ptの爆発的ダメージを与えました！",},
        [104] = {523,"[#name#]が虚を突いて背後からボスを奇襲し、#number#ptのダメージを与えました！",},
        [105] = {524,"[#name#]が連続技を繰り出し、ボスにダメージ#number#ptを与えました！",},
        [106] = {525,"[#name#]がダメージ#number#ptを与えた！これを超える者はいないのか！",},
        [107] = {526,"[#name#]がボスに追い打ちをかけ、#number#ダメージを与えました！",},
        [108] = {527,"[#name#]はボスに#number#ptの最終ダメージを与えました！爆発的火力ですね！",},
        [109] = {528,"[#name#]は長らくチャージしていましが、武器を取り出しボスに会心ダメージ#number#ptを与えました！",},
        [110] = {529,"[#name#]が一気に攻め、ボスに#number#ptの高ダメージを与えました！",},
        [111] = {530,"[#name#]がダメージ#number#ptを与えました！群雄を圧倒！誰も太刀打ちできません！",},
        [112] = {601,"[#name#]は寝ぼけてボスのシールドにぶつかってしまいました。",},
        [113] = {602,"[#name#]が連撃を出し、シールドに#number#ダメージを与えた！",},
        [114] = {603,"#server#の#guild#軍団が粉砕失敗。ボスに#point#ptを奪われました！",},
        [115] = {604,"#server#の#guild#軍団は一致団結し、ボスのチャージ状態を中断しました！",},
        [116] = {701,"おめでとうございます！#server##name#が#rank#にランクアップしました！",},
        [117] = {702,"#server##name#が#rank#にランクアップしました！",},
        [118] = {703,"#server##name#が#rank#ランクアップしました。",},
        [119] = {704,"#server##name#が#rank#にランクアップしました！",},
        [120] = {705,"#server##name#が#rank#にランクアップしました！",},
        [121] = {706,"#server##name#は#rank#にランクアップしました！",},
        [122] = {707,"#server##name#は優勝の座につき、文武両道、天下無双である。",},
    },

    -- index
    __index_id = {
        [1] = 1,
        [10] = 10,
        [101] = 61,
        [102] = 62,
        [103] = 63,
        [104] = 64,
        [105] = 65,
        [106] = 66,
        [107] = 67,
        [108] = 68,
        [109] = 69,
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
        [201] = 70,
        [202] = 71,
        [203] = 72,
        [204] = 73,
        [205] = 74,
        [206] = 75,
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
        [301] = 76,
        [302] = 77,
        [303] = 78,
        [304] = 79,
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
        [401] = 80,
        [402] = 81,
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
        [501] = 82,
        [502] = 83,
        [503] = 84,
        [504] = 85,
        [505] = 86,
        [506] = 87,
        [507] = 88,
        [508] = 89,
        [509] = 90,
        [51] = 51,
        [510] = 91,
        [511] = 92,
        [512] = 93,
        [513] = 94,
        [514] = 95,
        [515] = 96,
        [516] = 97,
        [517] = 98,
        [518] = 99,
        [519] = 100,
        [52] = 52,
        [520] = 101,
        [521] = 102,
        [522] = 103,
        [523] = 104,
        [524] = 105,
        [525] = 106,
        [526] = 107,
        [527] = 108,
        [528] = 109,
        [529] = 110,
        [53] = 53,
        [530] = 111,
        [54] = 54,
        [55] = 55,
        [56] = 56,
        [57] = 57,
        [58] = 58,
        [59] = 59,
        [6] = 6,
        [60] = 60,
        [601] = 112,
        [602] = 113,
        [603] = 114,
        [604] = 115,
        [7] = 7,
        [701] = 116,
        [702] = 117,
        [703] = 118,
        [704] = 119,
        [705] = 120,
        [706] = 121,
        [707] = 122,
        [8] = 8,
        [9] = 9,
    }
}

return bullet_screen