--title

local title = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --序号-int 
      name = 2,    --名称-string 
      description = 3,    --详情描述-string 
      des = 4,    --条件描述-string 
    
    },
    -- data
    _data = {
        [1] = {1,"応援","累計ログイン99日達成","累計ログイン99日達成",},
        [2] = {2,"もう一回！","華容道の予想を99回的中させる","華容道の予想を99回的中させる",},
        [3] = {3,"ゴッドハンド","黄金の宝箱から装備(赤)を獲得する","黄金の宝箱から装備(赤)を獲得する",},
        [4] = {4,"神獣だ！","八星占いイベントで神獣(ｵﾚﾝｼﾞ)を引き当てる","八星占いイベントで神獣(ｵﾚﾝｼﾞ)を引き当てる",},
        [5] = {5,"赤装備だ！","曹操追撃イベントで装備(赤)を引き当てる","曹操追撃イベントで装備(赤)を引き当てる",},
        [6] = {6,"刺激的?","名将七変化で変身の羽(ｵﾚﾝｼﾞ)を引き当てる","名将七変化で変身の羽(ｵﾚﾝｼﾞ)を引き当てる",},
        [7] = {7,"天下一！","毎日の競技場ランキング集計時に1位になる","毎日の競技場ランキング集計時に1位になる",},
        [8] = {8,"多士済々","全武将を獲得する(ｵﾚﾝｼﾞから赤に、赤から金にランクアップした武将は含まない)","全武将を獲得する(ｵﾚﾝｼﾞから赤に、赤から金にランクアップした武将は含まない)",},
        [9] = {9,"十大戦力","毎日の戦力ランキング集計時にトップ10にランクインする","毎日の戦力ランキング集計時にトップ10にランクインする",},
        [10] = {10,"大悟徹底","鉱山戦で999回撃破される","鉱山戦で999回撃破される",},
        [11] = {11,"魏国覇主","陣営競技で魏の1位になる","陣営競技で魏の1位になる",},
        [12] = {12,"蜀国覇主","陣営競技で蜀の1位になる","陣営競技で蜀の1位になる",},
        [13] = {13,"呉国覇主","陣営競技で呉の1位になる","陣営競技で呉の1位になる",},
        [14] = {14,"群雄覇主","陣営競技の群雄の1位になる","陣営競技の群雄の1位になる",},
        [15] = {15,"選ばれし者","名将七変化で変身の羽(赤)を引き当てる","名将七変化で変身の羽(赤)を引き当てる",},
        [16] = {16,"コレクター","全ての変身カード(ｵﾚﾝｼﾞ)を獲得する","全ての変身カード(ｵﾚﾝｼﾞ)を獲得する",},
        [17] = {17,"ベスト4","毎週木曜日のクロスサーバー決闘大会でベスト4に入賞","毎週木曜日のクロスサーバー決闘大会でベスト4に入賞",},
        [18] = {18,"千人斬り","鉱山戦で累計999プレイヤーを撃破","鉱山戦で累計999プレイヤーを撃破",},
        [19] = {19,"一人の下","王者の戦いのシーズンランキングで2～10位にランクイン","王者の戦いのシーズンランキングで2～10位にランクイン",},
        [20] = {20,"天下無双","毎週木曜日のクロスサーバー決闘大会で優勝","毎週木曜日のクロスサーバー決闘大会で優勝",},
        [21] = {21,"王者","王者の戦いのシーズン集計時にランキング1位になる","王者の戦いのシーズン集計時にランキング1位になる",},
        [22] = {22,"ビッグコレクター","全ての変身カード(赤)を獲得する","全ての変身カード(赤)を獲得する",},
        [23] = {23,"初心者インストラクター","ゲーム公式初心者インストラクターになる","ゲーム公式初心者インストラクターになる",},
        [24] = {24,"竜の子","『卓遊志』100期記念の専用限定称号。","『卓遊志』100期記念の専用限定称号。",},
        [25] = {25,"覇者","1周年記念イベント専用限定称号","1周年記念イベント専用限定称号",},
        [26] = {26,"名士","1周年記念イベント専用限定称号","1周年記念イベント専用限定称号",},
        [27] = {27,"英傑","1周年記念イベント専用限定称号","1周年記念イベント専用限定称号",},
        [28] = {28,"風の子","真龍降臨イベント限定称号","真龍降臨イベント限定称号",},
        [29] = {29,"龍の子","真龍降臨イベント限定称号","真龍降臨イベント限定称号",},
        [30] = {30,"神の子","真龍降臨イベント限定称号","真龍降臨イベント限定称号",},
        [31] = {31,"天下の知者","全サーバークイズで個人ポイント1位になる","全サーバークイズで個人ポイント1位になる",},
        [32] = {32,"ラッキーMAX","始皇帝陵で春秋か戦国を累計99冊獲得する","始皇帝陵で春秋か戦国を累計99冊獲得する",},
        [33] = {33,"辛抱者","始皇帝陵に累計60時間とどまる","始皇帝陵・中に累計60時間とどまる",},
        [34] = {34,"天下無敵","始皇帝陵で累計999小隊を撃破する","始皇帝陵で累計999小隊を撃破する",},
        [35] = {35,"酒豪","饕餮の宴イベントの限定称号、30日間有効","饕餮の宴イベントの限定称号、30日間有効",},
        [36] = {36,"酒聖","饕餮の宴イベントの限定称号、30日間有効","饕餮の宴イベントの限定称号、30日間有効",},
        [37] = {37,"酒仙","饕餮の宴イベントの限定称号、30日間有効","饕餮の宴イベントの限定称号、30日間有効",},
        [38] = {38,"スッキリ","利き馬学堂イベントで戦馬(ｵﾚﾝｼﾞ)1頭を引き当てる","利き馬学堂イベントで戦馬(ｵﾚﾝｼﾞ)1頭を引き当てる",},
        [39] = {39,"ワクワク","戦馬選定中に駿馬の笛を獲得した","戦馬選定中に駿馬の笛を獲得した",},
        [40] = {40,"666","真龍降臨イベントで武将(金)を登用する","真龍降臨イベントで武将(金)を登用する",},
        [41] = {41,"ラッキースター","真龍降臨イベントのお楽しみガチャで当選する","真龍降臨イベントのお楽しみガチャで当選する",},
        [42] = {42,"玄人","クロスサーバー軍団戦の軍団ポイントで1位になる","クロスサーバー軍団戦の軍団ポイントで1位になる",},
        [43] = {43,"ド素人","クロスサーバー軍団戦の軍団ポイントで最下位になる","クロスサーバー軍団戦の軍団ポイントで最下位になる",},
        [44] = {44,"神業","クロスサーバー軍団戦の個人撃破数トップ3になる","クロスサーバー軍団戦の個人撃破数トップ3になる",},
        [45] = {45,"半人前","クロスサーバー軍団戦で個人の戦闘不能回数トップ3","クロスサーバー軍団戦で個人の討死回数トップ3",},
        [46] = {46,"剣と酒","饕餮の宴イベントの限定称号、30日間有効","饕餮の宴イベントの限定称号、30日間有効",},
        [47] = {47,"酒神","饕餮の宴イベントの限定称号、30日間有効","饕餮の宴イベントの限定称号、30日間有効",},
        [48] = {48,"真・酒神","饕餮の宴イベントの限定称号、30日間有効","饕餮の宴イベントの限定称号、30日間有効",},
        [49] = {49,"鯉の滝登り","饕餮の宴イベントの限定称号、30日間有効","饕餮の宴イベントの限定称号、30日間有効",},
        [50] = {50,"吉祥如意福来たり","饕餮の宴イベントの限定称号、30日間有効","饕餮の宴イベントの限定称号、30日間有効",},
        [51] = {1001,"新年2020","2020年新年イベント期間に1日ログイン","2020年新年イベント期間に1日ログイン",},
        [52] = {1002,"如意","2020年新年イベント期間にレベル20以上に到達","2020年新年イベント期間にレベル20以上に到達",},
        [53] = {1003,"新春快楽","2020年新年イベント期間にレベル40以上に到達","2020年新年イベント期間にレベル40以上に到達",},
        [54] = {1004,"千客万来","2020年新年イベント期間に任意金額をチャージ","2020年新年イベント期間に任意金額をチャージ",},
        [55] = {1005,"大富大貴","2020新年イベント期間、イベント期間、累計チャージ500万","2020新年イベント期間、イベント期間、累計チャージ500万",},
        [56] = {1006,"レジェンド","Danh hiệu tri ân người chơi VIP","Danh hiệu tri ân người chơi VIP",},
        [57] = {1007,"戦神","Danh hiệu kỷ niệm","Danh hiệu kỷ niệm",},
        [58] = {1008,"第一位","Dành cho người chơi đạt top 1 sự kiện đua top","Dành cho người chơi đạt top 1 sự kiện đua top",},
        [59] = {1009,"天下平定","Danh hiệu tri ân người chơi VIP","Danh hiệu tri ân người chơi VIP",},
        [60] = {1010,"江山平定","Danh hiệu tri ân người chơi VIP","Danh hiệu tri ân người chơi VIP",},
        [61] = {1011,"覇主","Danh hiệu tri ân người chơi VIP","Danh hiệu tri ân người chơi VIP",},
        [62] = {1012,"IDOL Anh Kin","Danh hiệu nhận được từ sự kiện Idol Của Tôi","Danh hiệu nhận được từ sự kiện Idol Của Tôi",},
        [63] = {1013,"IDOL Billy","Danh hiệu nhận được từ sự kiện Idol Của Tôi","Danh hiệu nhận được từ sự kiện Idol Của Tôi",},
        [64] = {1014,"IDOL Bet888","Danh hiệu nhận được từ sự kiện Idol Của Tôi","Danh hiệu nhận được từ sự kiện Idol Của Tôi",},
        [65] = {1015,"IDOL Wukong","Danh hiệu nhận được từ sự kiện Idol Của Tôi","Danh hiệu nhận được từ sự kiện Idol Của Tôi",},
        [66] = {1016,"IDOL Bố Già","Danh hiệu nhận được từ sự kiện Idol Của Tôi","Danh hiệu nhận được từ sự kiện Idol Của Tôi",},
        [67] = {8023,"軍団の星","運営イベントで獲得","運営イベントで獲得",},
        [68] = {8024,"魏の光","運営イベントで獲得","運営イベントで獲得",},
        [69] = {8025,"蜀の光","運営イベントで獲得","運営イベントで獲得",},
        [70] = {8026,"呉の光","運営イベントで獲得","運営イベントで獲得",},
        [71] = {8027,"群雄の光","運営イベントで獲得","運営イベントで獲得",},
        [72] = {8028,"金色伝説","運営イベントで獲得","運営イベントで獲得",},
        [73] = {8029,"天才絵師","運営イベントで獲得","運営イベントで獲得",},
    },

    -- index
    __index_id = {
        [1] = 1,
        [10] = 10,
        [1001] = 51,
        [1002] = 52,
        [1003] = 53,
        [1004] = 54,
        [1005] = 55,
        [1006] = 56,
        [1007] = 57,
        [1008] = 58,
        [1009] = 59,
        [1010] = 60,
        [1011] = 61,
        [1012] = 62,
        [1013] = 63,
        [1014] = 64,
        [1015] = 65,
        [1016] = 66,
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
        [8023] = 67,
        [8024] = 68,
        [8025] = 69,
        [8026] = 70,
        [8027] = 71,
        [8028] = 72,
        [8029] = 73,
        [9] = 9,
    }
}

return title