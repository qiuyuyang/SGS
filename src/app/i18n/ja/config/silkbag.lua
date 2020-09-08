--silkbag

local silkbag = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --锦囊id-int 
      name = 2,    --锦囊名称-string 
      profile = 3,    --锦囊短描述-string 
      description = 4,    --锦囊详情-string 
      bag_description = 5,    --背包锦囊描述-string 
      button_txt = 6,    --按钮文字-string 
    
    },
    -- data
    _data = {
        [1] = {1101,"錦袋[関銀屏]","攻撃力+1000","攻撃力+1000(プレイヤーレベルが1上がるたび攻撃力+40)","攻撃力+1000(各レベル+40)","着用",},
        [2] = {1102,"錦袋[張星彩]","HP+7500","HP+7500(プレイヤーレベルが1上がるたびHP+300)","HP+7500(各レベル+300)","着用",},
        [3] = {1103,"錦袋[周泰]","防御+500","防御+500(プレイヤーレベルが1上がるたび防御+20)","防御+500(各レベル+20)","着用",},
        [4] = {1104,"錦袋[呂霊雎]","会心率+8%","会心率+8%","会心率+8%","着用",},
        [5] = {1105,"錦袋[黄盖]","会心阻止率+8%","会心阻止率+8%","会心阻止率+8%","着用",},
        [6] = {1106,"錦袋[張譲]","ダメージ+5%","ダメージ+5%","ダメージ+5%","着用",},
        [7] = {1107,"錦袋[蔡文姫]","ダメージ軽減+5%","ダメージ軽減+5%","ダメージ軽減+5%","着用",},
        [8] = {1108,"錦袋[于禁]","会心ダメージ+5%","会心ダメージ+5%","会心ダメージ+5%","着用",},
        [9] = {1202,"錦袋[劉備]","奥義発動で回復量が上昇","回復武将の奥義発動時、HP最少の味方武将に与える回復効果を55%に上昇させる。","回復量が増加","着用",},
        [10] = {1203,"錦袋[陸遜]","やけど率上昇","攻撃目標が少ないほど、やけど率が上昇。目標1体に対して最高60%まで上がる。","やけど確率が上昇","着用",},
        [11] = {1204,"錦袋[公孫瓚]","単体ターゲットを攻撃し、怒気-1pt","単体ターゲット攻撃時、ターゲットの怒気-1pt。","敵単体を攻撃し、その怒気-1pt。","着用",},
        [12] = {1205,"錦袋[関羽]","初期は怒気+1pt","初期怒気+1pt。","初期は怒気+1pt","着用",},
        [13] = {1207,"錦袋[馬超]","シールドのダメージ軽減効果が向上","保護する目標が少ないほど、ダメージ軽減効果が高まり、最高ではダメージを36%軽減させる。(現在、ダメージ軽減シールドを持っている武将にのみ有効)","シールドのダメージ軽減効果が向上","着用",},
        [14] = {1208,"錦袋[賈詡]","中毒確率上昇","攻撃ターゲットが少ないほど、中毒確率が上昇する(最大60%)。","中毒確率上昇","着用",},
        [15] = {1209,"錦袋[徐庶]","めまい確率上昇","攻撃ターゲットが少ないほど、めまいふよ確率が高くなる、最大+48%(現在めまい効果がある武将のみに有効)","めまい確率上昇","着用",},
        [16] = {1211,"錦袋[于吉]","中毒ダメージアップ","攻撃ターゲットが少ないほど、奥義が与える中毒ダメージが増加し、最大でターゲット1体の中毒ダメージ+60%。","中毒ダメージアップ","着用",},
        [17] = {1212,"錦袋[小喬]","麻痺確率上昇","攻撃ターゲットが少ないほど麻痺確率が高くなり、最大でターゲット1体の麻痺確率+72%(その時点で麻痺効果を保有している武将にのみ有効)","麻痺確率上昇","着用",},
        [18] = {1213,"錦袋[郭嘉]","沈黙確率が上昇","攻撃目標が少ないほど、沈黙率が上がる。最大1つの目標に対して沈黙率+72%。(その時点で沈黙効果のある武将に対してのみ有効)","沈黙確率が上昇","着用",},
        [19] = {1214,"錦袋[夏侯惇]","反射割合アップ","反射+30%。(現在反射効果を持つ武将のみ有効)","反射割合アップ","着用",},
        [20] = {1215,"錦袋[張飛]","攻撃力+3000","攻撃力+3000(プレイヤーレベルが1上がるたび攻撃力+120)","攻撃力+3000(各レベル+120)","着用",},
        [21] = {1216,"錦袋[龐統]","HP+22500","HP+22500(主人公のレベルが1上がるたびにHP+900追加)","HP+22500(各レベル+900)","着用",},
        [22] = {1217,"錦袋[孫堅]","防御+1500","防御+1500(プレイヤーレベルが1上がるたび防御+60)","防御+1500(各レベル+60)","着用",},
        [23] = {1218,"錦袋[袁術]","会心率+20%","会心率+20%","会心率+20%","着用",},
        [24] = {1219,"錦袋[黄月英]","会心阻止率+20%","会心阻止率+20%","会心阻止率+20%","着用",},
        [25] = {1220,"錦袋[典韋]","ダメージ+12%","ダメージ+12%","ダメージ+12%","着用",},
        [26] = {1221,"錦袋[董卓]","ダメージ軽減+12%","ダメージ軽減+12%","ダメージ軽減+12%","着用",},
        [27] = {1222,"錦袋[孫尚香]","会心ダメージ+12%","会心ダメージ+12%","会心ダメージ+12%","着用",},
        [28] = {1223,"錦袋[許褚]","ターゲットを倒すと自身の怒気を1pt回復","目標を撃破すると、自身の怒気を1pt回復する。","ターゲットを倒すと自身の怒気を1pt回復","着用",},
        [29] = {1224,"錦袋[甄姫]","奥義ダメージの回復転化率上昇。","奥義ダメージをHPに転換し、その時点でHP最少の武将を回復させる比率を18%に上昇させる(その時点で転換回復奥義を保有している補助武将にのみ有効)","奥義ダメージの回復転化率上昇。","着用",},
        [30] = {1225,"錦袋[華佗]","中毒ダメージを受けると自身のHPを回復","与えた中毒ダメージの10%をHPに転換し、自身を回復する。","与えた中毒ダメージが自身のHPを回復する","着用",},
        [31] = {1226,"錦袋[大喬]","回復効果が向上し、ダメージ軽減シールドを付与する","奥義の回復効果+25%、また奥義目標にシールド(受ける全ダメージ-12%)を与える。1ターン持続。","回復効果が上昇かつシールドを付加。","着用",},
        [32] = {1227,"錦袋[貂蝉]","自身の被制御確率を低下させる","受ける制御効果(麻痺、沈黙、めまい)確率-35%","自身の被制御確率を低下させる","着用",},
        [33] = {1301,"錦袋[趙雲]","通常攻撃必ず会心になる","通常攻撃が必ず会心になる(回復武将を含む)","通常攻撃必ず会心になる","着用",},
        [34] = {1303,"錦袋[周瑜]","やけど持続ターン数が増加","自分で与えたやけど状態をさらに1ターン延長する。","やけど状態+1ターン","着用",},
        [35] = {1304,"錦袋[左慈]","中毒に回復不能効果を付加する","中毒に回復無効効果を付加。中毒状態の武将は回復を受けられない。","中毒に回復不能効果を付加する","着用",},
        [36] = {1308,"錦袋[曹操]","敵武将の無敵効果を解消","攻撃ターゲットが少ないほど、敵武将の無敵状態解消率が高くなり、最大でターゲット1体の無敵状態を100%解消する。","敵武将の無敵効果を解消","着用",},
        [37] = {1302,"神錦袋[曹仁]","縦列ターゲットを攻撃して、怒気-1pt","縦列ターゲット攻撃時、ターゲットの怒気-1pt(その時点で縦列怒気減少効果を保有している武将にのみ有効)","縦列ターゲットを攻撃し、怒気-1pt","着用",},
        [38] = {1309,"神錦袋[陸遜]","やけど状態の武将の無敵封印","やけど状態の武将は無敵や無敵の吸血盾効果を獲得できません。","やけど状態の武将は無敵効果を得られない","着用",},
        [39] = {1310,"神錦袋[黄月英]","初回ターンはデバフ無効","最初のターンでめまい、沈黙、麻痺効果を無効にする","1ターン目でめまい、沈黙、麻痺効果を無効にする。","着用",},
        [40] = {1311,"神錦袋[華佗]","奥義ダメージを回復に転換する","奥義ダメージの18%をHPに転換し、自身を回復する。","奥義ダメージをHPに転換し、自身を回復する","着用",},
        [41] = {1312,"錦袋[司馬懿]","怒気をすべて消費すると、奥義ダメージが増加","武将の怒気が7pt未満だと奥義の発動不能。奥義発動にはその時点の怒気をすべて消費する。怒気5pt以上だと、怒気1ptを消費するたび奥義ダメージ+15%。","怒気をすべて消費すると、奥義ダメージが増加","着用",},
        [42] = {1305,"神錦袋[賈詡]","中毒持続ターン数増加","奥義による中毒状態を1ターン延長。","中毒状態を1ターン追加","着用",},
        [43] = {1313,"神錦袋[荀彧]","奥義発動で回復量が上昇","回復武将が奥義発動時、HPが最も少ない味方武将3人の回復効果が回復武将の攻撃力の32%まで上がる。","奥義発動で回復量が上昇","着用",},
        [44] = {1314,"錦袋[桃園結義]","受けたダメージを分担","被ダメージ-12%、かつ自身の受ける非致命的ダメージを、自身およびHP最大の味方武将2名と等分する(ダメージ分担時は無敵状態の武将もダメージを受ける)","受けたダメージを分担","着用",},
        [45] = {1315,"神錦袋[太史慈]","やけど確率が大幅に上昇","攻撃ターゲットが少ないほどやけど確率が高くなり、最大でターゲット1体のやけど確率+96%。","やけど確率が大幅に上昇","着用",},
        [46] = {1316,"錦袋[恋人]","ターン終了時に「心想い」の怒気を1pt回復する","この武将の各ターン最初の攻撃後、錦袋[心想い]を装備している武将(各陣容、男性武将1名のみ装備可能)の怒気+1pt","ターン終了時に「心想い」の怒気を1pt回復する","着用",},
        [47] = {1317,"錦袋[心想い]","ターン終了後、恋人効果で怒気を1pt回復","この武将の各ターン最初の攻撃後、錦袋[恋人]を装備している武将(各陣容、女性武将1名のみ装備可能)の怒気+1pt","ターン終了後、恋人効果で怒気を1pt回復","着用",},
        [48] = {1318,"錦袋[単騎千里を走る]","その時点でHP最少の敵武将を攻撃する","単体攻撃タイプの武将の全攻撃が現在HPが最も少ない武将を優先して攻撃する。","その時点でHP最少の敵武将を攻撃する","着用",},
        [49] = {1319,"錦袋[一騎当千]","目標を撃破すると奥義1回追加","単体攻撃武将がターゲットを倒すと、奥義を1回追加し、敵単体に175%の物理ダメージを与える(追加された奥義は怒気を消費せず、何の特性も付かない)","目標を撃破すると奥義1回追加","着用",},
        [50] = {1320,"錦袋[一枚上手]","ダメージ増加","攻撃時、ダメージ＋9%(味方武将が敵より一人多くにつれダメージ＋4.5%)","攻撃時、ダメージ上昇","着用",},
        [51] = {1321,"錦袋[万無一失]","受けるダメージを減少","ダメージ受ける時、ダメージ-9%(敵より武将が一人多い分、ダメージが更に-4.5%)","ダメージ受ける時、ダメージ減","着用",},
        [52] = {1401,"錦袋[七殺]","与ダメージが分担される割合が低下","味方の縦/前/後列の火力武将が敵に与えるダメージが分担された場合、その割合-50%","与えたダメージが分散されたら、その比率を減少する","着用",},
        [53] = {1402,"錦袋[貪狼]","目標を撃破すると怒気を獲得。","奥義が敵ターゲットを倒した場合、ターゲットに残っていた怒気を全て獲得(火力武将に上乗せ)","敵ターゲットを倒したら、ターゲットの怒気を獲得","着用",},
        [54] = {1403,"伝説錦袋[関羽]","初期怒気+2pt","初期怒気+2pt","初期怒気+2pt","着用",},
        [55] = {1404,"錦袋[背水の陣]","毎ターンの被ダメージに上限あり","毎ターン最大で自身の最大HPの50%のダメージを受ける(このダメージは武将からの直接ダメージ。各陣容、武将1名のみ装備可能)","毎ターンの被ダメージに上限あり","着用",},
        [56] = {1405,"錦袋[同舟共済]","同陣営の味方武将のダメージを吸収する","同陣営の武将が敵武将の直接ダメージを受けた時、そのダメージの50%をこの錦袋を装備した武将に転移する(特性の発動も被無敵無効もなし。各陣容とも武将1名に限り装備)","同陣営の味方武将のダメージを吸収する","着用",},
        [57] = {1406,"伝説錦袋[典韋]","ダメージ+18%","ダメージ+18%","ダメージ+18%","着用",},
        [58] = {1407,"錦袋[大廈の陰]","やけど、中毒、雷撃ダメージを低下させる","やけど/中毒/麒麟の雷ダメージを受けた際、そのダメージ-35%","やけど、中毒、雷撃ダメージを低下させる","着用",},
        [59] = {1408,"錦袋[金城湯池]","初期は最大HPの18%相当のアーマーを付与","初期は最大HPの18%相当のアーマーを付与","初期は最大HPの18%相当のアーマーを付与","着用",},
        [60] = {1409,"伝説錦袋[董卓]","ダメージ軽減+18%","ダメージ軽減+18%","ダメージ軽減+18%","着用",},
        [61] = {1501,"玉錦袋[乗勝追撃]","異常状態のターゲットの怒気を減らす","攻撃時ターゲットが異常状態(中毒、めまい、沈黙、麻痺、虚弱、制圧、鉄鎖)なら、ターゲットの怒気-1pt。武将の全体のターン内1回のみ発動","異常効果ターゲット攻撃すると更に怒気を減らす","着用",},
        [62] = {1502,"玉錦袋[荀彧]","奥義でターゲット回復するとアーマー上昇","回復武将の奥義発動時、HP最少の味方武将に最大HPの8%に相当するアーマー効果を付与す","奥義発動時にアーマー効果を付与","着用",},
        [63] = {1503,"玉錦袋[破竹の勢い]","異常状態のターゲットに追加ダメージを与える","異常効果(やけど、中毒、めまい、沈黙、麻痺、虚弱、制圧、鉄鎖)を受けたターゲットにダメージを与えた時、ターゲット数が1/2/3/4/6体なら、追加でターゲットの最大HPの18%/9%/6%/4.5%/ 3%分の追加ダメージを与える。ターゲットの異常効果一つにつき、追加ダメージが倍になり、最大3倍。各武将の全体ターン中に攻撃されるターゲットに1回のみ発動","攻撃が異常効果のターゲットにダメージ増加","着用",},
        [64] = {1504,"玉錦袋[一転攻勢]","自身受けるダメージを更に減少","ターン内に行動してない時、受ける直接ダメージ-24%。行動済み時、受けるダメージ-12%","受けるダメージ減","着用",},
    },

    -- index
    __index_id = {
        [1101] = 1,
        [1102] = 2,
        [1103] = 3,
        [1104] = 4,
        [1105] = 5,
        [1106] = 6,
        [1107] = 7,
        [1108] = 8,
        [1202] = 9,
        [1203] = 10,
        [1204] = 11,
        [1205] = 12,
        [1207] = 13,
        [1208] = 14,
        [1209] = 15,
        [1211] = 16,
        [1212] = 17,
        [1213] = 18,
        [1214] = 19,
        [1215] = 20,
        [1216] = 21,
        [1217] = 22,
        [1218] = 23,
        [1219] = 24,
        [1220] = 25,
        [1221] = 26,
        [1222] = 27,
        [1223] = 28,
        [1224] = 29,
        [1225] = 30,
        [1226] = 31,
        [1227] = 32,
        [1301] = 33,
        [1302] = 37,
        [1303] = 34,
        [1304] = 35,
        [1305] = 42,
        [1308] = 36,
        [1309] = 38,
        [1310] = 39,
        [1311] = 40,
        [1312] = 41,
        [1313] = 43,
        [1314] = 44,
        [1315] = 45,
        [1316] = 46,
        [1317] = 47,
        [1318] = 48,
        [1319] = 49,
        [1320] = 50,
        [1321] = 51,
        [1401] = 52,
        [1402] = 53,
        [1403] = 54,
        [1404] = 55,
        [1405] = 56,
        [1406] = 57,
        [1407] = 58,
        [1408] = 59,
        [1409] = 60,
        [1501] = 61,
        [1502] = 62,
        [1503] = 63,
        [1504] = 64,
    }
}

return silkbag