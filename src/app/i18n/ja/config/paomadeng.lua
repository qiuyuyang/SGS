--paomadeng

local paomadeng = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --跑马灯id-int 
      description = 2,    --描述-string 
    
    },
    -- data
    _data = {
        [1] = {20,"おめでとうございます！#name#は#hero#の突破#level#に成功。戦力が大きく上昇しました！",},
        [2] = {21,"#name#が#hero#を涅槃#level#にしました。もう天下無敵です！",},
        [3] = {30,"#name#が#hero#を登用しました。おめでとうございます！！",},
        [4] = {31,"おめでとうございます、#name#は#hero#を登用しました。天から舞い降りた幸運です！",},
        [5] = {32,"#name#が#hero#を登用しました。おめでとう、みな羨ましがっています。三国を統一する日は近い！",},
        [6] = {41,"おめでとうございます、#name#は黄金の宝箱から#equipment#を獲得しました。まことに幸運！",},
        [7] = {42,"#name#は四神の宝箱から#equipment#を獲得しました。おめでとうございます！！",},
        [8] = {51,"#name#が競技場ランキング#rank#位になりました。三国を統一する日は近い！",},
        [9] = {60,"#name#は領地巡回中に#hero#を獲得！それまで何度探しても見つからなかったのに、ふとした瞬間に見つかるとはまさにこのこと。",},
        [10] = {70,"おめでとうございます！#name#は周遊で#treasure#を獲得しました。本当に運がいいですね！",},
        [11] = {80,"おめでとうございます！軍団[#legion#]が今回の軍団ボスイベントで1位になりました！",},
        [12] = {90,"おめでとうございます！#name#は今回の軍団ボスで、1位を獲得しました！",},
        [13] = {100,"主君、#min#分後に軍団ボスが出現します。準備を整えましょう！",},
        [14] = {101,"軍団ボスが時間どおり開放されます。さあ挑戦しましょう！",},
        [15] = {110,"[#activity#]オークションは#min#分後に開始されます。今回の品: #goods#",},
        [16] = {111,"[#activity#]オークションは始まっています。今回の競売品: #goods#。",},
        [17] = {112,"今回の[#activity#]では軍団隊員の参加人数が少なく、オークションアイテムを獲得できませんでした。主君の皆さま、どうぞ頑張ってくださいね。",},
        [18] = {113,"今回の[#activity#]オークションは終了しました。参加者は全員#number#元宝の配当報酬を獲得できます。メールから受領ください。",},
        [19] = {114,"主君#name#が即決価格#number#で#goods#を入札しました！",},
        [20] = {120,"[#activity#]流札商品は#min#分後から全サーバー共通オークションに欠片れます。今回の品: #goods#",},
        [21] = {121,"全サーバー共通オークションが始まりました。今回の品: #goods#",},
        [22] = {122,"軍団[#legion#]の管理人があなたの加入申請に同意しました。",},
        [23] = {123,"軍団[#legion#]の管理人があなたの入団申請を拒否しました。",},
        [24] = {124,"軍団[#legion#]の管理人から軍団脱退を求められています。",},
        [25] = {125,"#name#が軍団に加入。みんな大歓迎！",},
        [26] = {126,"#name#が軍団を脱退しました。みんなで見送りましょう！",},
        [27] = {127,"#name#は軍団から除籍されました",},
        [28] = {128,"#name#が[神]孟獲の痕跡をシェアしました。撃退後に全参加者が元宝を獲得できます！",},
        [29] = {129,"#name#はデイリーギフトを購入し、#goods#を獲得しました。おめでとうございます！！",},
        [30] = {130,"千載一隅！みんなも大喜び！軍団[#legion#]が今回の[#activity#]イベントで、完全な武将(赤)#hero#を獲得しました！こんなに強い軍団は広く愛されていることでしょう！",},
        [31] = {131,"#legion#のある金持ちが錦袋(赤)-#hero#を#number#元宝で競り落としました！一家には屋敷も農地もあり、それは楽しい暮らしでしょうな！",},
        [32] = {132,"#name1#が#name2#から#integral#ptを奪取しました！",},
        [33] = {133,"#name1#は#name2#に#integral#pt奪われました！",},
        [34] = {134,"#name1#の技が及ばず、#name2#略奪に失敗しました！",},
        [35] = {135,"#name#がBonusをシェアしました。今すぐ獲得しましょう！",},
        [36] = {136,"#name1#のBonus#count#個、合計#worth#元宝は#time#に完了。#name2#は運気最高、#number#元宝を獲得しました。",},
        [37] = {137,"おめでとうございます！軍団[#legion#]が今期の軍団クイズイベントで1位になりました！",},
        [38] = {138,"おめでとうございます！軍団[#legion#]は今回の軍団クイズイベントで2位となりました！",},
        [39] = {139,"おめでとうございます！軍団[#legion#]が今期の軍団クイズイベントで3位になりました！",},
        [40] = {140,"おめでとうございます！#name#は今回の軍団ボスで、1位を獲得しました！",},
        [41] = {141,"#min#分後に軍団クイズが始まります。蛍雪十年誰も問わず、一挙に名を成すに天下知る。龍飛び鳳舞い巨筆を振るうは天下第一！",},
        [42] = {142,"軍団クイズが開放されました。主君各位のご活躍を祈ります！",},
        [43] = {143,"第#time#問終了。正解者: [#name#]、誤答者: [#name#]。",},
        [44] = {144,"[#activity#]オークションは#min#分後に開始されます。今回の品: #goods#",},
        [45] = {145,"[#activity#]オークションは始まっています。今回の競売品: #goods#。",},
        [46] = {146,"今回の[#activity#]では、軍団クイズポイントが低すぎて、オークションアイテムを獲得できませんでした。精進しましょう！",},
        [47] = {147,"今回の[#activity#]オークションは終了しました。参加者は全員#number#元宝の配当報酬を獲得できます。メールから受領ください。",},
        [48] = {148,"主君#name#は#goods#を即決価格#number#元宝で競り落としました！",},
        [49] = {149,"[#activity#]流札商品は#min#分後から全サーバー共通オークションに欠片れます。今回の品: #goods#",},
        [50] = {150,"全サーバー共通オークションが始まりました。今回の品: #goods#",},
        [51] = {151,"おめでとうございます！主君#name#が名将七変化で#goods#を獲得しました！",},
        [52] = {152,"天下の英雄 我らを生み、鴻図覇業 談笑する間に成る。おめでとう！主君#name#が変身カード商店で#goods#を入手されました！",},
        [53] = {153,"#name#が#num#倍Bonusをシェアしました。みんなさあ急げ！",},
        [54] = {154,"#name1#の#num#倍Bonus、#count#個で合計#worth#元宝は#time#に完了。#name2#は運気最高、#number#元宝を獲得しました。",},
        [55] = {155,"報告！ある金持ちが完全な武将(赤)-#hero#を#number#元宝で競り落としました！その者の名は#name#です。お金持ちさん、友達になって！",},
        [56] = {156,"報告！ある金持ちが錦袋(赤)-#hero#を#number#元宝で競り落としました。その者の名は#name#です。お金持ちさん、友達になって！",},
        [57] = {157,"おめでとうございます！主君#name#が称号#title#を獲得しました！",},
        [58] = {158,"#name#が#number#で錦袋(金)#hero#を落札しました！",},
        [59] = {161,"おめでとうございます！軍団[#legion#]が今期の全サーバークイズイベントで1位になりました！",},
        [60] = {162,"おめでとうございます！軍団[#legion#]は本時間帯の全サーバークイズイベントで2位を獲得しました！",},
        [61] = {163,"おめでとうございます！軍団[#legion#]が今期の全サーバークイズイベントで3位になりました！",},
        [62] = {164,"#name#が今回の全サーバークイズで1位になりました！",},
        [63] = {165,"全サーバークイズは#min#分後に開始します。参加する皆さまの健闘を祈ります！",},
        [64] = {166,"全サーバークイズが開放されました。主君各位のご活躍を祈ります！",},
        [65] = {203,"わが軍団は領土開拓で#type##pit#を占領しました！",},
        [66] = {204,"#legion#軍団が#type##pit#を占領し、中原に威信を轟かせています！",},
        [67] = {205,"所属軍団が占領した#pit#が#legion#に奪われました！",},
        [68] = {206,"所属軍団は#pit#占有権を失い、この地は混戦に陥りました！",},
        [69] = {207,"#name1#が#pit#で#legion##name2#に倒されました。",},
        [70] = {208,"#name1#は#pit#で勇ましく敵を倒していましたが、力尽きて敗退。出兵して支援してください！",},
        [71] = {209,"#pit#戦報: #name1#が#legion##name2#を一刀両断しました！",},
        [72] = {210,"#pit#戦報: #name1#は#legion##name2#と鉢合わせし、奮戦して勝利しました！",},
        [73] = {211,"#pit#戦報: #name1#は#legion##name2#と300ターンの激戦のすえ、全勝しました！",},
        [74] = {212,"#pit#戦報: #name1#が#legion##name2#を倒し、相手を圧倒しています！",},
        [75] = {213,"#pit#戦報: #legion1##name1#が#legion2##name2#を一刀のもとに斬り伏せました！",},
        [76] = {214,"#pit#戦報: #legion1#の#name1#と#legion2#の#name2#が激戦を展開中！",},
        [77] = {215,"#pit#戦報: #legion1#の#name1#は#legion2#の#name2#と激戦を展開し、完全勝利を収めました！",},
        [78] = {216,"#pit#戦報: #legion1##name1#が#legion2##name2#を討ち、威名を轟かせました！",},
        [79] = {217,"#pit#戦報: #name1#が#legion##name2#を一刀両断しました！",},
        [80] = {218,"#pit#戦報: #name1#は#legion##name2#と鉢合わせし、奮戦して勝利しました！",},
        [81] = {219,"#pit#戦報: #name1#は#legion##name2#と300ターンの激戦のすえ、全勝しました！",},
        [82] = {220,"#pit#戦報: #legion1##name1#が#legion2##name2#を一刀のもとに斬り伏せました！",},
        [83] = {221,"#pit#戦報: #legion1#の#name1#と#legion2#の#name2#が激戦を展開中！",},
        [84] = {222,"#pit#戦報: #legion1#の#name1#は#legion2#の#name2#と激戦を展開し、完全勝利を収めました！",},
        [85] = {223,"鉱山戦で新しい増産鉱山で産出: [本日3倍]#pit1#、[本日2倍]#pit2#。",},
        [86] = {224,"正午の通知。今日の平和鉱: #pit1#、#pit2#、#pit3#。",},
        [87] = {301,"主君、おめでとうございます！#name#が#id#から#hero#を登用しました。さすが、眼識がありますね！",},
        [88] = {302,"おめでとうございます、#name#从#id#で#silkbag#を獲得しました。勝ちを千里の外に決するならまさに今！",},
        [89] = {303,"おめでとうございます、主君#name#は#id#で#pet#を獲得しました。神獣の力強い加護を得て、三国の乱世に風雲をまき起こしましょう！",},
        [90] = {304,"おめでとうございます！主君#name#が#id#で#horse#を獲得しました。良駒を得て、万里を疾駆しています！",},
        [91] = {305,"おめでとうございます！主君#name#が#id#で#hero#を登用しました。天下に覇を唱える日は近いでしょう！",},
        [92] = {401,"見つからない探し物は、運が良ければ自然と出て来るそうですよ。主君、おめでとうございます！#name#は周遊中に#resource#を獲得しました！",},
        [93] = {402,"おめでとうございます！#name#は#id#で#equipment#を獲得しました。まさに鬼に金棒ですね！",},
        [94] = {403,"おめでとうございます！主君#name#が#activity#で#item#を獲得しました。その豪気は天を衝き、世を睥睨しています！",},
        [95] = {404,"おめでとうございます！主君#name#が#activity#で#item#を獲得しました。その豪気は天を衝き、世を睥睨しています！",},
        [96] = {405,"出陣前にしっかり装備を調えましょう。おめでとうございます、主君#name#は#id#中で#equipment#を獲得しました。さらに鍛えれば、鋼も断ち切れる武器となります！",},
        [97] = {500,"陣営競技が開放されました。一緒に新たな王者の誕生を見届けましょう！",},
        [98] = {501,"陣営競技のエントリーは今晩9時に終了します。エントリーをお忘れなく！",},
        [99] = {502,"陣営競技予選は5分後に開始されます。天下に征戦するのは今だ！",},
        [100] = {503,"陣営競技観戦では、毎回1人の参戦者を[支持]でき、そのプレイヤーが昇格すると元宝を獲得できます",},
        [101] = {504,"おめでとうございます！#legion##name#が#country#の予選で勝利し、決勝に進出しました！",},
        [102] = {505,"勝報！所属軍団#name#が#country#エリアの初戦で#num#位になり、決勝進出が決まりました！",},
        [103] = {506,"おめでとうございます！#legion##name#が#country#8強戦で勝利し、準決勝に進出しました！",},
        [104] = {507,"おめでとうございます、#legion##name#が#country#の準決勝に勝ち、決勝に進出しました！",},
        [105] = {508,"王者降臨！#legion##name#が決勝を制し、[#country#覇者]になりました！",},
        [106] = {509,"勝報！所属軍団#name#が#country#8強戦で勝利し、準決勝に進出しました！",},
        [107] = {510,"速報！わが軍団#name#は#country#での準決勝に勝利、決勝に進みました！",},
        [108] = {511,"王者降臨！所属軍団#name#が決勝で勝利し、[#country#覇者]になりました！",},
        [109] = {601,"#city##ボス#は撃破されました。[#legion#]軍団が獲得したオークション戦利品: #goods#",},
        [110] = {602,"#name1#は見事#name2#を阻止し、#name2#の挑戦CD+#time#秒！",},
        [111] = {603,"#name1#は#name2#による阻止成功。挑戦CD+#time#秒！",},
        [112] = {604,"#name1#は力及ばず、#name2#の阻止に失敗しました。",},
        [113] = {605,"#legion#のある金持ちが錦袋(赤)-#hero#を#number#元宝で競り落としました！一家には屋敷も農地もあり、それは楽しい暮らしでしょうな！",},
        [114] = {606,"官渡の戦いで曹操は袁紹の本陣である鄴城に向かう。突如、後方から#city#陥落の知らせが届き、#boss#は冷ややかに笑うと、自ら大軍を率いて応戦に向かった。",},
        [115] = {607,"#city#の2城が陥落したそうです。#ボス#は羽扇で仰ぎながらフッと笑った。「諸葛亮はここでずっと待っていた。さあ諸兄、櫓に上がって琴を聞いてください！」",},
        [116] = {608,"赤壁の戦いで、孫劉連合軍は曹操の大軍を大いに破ったが、#city#2城は攻め落とされ、それが#ボス#を激怒させ、「私に歯向かう者は、死んだほうがましと思わせてやる！」",},
        [117] = {609,"呂布は長江、淮河一帯に覇を唱え、貂蝉と日夜睦ましく過ごしていたが、突然、#city#陥落の知らせを受け、#boss#は激怒した。「たとえ万軍であろうと、われ呂布一人を倒せまい！」",},
        [118] = {610,"おめでとうございます！軍団[#legion#]が今回の[#activity#]イベントで錦袋(赤)#silkbag#を獲得。三国最強の軍団はあなたのものです！",},
        [119] = {611,"#city##ボス#は撃破されました。所属軍団が獲得したオークション戦利品: #goods#",},
        [120] = {701,"おめでとうございます！主君#name#が曹操追撃イベントで曹操を追撃し、#equipment#を獲得しました！",},
        [121] = {702,"主君#name#は赤装備商店で#equipment#を入手したことを天下に布告します。",},
        [122] = {710,"主君#name#は八星占いで天文を読み、#goods#を見つけました！",},
        [123] = {720,"主君#name#が神獣#pet#を合成。その威信は三国に轟きました！",},
        [124] = {730,"主君#name#は戦馬選定で天の助けを得て、はからずも#goods#を獲得しました！",},
        [125] = {731,"主君#name#が商店で#equipment#を入手したことを天下に布告します。",},
        [126] = {740,"主君#name#は武将(金)#goods#の合成に成功しました。天下の大勢はその手の中に！",},
        [127] = {800,"第#number#回華容道が開放されました。主君各位をご招待します。出場者5人を祝福しましょう！",},
        [128] = {801,"第#number#回の華容道が終了しました。今回の優勝者は#hero#です。ご応援ありがとうございました。次回もどうぞご期待ください。",},
        [129] = {900,"今日は大商人が大量の品物を携えて#city#に来ており、5分後に交易が始まります。",},
        [130] = {901,"残念！[#guild#]軍団の[#player#]に撃破されました！",},
        [131] = {902,"所属軍団の#player1#が奮戦し、[#guild#]軍団の#player2#を撃破しました！",},
        [132] = {903,"[#guild#]軍団の#player#が[#city#]で一気に5撃破を達成！もはや神を超えた強さです。どなたか彼を倒してください！",},
        [133] = {904,"[#guild#]軍団の#player#が[#city#]の城門を突破しました！",},
        [134] = {905,"[#guild#]軍団が見事[#city#]の龍柱支配権を奪取しました！",},
        [135] = {906,"[#guild#]軍団は団員全員が勇敢に戦い、見事[#city#]を占領しました！",},
        [136] = {907,"軍団戦は1分後に開始します。大きな功績を立てるチャンスです。昇進の時も近いですよ！",},
        [137] = {908,"主君各位、敵が戦場に到達しています。全軍で出撃し、連中を粉砕してください！",},
        [138] = {909,"初の犠牲者！[#guild#]軍団の#player#が[#city#]で初撃破を完了！",},
        [139] = {910,"暴走！[#guild#]軍団の#player#が大立ち回りをして、完全に暴走しています。誰か早く阻止してください！",},
        [140] = {911,"強風に乗って荒波を掻き分け、雲を帆にして蒼海を渡らん。#player#の#hero1#が限界突破し、武将(赤)#hero2#になりました！",},
        [141] = {941,"長江の波が後から押し寄せるように、人も新しく代替わりする。#player#が#hero1#を限界突破して武将(金)#hero2#にしました！",},
        [142] = {912,"王者の戦いが開放されました。マッチングを開始します！",},
        [143] = {913,"#legion##name#が全サーバーBonusをシェアしました。今すぐ獲得しましょう！",},
        [144] = {914,"#legion##name1#の#count#Bonus、計#worth#元宝の略奪は#time#に完了。最も運の良かった#legion##name2#が、#number#元宝を獲得しました。",},
        [145] = {915,"神秘の商人は終了しました。全サーバービッグBonusを獲得できます",},
        [146] = {916,"神秘の商人の#count#個のBonus計#worth#元宝は#time#でなくなりました。#legion##name2#の運が一番良く、#number#元宝を手に入れました。",},
        [147] = {917,"神秘の商人が開放されました。オークションにおいて即決価格で商品を購入すると、全サーバーにBonusが配布されます。皆さん、手加減はダメですよ～",},
        [148] = {918,"神秘の商人の商品は、すべて即決価格での販売になります。",},
        [149] = {919,"春節Bonus Rainイベントが#time#に開放されます。#time1#、 #time2#、 #time3#、 #time4#、 #time5#に毎回全サーバーでビッグBonusが登場！主君の皆さま、準備はいいですか?",},
        [150] = {920,"春節ビッグBonusです。次のボーナスは#time#に到来！",},
        [151] = {921,"今回の春節Bonus Rainイベントは終了しました。次のイベントをお楽しみに！",},
        [152] = {922,"元宝の雨の#count#Bonus、計#worth#元宝は、#time#に争奪完了。#legion##name2#は運よく、#number#元宝を獲得しました。",},
        [153] = {923,"スゴい！#player#が#equipment1#を#equipment2#に限界突破させました！",},
        [154] = {924,"すごいです！#player#は#treasure1#を#etreasure2#に限界突破させました！",},
        [155] = {925,"#time#より、Bonus Rainが開放されます。袖をまくって奪取しましょう！",},
        [156] = {926,"Bonus Rainイベント終了！#legion##name#が今回のイベントで運良く計#money#元宝を獲得しました！",},
        [157] = {1000,"始皇帝陵はパーティ結成で速度アップ！(人数#number#/#people_number#)#0x2f9f07[タップでパーティ加入]# ",},
        [158] = {1001,"#player#は部隊を離脱しました。",},
        [159] = {1002,"#player#が部隊に加入",},
        [160] = {1003,"#player#は除隊されました",},
        [161] = {1004,"#player#が隊長に就任",},
        [162] = {1005,"#player#が#goods#を獲得しました",},
        [163] = {1006,"部隊のターゲットを#name#、Lv#level_min#～#level_max#に変更します",},
        [164] = {1007,"始皇帝陵は部隊結成で、スピードアップ！(人数#number#/#people_number#)#0x2f9f07[タップして参加]# (部隊はすでに帝陵内にいます)",},
        [165] = {1008,"#name0#は撃破され、#name1#が#goods#を獲得しました",},
        [166] = {1009,"前線の密偵から報告！精鋭モンスター#name#が[#place#]に出現しました！急ぎ現場へ向かい、撃破してください！",},
        [167] = {1010,"#name0#が撃破され、#name1#は#goods#を、#name2#は#goods#を獲得しました",},
        [168] = {1011,"#name0#は撃破されました。#name1#は#goods#、#name2#は#goods#、#name3#は#goods#を獲得しました",},
        [169] = {1012,"#name1#が始皇帝陵で#name0#を倒しました。",},
        [170] = {1013,"#name1#が始皇帝陵で#name0#を倒しました。",},
        [171] = {1014,"あなたの部隊はこの怪物に50%以上のダメージを与えられなかったため、今回は報酬を獲得できません",},
        [172] = {1015,"#name0#は撃破されました",},
        [173] = {1016,"#name0#は#place#で#name1#を撃破。#goods#を獲得しました。絶好調ですね！",},
        [174] = {1017,"帝陵のイベント時間を使い切ったので、協力時間の消費を開始します。",},
        [175] = {1101,"#name#は#guild#軍団を率いて奮戦し、守衛を倒してみごとに領地を奪いました。",},
        [176] = {1102,"#guild#軍団が#position#を占領。拠点の産出物資を安定獲得するでしょう。",},
        [177] = {1103,"#guild1#軍団が#guild2#軍団から#position#の支配権を奪取しました！",},
        [178] = {1104,"おめでとうございます！軍団#guild#が今回の軍団戦で優勝しました。本当に威風堂々として、気概山河を呑み、英雄然としているのはあなただけです！",},
        [179] = {1105,"今回のクロスサーバー軍団戦の参戦軍団が決定しました。ご覧ください",},
        [180] = {1106,"おめでとうございます！軍団#guild#が今回の軍団戦で2位になりました。次回さらに精進してください。天下を取るのは誰だ！",},
        [181] = {1107,"おめでとうございます！軍団#guild#は今回の軍団戦で3位になりました。次回さらに精進してください。天下を取るのは誰だ！",},
        [182] = {1200,"主君#name#は巧みな技術により、利き馬学堂で#goods#を手懐けました！",},
        [183] = {1300,"#name#は豪華カード受領時に#goods#を獲得。なんという運の良さでしょう！",},
        [184] = {1301,"#name#は親密度カード受領時に思いがけず#goods#を獲得。運気爆発です！",},
        [185] = {1401,"クロスサーバー決闘大会開始まで残り5分です。必勝態勢で臨んでくださいね！",},
        [186] = {1402,"クロスサーバー決闘大会が開放されました。所属サーバー覇者を応援しましょう！各試合で参戦者1人を[応援]し、そのプレイヤーが昇格すれば、玉魂を獲得できます。",},
        [187] = {1403,"おめでとうございます！所属サーバーの覇者#name#が、クロスサーバー決闘大会緒戦で勝利し、16強に進出しました！",},
        [188] = {1404,"おめでとうございます！本サーバーの覇者#name#がクロスサーバー決闘大会でベスト8に昇格しました！",},
        [189] = {1405,"おめでとうございます！所属サーバの覇者#name#が、クロスサーバー決闘大会でさらに一城を降し、4強に昇格しました！",},
        [190] = {1406,"おめでとうございます！所属サーバーの覇者#name#がクロスサーバー決闘大会を破竹の勢いで勝ち進み、決勝に進出しました！",},
        [191] = {1407,"私の影の中では、お前らなどみな弱者！私の名は#server##name#、クロスサーバー決闘大会の王者！阻むことも、逆らうこともできない、私こそが無双の覇者だ！",},
        [192] = {1408,"今回のクロスサーバー決闘大会決勝戦で、#server#の#name#は一歩及ばず準優勝となりました。勝敗は兵家の常、来週は捲土重来を果たします！",},
        [193] = {1409,"今回のクロスサーバー決闘大会は終了しました。#server1##name1#、#server2##name2#、#server3##name3#、#server4##name4#が今回の4強でした。彼らを祝福してあげましょう！",},
        [194] = {1410,"クロスサーバー決闘大会は終了しました。所属サーバーの覇者は#name1##number1# #name2##number2# #name3##number3# #name4##number4#。成績は全サーバーランキングで1位でした。オークション報酬+100%！",},
        [195] = {1411,"クロスサーバー決闘大会は終了しました。所属サーバーの覇者は#name1##number1# #name2##number2# #name3##number3# #name4##number4#。成績は全サーバーランキングで2位でした。オークション報酬+50%！",},
        [196] = {1412,"クロスサーバー決闘大会は終了しました。所属サーバーの覇者は#name1##number1# #name2##number2# #name3##number3# #name4##number4#。成績は全サーバーランキングで3位でした。オークション報酬+40%！",},
        [197] = {1413,"クロスサーバー決闘大会は終了しました。所属サーバーの覇者は#name1##number1# #name2##number2# #name3##number3##name4# #number4#。成績は全サーバーランキングで4位でした。オークション報酬+30%！",},
        [198] = {1414,"クロスサーバー決闘大会は終了しました。所属サーバーの覇者は#name1##number1# #name2##number2# #name3##number3# #name4##number4#。成績は全サーバーランキングで5位でした。オークション報酬+25%！",},
        [199] = {1415,"クロスサーバー決闘大会は終了しました。所属サーバーの覇者は#name1##number1# #name2##number2# #name3##number3# #name4##number4#。成績は全サーバーランキングで後ろから3番目でした。オークション報酬+20%！",},
        [200] = {1416,"クロスサーバー決闘大会は終了しました。所属サーバーの覇者は#name1##number1# #name2##number2# #name3##number3# #name4##number4#。成績は全サーバーランキングで最後から2番目でした。オークション報酬ボーナスはありません。",},
        [201] = {1417,"クロスサーバー決闘大会が終了しました。当サーバーの覇者は#name1##number1# #name2##number2# #name3##number3# #name4##number4#です。当サーバーの成績は全サーバー中最下位でしたので、オークション報酬の追加はありません。",},
        [202] = {1418,"リアルタイム戦報！#round#終了後、所属サーバーのポイントは#score#。全サーバー中#rank#位でした。覇者さま、引き続き精進してください。",},
        [203] = {1419,"#round#終了後、#Sever#の覇者、#name1# #name2# #name3# #name4#の全員が敗退したのにはガッカリしましたね。",},
        [204] = {1420,"クロスサーバー決闘大会32強の対戦表が生成されました。覇者たちの英姿を観戦しよう！己を知り彼を知れば、百戦危うからず",},
        [205] = {1421,"クロスサーバー決闘大会予想が始まりました！試合開始前に結果を予測してください。的中した主君はたくさんの報酬を獲得できます。本陣で策を練り、千里の外で勝ちを制す！",},
        [206] = {1422,"クロスサーバー決闘大会のクロスサーバーチャットが始まります！三寸の舌で百万の兵に勝つ、群儒との舌戦は主君次第ですよ！",},
        [207] = {1423,"今回の[#activity#]オークションは終了しました。参加者は全員#gold#の配当報酬を獲得できます。陣営競技が本陣営前20位のプレイヤーは追加で#yubi#の配当報酬を獲得できます。メールから受領ください。",},
        [208] = {1424,"今回の[#activity#]オークションは終了しました。参加者は全員#gold#の配当報酬を獲得できます。メールから受領ください。",},
        [209] = {1500,"妻よ、幸運の持ち主はあの方だ。主君#name#が、いとも簡単に#id#を開けると、なんとお宝の#jade#が入っていたんだよ！",},
        [210] = {1501,"原石は無数にあれど、極上品は一握り。ラッキーな者は笑顔になり、アンラッキーは涙を流す。主君#name#は神力を集めて#id#を切り開き、宝物#jade#を見つけました！",},
        [211] = {1600,"私、#server#の#name#は武将(金)#goods#を登用しました。反対の者はいますか?賛成の者は?",},
        [212] = {1601,"今回のお楽しみガチャの結果です。#server1#おめでとう、#goods#x#num#を獲得しました。",},
        [213] = {1603,"今回のお楽しみガチャは終了しました。#server1#の#name1#はポイントランキング第1位で、今回のポイントランキング大賞を獲得されました！",},
        [214] = {1604,"今回の武将(金)登用イベントは終了しました。#server1##name1#が頭角を現してポイントランキング1位となり、四方の英雄を睥睨しています！",},
        [215] = {1605,"おめでとうございます、#server##name#が#goods##num#を獲得しました！",},
        [216] = {1606,"真龍降臨イベントが開放されました。武将(金)が大量に登場しますよ！",},
        [217] = {1607,"お楽しみガチャが始まりました。賞品は#goods#x#num#、当選者は#number#名。あなたは幸運な主君です。行け～！",},
        [218] = {1700,"すごい！#player#が#pet1#を#pet2#に限界突破させました！",},
        [219] = {1800,"所属サーバー饗宴の宴イベントは終了しました。#name1#軍団 #name2#軍団 #name3#軍団は一致団結してトップ3にランクインし、本サーバーを代表して、クロスサーバーの饗宴の宴イベントに参加されます！ ",},
        [220] = {1801,"所属サーバーの饗宴の宴イベントは終了しました。#name1# #name2# #name3#が輝かしい功績を挙げ、ベスト3位にランクインしました！ ",},
        [221] = {1802,"クロスサーバーの饗宴の宴イベントは終了しました。#server1# #name1#軍団 #server2# #name2#軍団 #server3# #name3#軍団がトップ3にランクインされました！",},
        [222] = {1803,"クロスサーバーの饗宴の宴イベントは終了しました。#server1# #name1# #server2# #name2# #server3# #name3#は軍団のために赫々たる功績を挙げ、トップ3にランクインされました！ ",},
        [223] = {1804,"饗宴の宴イベントが開放されました！軍団みんなで一致協力して大きな力を発揮しましょう！",},
        [224] = {1805,"クロスサーバーの饗宴の宴イベント開放！さあ急げ！",},
        [225] = {1806,"#name#は豪気天を衝くようです。功績商店で武将(金)#goods#を手に入れました！",},
        [226] = {1901,"#name#は神樹の庇護を受け、今回は誤答してもペナルティなし。",},
        [227] = {1902,"#name1#は神樹の強化を受け、機に乗じて#name2#の#integral#ptを奪いました！",},
        [228] = {1903,"#name1#が乾坤一擲、#num1#道の選手#name2#を応援するため、応援券#num2#枚を購入しました",},
        [229] = {1904,"#name1#は#name2#に#integral#ptを奪われました！",},
        [230] = {1905,"#name#は神樹の加護により、戦死後その場で復活しました。態勢を立て直し、捲土重来！",},
        [231] = {1906,"#name#が華容道で慧眼を発揮し、応援券#num#枚を獲得しました！",},
        [232] = {2001,"酒杯執りて仙林隠れ、糧を守りて乱世を行く。暗渡陳倉イベントが始まりました。所属軍団の兵糧輸送車をしっかり守りましょう。",},
        [233] = {2002,"暗渡陳倉イベントは終了しました。喜びもあれば、愁いもありましたか?",},
        [234] = {2003,"所属軍団の兵糧輸送車が出発しました。急ぎ保護に向かってください。",},
        [235] = {2004,"所属軍団の兵糧輸送車が無事到着しました。皆さん、さすがです。",},
        [236] = {2005,"残念ながら所属軍団の兵糧輸送車が破壊されました。与ダメージの高かった軍団は#name1# #name2# #name3#です。",},
        [237] = {2006,"#guild#軍団の#player#がさきほど本軍団の#graincar#を攻撃しました！",},
        [238] = {2007,"#guild#軍団の#graincar#が食糧輸送中に破壊されました。与ダメージの高かった軍団は#name1# #name2# #name3#です。",},
        [239] = {2008,"#guild#軍団の#graincar#がゴールに到着。巧みに御して機先を制す。賢人は効率良く勝利を得る。",},
        [240] = {2101,"主君の皆さま、クロスサーバーBOSSが#min#分後に来襲します。どうぞ準備を整えてください！",},
        [241] = {2102,"主君の皆さま、クロスサーバーBOSSが開放されました！どうぞ挑戦にお進みください！",},
        [242] = {2103,"#name1#が#server#の#name2#から#integral#ptを奪いました！",},
        [243] = {2104,"#name1#が#server#の#name2#に#integral#pt奪われました！",},
        [244] = {2105,"#name1#は腕が及ばず、#server#の#name2#略奪に失敗しました！",},
        [245] = {2106,"#monster#がチャージ状態に入りました。主君の皆さん、慎重に行動してくださいね！",},
        [246] = {2107,"所属軍団が協力して適宜対応し、#monster#が虚弱状態に陥りました。急ぎ攻撃してください！",},
        [247] = {2108,"#server#の#guild#軍団が力を合わせて、#monster#のチャージ状態を断ち切りました！",},
        [248] = {2109,"#monster#は次々に大技を繰りだし、一気にわが軍団から合計#point#ポイント奪いました！",},
        [249] = {2110,"#server#の#guild#軍団は撃破に失敗し、#monster#に#point#pt奪われました！",},
        [250] = {2111,"おめでとうございます！#server##guild#の#name#は今回のクロスサーバーBOSSで1位を獲得しました！",},
        [251] = {2112,"#server#の軍団[#guild#]が今回のクロスサーバーBOSSイベントで、団員が一致協力して1位を獲得しました！",},
        [252] = {2113,"千載一隅！みんなも大喜び！#server#の軍団[#guild#]が今回の[#activity#]イベント、完全な武将#hero#を獲得しました！こんなに強い軍団は広く愛されていることでしょう！",},
        [253] = {2114,"[#activity#]オークションは#min#分後に開始されます。今回の品: #goods#",},
        [254] = {2115,"[#activity#]オークションは始まっています。今回の競売品: #goods#。",},
        [255] = {2116,"今回の[#activity#]では軍団隊員の参加人数が少なく、オークションアイテムを獲得できませんでした。主君の皆さま、どうぞ頑張ってくださいね。",},
        [256] = {2117,"#guild#のお金持ちが、#number#元宝で武将(赤)#hero#を競り落としました！庭付きの広い屋敷で楽しく暮らしています。",},
        [257] = {2118,"主君#name#は#goods#を即決価格#number#元宝で競り落としました！",},
        [258] = {2119,"今回の[#activity#]オークションは終了しました。参加者は全員#number#元宝の配当報酬を獲得できます。メールから受領ください。",},
        [259] = {2120,"[#activity#]流札商品は#min#分後から全サーバー共通オークションに欠片れます。今回の品: #goods#",},
        [260] = {2121,"全サーバー共通オークションが始まりました。今回の品: #goods#",},
        [261] = {2201,"真武戦神のトーナメント表が発表しました。",},
        [262] = {2202,"真武戦神予想が始まりました。主君は好きな選手を投票してください。応援正解の回数が多いほど、報酬が豊富になります。",},
        [263] = {2203,"真武戦神は5分後に開始します。主君は選手を応援してください。",},
        [264] = {2204,"真武戦神は時間通りに開催します。",},
        [265] = {2205,"おめでとうございます！#name#が勝利し、進出しました！",},
        [266] = {2206,"おめでとうございます！本サーバー覇主#name#が真武戦神で勝利し、第二回戦に進出しました。",},
        [267] = {2207,"おめでとうございます！本サーバー覇主#name#は真武戦神で準々決勝に進出しました。",},
        [268] = {2208,"おめでとうございます！本サーバー覇主#name#が真武戦神で準決勝に進出しました。",},
        [269] = {2209,"おめでとうございます！本サーバーの覇主#name#が真武戦神で決勝戦に進出しました。",},
        [270] = {2210,"#server##name#が真武戦神になりました。",},
        [271] = {2211,"今回の真武戦神決勝戦で、#server##name#が準優勝を勝ち取りました。",},
        [272] = {2212,"今回の真武戦神が終了しました。#server1##name1#、#server2##name2#、#server3##name3#、#server4##name4#は今回のベスト4です、おめでとうございます！",},
        [273] = {2213,"真武戦神の#round#が終了しました。次の予想が始まりました。早く好きな選手を応援しましょう！",},
        [274] = {2301,"一円から入札が始まりました。",},
        [275] = {2302,"1円から入札が終わりました。",},
        [276] = {2303,"#sever#の#guild##name#が#price#玉璧の価格で#subject#を競り落しました！",},
        [277] = {2401,"#name#は祈霊で星3神獣(赤)#goods#を獲得しました！",},
        [278] = {2402,"#name#が#goods#の目を引きつけた！",},
        [279] = {2403,"#name#が明鏡簽影で#goods#変身カードを獲得しました！",},
        [280] = {2500,"#pit#戦報: #server1##legion1#の#player#が#server2##legion2#の#playerlist#倒しました！",},
        [281] = {2501,"#pit#戦報: #server1##legion1#の#player1#が#server2##legion2#の#player2#に倒されました！",},
        [282] = {2502,"#pit#戦報: #name1#が#monster#に勝利しました！",},
        [283] = {2503,"#pit#戦報: #palyer#が#monster#に出会い、敗北しました。",},
        [284] = {2504,"#pit#戦報: #palyer#が#monster#に敵わず、敗北しました。",},
        [285] = {2505,"#server##legion#が#pit#を占領しました！",},
        [286] = {2506,"#server1##legion1#は#server2##legion2#が占領中の#pit#を攻め落とした！",},
    },

    -- index
    __index_id = {
        [100] = 13,
        [1000] = 157,
        [1001] = 158,
        [1002] = 159,
        [1003] = 160,
        [1004] = 161,
        [1005] = 162,
        [1006] = 163,
        [1007] = 164,
        [1008] = 165,
        [1009] = 166,
        [101] = 14,
        [1010] = 167,
        [1011] = 168,
        [1012] = 169,
        [1013] = 170,
        [1014] = 171,
        [1015] = 172,
        [1016] = 173,
        [1017] = 174,
        [110] = 15,
        [1101] = 175,
        [1102] = 176,
        [1103] = 177,
        [1104] = 178,
        [1105] = 179,
        [1106] = 180,
        [1107] = 181,
        [111] = 16,
        [112] = 17,
        [113] = 18,
        [114] = 19,
        [120] = 20,
        [1200] = 182,
        [121] = 21,
        [122] = 22,
        [123] = 23,
        [124] = 24,
        [125] = 25,
        [126] = 26,
        [127] = 27,
        [128] = 28,
        [129] = 29,
        [130] = 30,
        [1300] = 183,
        [1301] = 184,
        [131] = 31,
        [132] = 32,
        [133] = 33,
        [134] = 34,
        [135] = 35,
        [136] = 36,
        [137] = 37,
        [138] = 38,
        [139] = 39,
        [140] = 40,
        [1401] = 185,
        [1402] = 186,
        [1403] = 187,
        [1404] = 188,
        [1405] = 189,
        [1406] = 190,
        [1407] = 191,
        [1408] = 192,
        [1409] = 193,
        [141] = 41,
        [1410] = 194,
        [1411] = 195,
        [1412] = 196,
        [1413] = 197,
        [1414] = 198,
        [1415] = 199,
        [1416] = 200,
        [1417] = 201,
        [1418] = 202,
        [1419] = 203,
        [142] = 42,
        [1420] = 204,
        [1421] = 205,
        [1422] = 206,
        [1423] = 207,
        [1424] = 208,
        [143] = 43,
        [144] = 44,
        [145] = 45,
        [146] = 46,
        [147] = 47,
        [148] = 48,
        [149] = 49,
        [150] = 50,
        [1500] = 209,
        [1501] = 210,
        [151] = 51,
        [152] = 52,
        [153] = 53,
        [154] = 54,
        [155] = 55,
        [156] = 56,
        [157] = 57,
        [158] = 58,
        [1600] = 211,
        [1601] = 212,
        [1603] = 213,
        [1604] = 214,
        [1605] = 215,
        [1606] = 216,
        [1607] = 217,
        [161] = 59,
        [162] = 60,
        [163] = 61,
        [164] = 62,
        [165] = 63,
        [166] = 64,
        [1700] = 218,
        [1800] = 219,
        [1801] = 220,
        [1802] = 221,
        [1803] = 222,
        [1804] = 223,
        [1805] = 224,
        [1806] = 225,
        [1901] = 226,
        [1902] = 227,
        [1903] = 228,
        [1904] = 229,
        [1905] = 230,
        [1906] = 231,
        [20] = 1,
        [2001] = 232,
        [2002] = 233,
        [2003] = 234,
        [2004] = 235,
        [2005] = 236,
        [2006] = 237,
        [2007] = 238,
        [2008] = 239,
        [203] = 65,
        [204] = 66,
        [205] = 67,
        [206] = 68,
        [207] = 69,
        [208] = 70,
        [209] = 71,
        [21] = 2,
        [210] = 72,
        [2101] = 240,
        [2102] = 241,
        [2103] = 242,
        [2104] = 243,
        [2105] = 244,
        [2106] = 245,
        [2107] = 246,
        [2108] = 247,
        [2109] = 248,
        [211] = 73,
        [2110] = 249,
        [2111] = 250,
        [2112] = 251,
        [2113] = 252,
        [2114] = 253,
        [2115] = 254,
        [2116] = 255,
        [2117] = 256,
        [2118] = 257,
        [2119] = 258,
        [212] = 74,
        [2120] = 259,
        [2121] = 260,
        [213] = 75,
        [214] = 76,
        [215] = 77,
        [216] = 78,
        [217] = 79,
        [218] = 80,
        [219] = 81,
        [220] = 82,
        [2201] = 261,
        [2202] = 262,
        [2203] = 263,
        [2204] = 264,
        [2205] = 265,
        [2206] = 266,
        [2207] = 267,
        [2208] = 268,
        [2209] = 269,
        [221] = 83,
        [2210] = 270,
        [2211] = 271,
        [2212] = 272,
        [2213] = 273,
        [222] = 84,
        [223] = 85,
        [224] = 86,
        [2301] = 274,
        [2302] = 275,
        [2303] = 276,
        [2401] = 277,
        [2402] = 278,
        [2403] = 279,
        [2500] = 280,
        [2501] = 281,
        [2502] = 282,
        [2503] = 283,
        [2504] = 284,
        [2505] = 285,
        [2506] = 286,
        [30] = 3,
        [301] = 87,
        [302] = 88,
        [303] = 89,
        [304] = 90,
        [305] = 91,
        [31] = 4,
        [32] = 5,
        [401] = 92,
        [402] = 93,
        [403] = 94,
        [404] = 95,
        [405] = 96,
        [41] = 6,
        [42] = 7,
        [500] = 97,
        [501] = 98,
        [502] = 99,
        [503] = 100,
        [504] = 101,
        [505] = 102,
        [506] = 103,
        [507] = 104,
        [508] = 105,
        [509] = 106,
        [51] = 8,
        [510] = 107,
        [511] = 108,
        [60] = 9,
        [601] = 109,
        [602] = 110,
        [603] = 111,
        [604] = 112,
        [605] = 113,
        [606] = 114,
        [607] = 115,
        [608] = 116,
        [609] = 117,
        [610] = 118,
        [611] = 119,
        [70] = 10,
        [701] = 120,
        [702] = 121,
        [710] = 122,
        [720] = 123,
        [730] = 124,
        [731] = 125,
        [740] = 126,
        [80] = 11,
        [800] = 127,
        [801] = 128,
        [90] = 12,
        [900] = 129,
        [901] = 130,
        [902] = 131,
        [903] = 132,
        [904] = 133,
        [905] = 134,
        [906] = 135,
        [907] = 136,
        [908] = 137,
        [909] = 138,
        [910] = 139,
        [911] = 140,
        [912] = 142,
        [913] = 143,
        [914] = 144,
        [915] = 145,
        [916] = 146,
        [917] = 147,
        [918] = 148,
        [919] = 149,
        [920] = 150,
        [921] = 151,
        [922] = 152,
        [923] = 153,
        [924] = 154,
        [925] = 155,
        [926] = 156,
        [941] = 141,
    }
}

return paomadeng