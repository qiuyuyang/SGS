--equipment

local equipment = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --编号-int 
      name = 2,    --装备名称-string 
      description = 3,    --装备描述-string 
    
    },
    -- data
    _data = {
        [1] = {101,"古錠刀","上等の精鉄を使い、重さは約22キロ。古式製法で鍛造されていて、軍の精鋭のために配備されている。",},
        [2] = {102,"黒鉄甲","希少金属を使い、7749日かけて鍛造された、普通の兵器では破壊されない鎧。",},
        [3] = {103,"逍遥の頭巾","上等な布を、心を鎮め目を良くする薬に浸して作られている。頭部を守り気持ちも明るくして、常に冷静でいられるようにする。",},
        [4] = {104,"雲紋の靴","上等な獣皮を使い、極秘のなめし方で作られている。通気性と吸湿性に優れ、長時間の着用が可能。",},
        [5] = {201,"寒氷剣","寒鉄から鋳造され、刀身に冷気を纏っている。傷口から血を凍らせる『青い剣閃』で敵を葬る。",},
        [6] = {202,"鎖帷子","108の精鋼片から作られている鎧。軽さの割に防御力は極めて高い。",},
        [7] = {203,"銀光の兜","精鋼から鋳造され、表面にミスリルが貼られている。頭部をしっかり守り、攻撃から防ぐ。",},
        [8] = {204,"貂皮の靴","貂皮製の靴で、テン1匹から1足しか作れない。冬は暖く夏は凉しいため、行軍には最適な上等品。",},
        [9] = {301,"驚雷の長槍","百錬した精鋼を、天雷に打たせて作られている。振り回すと電光が明滅し、雷鳴が轟く。",},
        [10] = {302,"幻日の鎧","何度も鍛えられた鋼が幻日を周囲に映し、敵の目をくらます。",},
        [11] = {303,"落月の冠","月が欠け始めてから次の満月まで、夜の間だけ編まれる冠。その製法上、月光の力を十分に蓄えている。",},
        [12] = {304,"幻影の靴","珍種のコウモリからのみ作られる、軽くしなやかな靴。履けば1日に百里歩いても疲れない。",},
        [13] = {305,"断魂の斧","この斧で叩き切った敵は千を下らない。切られた者の亡魂は凝結して散らず、その刃は体より先に魂を断つため、断魂と名付けられたとか。",},
        [14] = {306,"霹靂の銀鎧","極上のミスリルを九天の雷に打たせて作られており、帯びた紫電が敵を寄り付かせない。",},
        [15] = {307,"烈炎の兜","火山岩鉄をマグマで精錬しており、表面には常に烈炎が輝いている。",},
        [16] = {308,"疾風の戦靴","大鵬の羽を使っており、疾風の力を秘めている。たとえ人の身であっても、疾風の如く移動できるようになる。",},
        [17] = {401,"真武麒麟弓","麒麟の力を秘めた神弓。これを引ける馬力を持つ者もまた、人の道を外れているのである。",},
        [18] = {402,"蛟鱗の鎧","蛟龍の革が使われており、陰陽道で用いる八卦の力を秘めている。",},
        [19] = {403,"無双鳳羽の兜","兜に鳳凰の羽飾りが挿してあり、鳳凰の力を秘めている。",},
        [20] = {404,"混元-金剛靴","金剛製で強靱無比、混沌の力を秘めている。",},
        [21] = {405,"清霜寒氷剣","厳寒の頃の氷を使い、極度の低温で数年かけて鍛えた剣。呉の都督・周瑜が愛した一品としても伝わる。",},
        [22] = {406,"赤羽の鎧","左慈が天命の人のために作ったとされる鎧。精錬された翡翠から作られており、赤い羽毛で編んだ縅毛(おどしげ)には、左慈自ら護りの仙術を秘めたという。",},
        [23] = {407,"九霄墨玉冠","名門の一族が用いる物。全体に黒玉を散りばめ、上等な絹糸で縫製されており、上品な美しさをもつ。",},
        [24] = {408,"金繍羽靴","美しい錦と碧玉から作られている。きらびやかで高貴ながら、敵と対峙する際は比類なき防御力を発揮する。",},
        [25] = {409,"破軍[七殺槍]","破軍装備セットのパーツの1つ。猛将がかつて持っていた槍。数万の敵軍に「七進七出」しても敗れなかったと伝わる。",},
        [26] = {410,"破軍[貪狼の鎧]","破軍装備セットのパーツの1つ。両肩に狼がかたどられ、獲物を狙い定めた時の威圧感を漂わせている。",},
        [27] = {411,"破軍[銀獅の兜]","破軍装備セットのパーツの1つ。西涼地方の貴重なミスリルから鍛造されており、獅子のように勇ましい外見をしている。",},
        [28] = {412,"破軍[踏天の靴]","破軍装備セットのパーツの1つ。外側には隕石が付着し、内側には珍獣の革が張られている。履いた者の一挙手一投足に、天をも踏みつけるような勢いを与える。",},
        [29] = {501,"四神[青龍の槍]","四神装備セットのパーツの1つ。神獣・青龍の吐息を少し含んでいる。振り回すたび龍の雄叫びを発し、敵を震え上がらせる。",},
        [30] = {502,"四神[玄武の鎧]","四神装備セットのパーツの1つ。神獣・玄武の吐息を少し含んでいる。死角のない、完璧な防御効果を持つ。",},
        [31] = {503,"四神[白虎の兜]","四神装備セットのパーツの1つ。神獣・白虎の吐息を少し含んでいる。野性的な視野を得られ、戦力が大幅に向上する。",},
        [32] = {504,"四神[朱雀の靴]","四神装備セットのパーツの1つ。神獣・朱雀の吐息を少し含んでいる。朱雀の力が肉体と精神を超人化させる。",},
        [33] = {601,"八極[饕餮の戟]","八極装備セットのパーツの1つ。古代の凶獣・饕餮(とうてつ)の霊力を秘めており、振るう度に神託を得る。",},
        [34] = {602,"八極[窮奇の鎧]","八極装備セットのパーツの1つ。古の四凶獣・窮奇(きゅうき)の霊力を秘めており、不破の防御力を得る。",},
        [35] = {603,"八極[檮杌の冠]","八極装備セットのパーツの1つ。古代の凶獣・梼杌(とうこつ)の霊力を秘めており、揺るぎない意志を得る。",},
        [36] = {604,"八極[混沌の靴]","八極装備セットのパーツの1つ。古代の凶獣・混沌(こんとん)の霊力を秘めており、無尽蔵の活力を得る。",},
    },

    -- index
    __index_id = {
        [101] = 1,
        [102] = 2,
        [103] = 3,
        [104] = 4,
        [201] = 5,
        [202] = 6,
        [203] = 7,
        [204] = 8,
        [301] = 9,
        [302] = 10,
        [303] = 11,
        [304] = 12,
        [305] = 13,
        [306] = 14,
        [307] = 15,
        [308] = 16,
        [401] = 17,
        [402] = 18,
        [403] = 19,
        [404] = 20,
        [405] = 21,
        [406] = 22,
        [407] = 23,
        [408] = 24,
        [409] = 25,
        [410] = 26,
        [411] = 27,
        [412] = 28,
        [501] = 29,
        [502] = 30,
        [503] = 31,
        [504] = 32,
        [601] = 33,
        [602] = 34,
        [603] = 35,
        [604] = 36,
    }
}

return equipment