--instrument

local instrument = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --id-int 
      name = 2,    --名称-string 
      instrument_description = 3,    --神兵描述-string 
      hero = 4,    --相关武将-string 
      description = 5,    --神兵+25特性描述-string 
      description_1 = 6,    --神兵+50特性描述-string 
      description_2 = 7,    --神兵+75特性描述-string 
      description_3 = 8,    --神兵+100特性描述-string 
    
    },
    -- data
    _data = {
        [1] = {1,"裂天龍胆槍","龍胆宝石を装着した玄鉄の長槍は非常に強力で、裂天の力を持つ。","男性プレイヤー","奥義与えダメージ+25%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [2] = {2,"唯我鳴鴻刀","黄帝が鍛えたと伝わる宝刀。この上なく豪奢で刀身は鋭く、鉄も難なく斬れる。","女性プレイヤー","奥義与えダメージ+25%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [3] = {101,"梟首の杖","鋭い刃を持ち、冷ややかな光を放つ。梟の羽毛が散りばめられている様は、鬼神も恐れんばかりの不気味さで、鬼才というに相応しい。","司馬懿","40%の確率で奥義を1回追加し、敵全員に41%の魔法ダメージを与える(追加奥義には特性付加なし)","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [4] = {102,"碧玉の簫","君子に傷なく、碧玉透きとおる。荀彧が持っている碧玉の蕭は手触りが滑らかで、内側から微かな光を瞬かせ、無限の活力を秘めている。","荀彧","奥義による回復量+25%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [5] = {103,"孟徳剣","魏の武帝、曹操の愛剣。外観は豪奢、長さは八尺あまりの幅広剣。曹操の戦いの生涯に常に伴い、数多くの功を立てた。まさに曹操にふさわしい剣。","曹操","全出陣武将の会心率+30%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [6] = {104,"千軍扇","この扇を手に高くに登り遠くを望めば、千軍万馬が目の前にある。郭嘉が帷幄の中で計りごとを巡らせば、智計無双、曹操を助けて天下の半分を攻め落とす。","郭嘉","奥義発動後、自身の怒気を1pt回復する。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [7] = {105,"剛烈修羅刀","剛烈兄貴の修羅刀。刃が棘と化す。全体が暗紅色。この刀を帯びて出陣すると、狂刀は血を求め、戦うほどに強くなる。","夏侯惇","通常攻撃で直接ダメージを受けたとき、自身の怒気を1pt回復する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [8] = {106,"獅首玄鉄盾","曹仁の武器は当然ながら非常に堅固、タンクの名に恥じないものだ。","曹仁","戦闘不能時に100%の確率で自分を倒した武将をめまい状態にする","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [9] = {107,"絶情断魂鎌","張春華は生涯 司馬懿から離れなかった。無情のように見えてじつは情け深く、ずっと愛に苦しんだ。この剣は母子の剣で、敵と対峙すると防ぐことが困難であるほど様々に変幻する。","張春華","奥義与えダメージ+25%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [10] = {108,"甘露鈴蘭灯","敵が灯篭から伝わる花の香りと蛍の光で惑わされている時、自分がすでに死んでいることにすら気づかない。","王元姫","直接ダメージでターゲットを倒すと、自身の怒気を1pt回復する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [11] = {109,"破天の鎌","柄の長い鎌で、刃とトゲを有す。斬る、刺す、引っかけると様々に活用でき、敵軍が防ぐのを困難にする。","張遼","自身の怒気を毎ターン1pt回復する。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [12] = {110,"沁骨の絶爪","情け容赦なく鋭い双爪で刺し、頭蓋骨を砕く。敵の機先を制して接近し、瞬時にその命を奪う。","張郃","全出陣武将の会心率+20%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [13] = {111,"滅魂の爪","無限の闇の気を吸収し、無秩序で雑多な魂を粛清する。曹丕は叫ぶ、「裏返してくれ！」と。お前、怖いのか！！！","曹丕","目標が1人減る毎に、ダメージ+10%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [14] = {112,"洛神の砕雲鞭","この鞭には仕掛けがあり、トゲの出し入れが可能なため、攻守ともに様々な使い方ができる。その千変万化の様は洛神が舞うようでもあり、霊蛇が這い出てくるようでもあり、人の目をくらませる","甄姫","奥義の直接ダメージの50%をHPに転化し、HPが最も少ないチームメンバーを回復する。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [15] = {113,"狼牙流星錘","この流星錘は途方もない武器。全体に鈎があり、威力抜群。万兵に囲まれても一振りで数人をなぎ倒す。","許褚","通常攻撃の直接ダメージの50%を回復に転化し、自身を回復する。","0","0","0",},
        [16] = {114,"鋭利な長柄斧","徐晃は布飾りの兜が好きすぎて、それに合わせるために大金をはたいてこの斧を手に入れた。白くピカピカ光っており、兜にぴったりの斧だったからだ。","徐晃","出撃最初のターンで与えるダメージが必ず会心になる","0","0","0",},
        [17] = {115,"猟豹の弓","この弓は非凡な力を持つ。豹の頭は腕の部分を覆い、矢は口から射出する際に速度が増幅されるため、豹のように快速で飛翔する。","夏侯淵","沈黙効果の付加率が70%に上昇","0","0","0",},
        [18] = {116,"車輪手裏剣","楽進は若い頃に西域に遊歴し、金輪法王に師事して武芸を学び、一人前になったとき、法王からこの武器を賜った。","楽進","奥義発動で付与するめまい効果の確率が80%に上昇","0","0","0",},
        [19] = {117,"悪来の双戟","典韋の双戟は重さ80斤で非常にどっしりしており、1人で敵10人は防げる。勇猛さは虎を谷川に追い詰めるほどで無双。","典韋","奥義直接ダメージの40%をHPに転換し、HP最少のチームメンバーを回復する","0","0","0",},
        [20] = {118,"魚腸剣","伝説ではこの魚腸剣は刀鍛冶の欧冶子によって作られ、後に辛憲英が偶然に手に入れた。敵がどんな甲冑を着込んでいても、魚腸剣は一撃で突き破れる。","辛憲英","シールドがチームメンバーの被ダメージを軽減する割合が45%に上昇","0","0","0",},
        [21] = {119,"疾風の刃","疾風剣豪の剣、疾風剣豪の羽織、疾風剣豪の熟年スタイルだ～。","于禁","受けた奥義直接ダメージの20%をHPに転換し、自身を回復する","0","0","0",},
        [22] = {201,"神威龍胆槍","龍の如き威力に、赤誠の忠心。その槍は放れば銀龍となり、万丈の高みから急降下して、敵を木っ端微塵にする。","趙雲","直接ダメージでターゲットを倒すと、通常攻撃を1回追加する(追加された通常攻撃は怒気を回復しない)","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [23] = {202,"雌雄双股剣","1振りは青、もう1振りは紫の剣。それぞれ青龍と紫龍が変化したもので、所有者は九五之尊(帝王の位)に就けるといわれている。また、双股剣を融合させて1振りの大剣にすると、天地の精髄を引き寄せ、仁徳を広めることができる。","劉備","受けた直接ダメージの18%をHPに転換し、味方全員を回復する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [24] = {203,"七星羽扇","扇骨は白玉、扇面は鷹の羽で作られている。7つの星が散りばめられ、八卦が象嵌されており、振りかざせば臥龍が尾を振るったがごとく風雨を呼び、天下への道を指し示すという。","諸葛亮","奥義発動後に目標の怒気-1pt。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [25] = {204,"木牛流馬","胴は四角く頭は丸みを帯び、4本の脚がある。胴から頭が出ていて、舌は胴と繋がっている。荷を多く積むとあまり進めないが、屈強な者なら数十里進める。2本の轅で牛を支え、人が6尺進めば、牛は四歩進む。","黄月英","奥義発動後、全チームメンバーの怒気を1pt回復する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [26] = {205,"青龍偃月刀","関羽の愛刀。刀の柄は青龍の化身したものだと伝わる。刀身は半月状で刃はとても鋭い。百万軍の中でも敵大将の首級をたやすくとったと言う。","関羽","直接ダメージでターゲットを倒すと、自身の怒気を1pt回復する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [27] = {206,"丈八蛇矛","桃園の誓いのさい、中山の豪商から銀五百両と精鋼一千斤の援助を受けて作られた鋼の矛。柄が一丈八尺と長く、両刃が蛇のようにうねっているため、「丈八蛇矛」と呼ばれる。","張飛","自身のHP-10%、攻撃力+5%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [28] = {207,"虎頭湛金槍","馬超の母は羌族であったため、この槍は羌族の秘法によって鍛造され、重さは80斤あった。錐状の槍先は敵に突き刺せば、瞬時に肋骨や五臓六腑を打ち砕く。","馬超","受ける回復量+50%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [29] = {208,"銀刃烈火弓","黄忠のこの素晴らしい弓は、刀として近距離の敵を斬り、弓として遠距離射撃を行うことができる。魏の名将・夏侯淵はこの弓のもとに斃れた。","黄忠","直接ダメージでターゲットを倒すと、通常攻撃を1回追加する(追加された通常攻撃は怒気を回復しない)","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [30] = {209,"嶺雲の矛","深山で育った祝融は、山の木から長矛を作るのが得意。この矛は鋭利で、腕は精確、狙った獲物は逃がさない。","祝融","毎ターン自身の攻撃力+8%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [31] = {210,"震地の鎚","西南の大山から選りすぐった百年古木の中心部分から作った杭。普通の人は動かすこともできず、天生の神力を持つ者だけが使いこなせる。","孟獲","奥義発動時にめまい効果付与する確率が65%に上昇","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [32] = {211,"鳳凰の法杖","初めて龐統が山を下りた際、水鏡先生は鳳凰の法杖を渡し、英明な君主を補佐するよう言いつけた。のちに龐統はこの杖を用い、劉備が帝位に就くのを助けた。","龐統","全出陣武将の会心率+20%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [33] = {212,"無影傘剣","徐庶は若い頃は侠客をしていたが、のちに剣を捨て、学問に励んだ。人から非難されるのを恐れ、いつも仕込み傘を持っていた。敵にあったら不意を突き、ひと言も発することなく命を奪った。","徐庶","奥義発動後、自身の怒気を1pt回復する。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [34] = {213,"嗜血の鎌","柄は金製。血を混ぜて焼き入れされたため、血を好む鎌となった。敵将は必ず血まみれになる。","魏延","直接ダメージで目標を1体撃破するたびに、自身の攻撃力+8%","0","0","0",},
        [35] = {214,"金龍連弩","諸葛亮は諸葛連弩を発明し、自ら作ったこの弩を姜維に伝えた。この弩は矢を数本番えて瞬時に連発でき、非常に威力が高い。","姜維","戦闘不能時に1回奥義を発動する","0","0","0",},
        [36] = {215,"蜀の青竹","パンダのグングンは竹が大好物。だから阿斗は竹で小剣を作ったら、劉備パパに拳骨を喰らった。","阿斗","シールドが自身の受けた直接ダメージを軽減する割合が45%に上昇","0","0","0",},
        [37] = {216,"青蓮","華佗に師事し、左慈からも手ほどきを受けた小さな青蓮。可憐で活力に満ちあふれており、出陣する主君の憂いを取り払う。","張星彩","戦闘不能時に1回奥義を発動する","0","0","0",},
        [38] = {217,"偃月長刀","関羽は銀屏のために自ら偃月長刀を作った。偃月の青光、きらり輝く。","関銀屏","直接ダメージでターゲットを倒すと、自身のHPを20%回復","0","0","0",},
        [39] = {218,"龍鱗刀","関銀屏の偃月長刀製作で余った素材で作られたといわれる。仕方ない、我らが武聖も自分の娘は可愛いかったのだろう。","関平","奥義で与えるダメージ+15%。","0","0","0",},
        [40] = {219,"騰蛇の法杖","絡まり合う三匹の金蛇の形状を持つ法杖。一目見ただけで法正に幻惑され、身動きができなくなるらしい。","法正","麻痺効果の付加率が70%に上昇","0","0","0",},
        [41] = {301,"金龍神鐧","孫策の双鐗は古代の神器を用いて鍛えられたもので、仕掛けを内蔵しており、変形させて鉄拳にすることができる。その巧妙さは、小覇王・孫策の蓋世の英姿を物語っている。","孫策","攻撃時、対やけどターゲット会心率+80%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [42] = {302,"蓮花幽傘","傘骨には瀟湘の翠竹、柄には泰山の欅が使われ、傘表には九華粉で蓮が描かれている傘で、霊気を秘めている。霊気が満ちると、驚くほど軽快に飛ぶことができ、目も心も楽しませてくれる。","大喬","チームメンバーに付与する持続回復効果を大喬の攻撃力の32%にまで増強","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [43] = {303,"都督の狂刃","大都督が常に身に着けている佩刀はありふれた物ではない。長さは8尺余りで、全体が玉のように青く輝いている。主人の心と通じており、抜刀すれば千軍万馬を呼び、大都督の雄姿を颯爽と見せる。","周瑜","通常攻撃を受けると、80%の確率で攻撃者をやけど状態にする。2ターン持続","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [44] = {304,"星華双扇","扇骨は金、扇面は絹でできており、豪奢な中にも雅びさと使いやすさを併せ持つ。持ち主同様しなやかな佇まいで素早く人を襲う様は、この上なく秀麗。","小喬","HP最少の味方武将2名に無敵の吸血盾を付与する。持続1ターン","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [45] = {305,"狂歌落日の弓","漢の武帝が霍去病に賜わったとされている弓。民間で忘れ去られていたのを、太史慈の父が偶然手に入れたという。太史慈は小さい頃からこの弓で騎射の練習をしていたが、一度だけこの弓をうっかりたき火の中に落として、両端が燃えてしまった。太史慈はこの件で父から大目玉を喰らったが、炎が消えずに纏わりついているのに弓は無傷ということにみな驚いた。以来、この弓は火炎の力を持ち、命中した人を燃やすようになった。太史慈の父は狂喜し、「我が息子は将来きっと大物になる」と言って大笑いした後、興奮のあまり世を去ったという。果たして長じた太史慈は非常に勇猛で、弓術は百発百中。みごと呉の大将軍になった。","太史慈","通常攻撃を受けたとき、50%の確率で攻撃した相手をやけど状態にする。2ターン持続","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [46] = {306,"青冥剣","孫権が皇帝を称してから急ぎ鋳造させた6振りの剣で、名はそれぞれ白虹、紫電、辟邪、流星、青冥、百里。だが彼はのちに青冥剣だけを好んで使った。","孫権","直接ダメージでやけど目標を撃破すると、自身に50%のHPを回復する。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [47] = {307,"滅天の錨","呂蒙は白い服を着て川を渡る際、百姓や商人に扮してこの船を使い、油断していた荊州の守衛を気絶させ、大軍を率いて荊州城に攻め入った。","呂蒙","奥義発動時ターゲットがやけど状態なら、めまい付与の確率が80%に上昇。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [48] = {308,"金翎刀","錦帆侠客・甘寧が持ち歩いている大刀はとても豪奢で、金細工が施され、とても偉そうに見える。鳳凰の羽、金の鈴同様、甘寧のトレードマーク。","甘寧","通常攻撃がやけどターゲットに与えるダメージ+80%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [49] = {309,"烈火の盾","古の詩に「刑天 干戚を舞わし、猛志もとより常にあり」とあるが、この「干」は盾を指し、まさに孫堅が盾を打つ際の姿である。孫堅の烈火の盾は極めて重く、表面の獣の首が猛虎のように出撃し、燃え盛る大火は消えることなく、敵をやけど状態にすることができる。","孫堅","やけど状態の敵から攻撃を受けた場合、受ける直接ダメージ-65%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [50] = {310,"羅刹輪","孫尚香は幼き頃より剣と槍を好んだので、孫堅が愛娘のためにこの双刀圏を探し得た。旋回すると夜空の満月のように美しく、その鋭さで敵を容易く肉片にする。","孫尚香","奥義発動後、通常攻撃を1回追加する(追加された通常攻撃は怒気を回復しない)","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [51] = {311,"灼月の刃","謙虚で慎み深く柔和な陸遜が燦めく剣を振り上げたとき、烈火が天を焦がすかような刃の輝きの中に、かすかに微笑む秀麗な顔が見えた。見つめる瞳は穏やかだが、うっかりすると燃やされてしまいそうだ。","陸遜","やけど付加率が96%に上昇","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [52] = {312,"天地弁当箱","北の冥き(くらき)海に怪魚がいた。その名前を鯤という。鯤の大きさは、ひと鍋では収まらないほどであった。鯤を食べるために、仙人達は天地霊石を使い、この天地弁当箱を作った。箱内は丸焼きの鯤のほかにいろんなお菓子があるよ～","孫茹","通常攻撃時、ターゲットの怒気-1pt","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [53] = {313,"無極棍","天地が開きしその印は我が永劫不朽の栄誉である。花果山に飽きて下界に降りれば、如意棒は無極の棍に変化し、連戦の日々に全身の血が滾る。烈火、灼熱、闘魂みなぎる。","凌統","通常攻撃を受けた際、40%の確率で攻撃者をやけど状態にする。持続2ターン","0","0","0",},
        [54] = {314,"断海の鞭","周瑜が黄蓋を打った時に用いたとされている鞭。打たれた黄蓋は尻の皮が裂けて寝台に横になることもできなかったという。ここまでして曹操に苦肉の策を信じさせた。","黄蓋","受ける回復効果+40%","0","0","0",},
        [55] = {315,"黄玉の笏","怖いか?私が手にしている黄玉の笏が。受けてみろ、この怒れる者の口撃を。","張昭","シールドが吸収する自身の攻撃による直接ダメージの割合を100%に増加する","0","0","0",},
        [56] = {316,"不屈の刃","刃は月の色の如く、切っ先は寒星の如し。胴には百龍蟠文が彫られている。振りかざせば銀河を掻き乱すも、不屈の刃は永遠に折れず、忠心を捧げて主を救う。","周泰","ターゲットを倒すと、自身の怒気を1pt回復","0","0","0",},
        [57] = {317,"逍遥琴","高山流水、十面埋伏、逍遥自在。琴音絶えず、軽く弾けば耳を悦ばし、強く弾けば敵を害す。","歩練師","奥義発動時ターゲットがやけど状態なら、めまい付与の確率が80%に上昇。","0","0","0",},
        [58] = {318,"驚天の弓","弓幹は象牙製で、宝石が散りばめられている。この弓を取り出せば、敵の首級を簡単に挙げることができる。","韓当","奥義がやけどターゲットに与えるダメージ+80%","0","0","0",},
        [59] = {319,"聚宝鉢","魯粛様は三国で最も裕福な家の息子、喜捨に熱心でも一生金に困ることはありません。なぜならば彼は福の神が人間界に落とした聚宝鉢を持っていて、財宝がいくらでも湧き出て来るからです。","魯粛","奥義攻撃を受けた場合、30%の確率で攻撃者をやけど状態にする。持続2ターン","0","0","0",},
        [60] = {401,"清浄の払子","上古から伝わった払子。見た目は平凡だが、非凡な力を持つ。静かなること深海の如し、動けば荒海の如し、仙剣を御すること蛟龍の如し、寒霜を映し凛冽たり。","左慈","奥義発動後のめまい付与の確率が70%に上昇","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [61] = {402,"天枢杖","華佗の友人の左慈が蟠桃の木枝から作った法杖。山登り、薬草採集では杖として道案内をし、診療所では薬としてHPを回復する。","華佗","目標のHPが10%減るごとに、与える回復量+5%。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [62] = {403,"方天画戟","三叉で2枚の刃を持ち、重さは百斤に達する。用法「援」は、斬り上げ、回し斬り、横刺し、切り裂きが可能。用法「内」は、反別、引っ掛け、ねじ込み、翻刺が可能。用法「搪」は、突き、突き刺し、叩き割りが可能。この戟を手に戦場を駆けた呂布は、変化極まりなく、戦意無双であっただろう。","呂布","直接ダメージでターゲットを倒すと、自身の怒気を2pt回復","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [63] = {404,"仙女の蓮華","天地の霊気を秘めた蓮の花。非常に気品があり、この上なく優美。","貂蝉","奥義直接ダメージの50%をHPに転換し、HP最少のチームメンバーを回復させる","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [64] = {405,"魔王の鈎爪","洛陽を炎上させ、最も気概のあった者の頭蓋骨を七星宝刀で削り出して作られた鈎爪。これを繰り出せば、必ず敵を仕留められる。","董卓","ダメージ軽減の盾が受けた直接ダメージを減少させる割合が50%に上昇する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [65] = {406,"覇天の斧","柄には西涼の古木の根、刃には精錬した涼州の玄鉄が使われている。全体が暗紫色で青玉の宝石が象眼されている。所有者に大将の気概を発揮させるが、青龍に遭遇すると災難に見舞われる。","華雄","直接ダメージでターゲットを倒すと、自身の怒気を1pt回復する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [66] = {407,"天涯悲琴","有名な才女の武器。馬頭、四角い胴、2本の弦を持つ、西域の特色が色濃い楽器。蔡文姫の波乱万丈の生涯を嫋嫋と奏でるさまは、泣いているようでも、訴えているようでもある。","蔡文姫","中毒効果の付加率が96%に上昇","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [67] = {408,"小方天画戟","武器の名称だけで、主人の身分が分かる。","呂霊雎","奥義発動後、自身の怒気を1pt回復する。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [68] = {409,"轟雷羊角杖","羊頭が象られた黄金の杖。絶大な力を秘めており、放出すれば天地は闇に包まれ、大波が稲妻のように押し寄せる。","張角","奥義発動後に目標の怒気-1pt。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [69] = {410,"千幻毒傀儡","于吉は木製の傀儡。腹部の空洞に仕込まれた毒液は少しの付着で命を奪える。","于吉","奥義発動後に目標の怒気-1pt。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [70] = {411,"真覇道剣","汝南の袁家は四世三公の一族で、屋敷には無数の宝物がある。この見事なまでに鋭利な宝剣は、天下を志す英雄に相応しい。故に袁紹に伝えられた。","袁紹","麻痺効果の付加率が50%に上昇","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [71] = {412,"伝国の玉璽","秦の丞相・李斯が、始皇帝の命を受けて和氏の璧に彫刻を施したもので、中国の正統な歴代皇帝の証し。4寸四方で、つまみ上部に5匹の龍が絡まっている。真龍天子がこの印を手に入れると、天下が得られるが、それ以外の者が手にすれば、非業の死を遂げやすくなるという。","袁術","奥義発動後、自身の怒気を1pt回復する。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [72] = {413,"裂空刀","裂空刀はとても長い。その長さは近接武器では最長。","顔良","出撃最初のターンで与えるダメージが必ず会心になる","0","0","0",},
        [73] = {414,"破岳錘","歳月は豚を殺す包丁、砕岳は角付きの錘。","文醜","直接ダメージで目標を1体撃破するたびに、自身の攻撃力+8%","0","0","0",},
        [74] = {415,"閻魔の筆","生死は私が決めるもの。賈詡の筆には毒汁がたっぷり仕込んであり、簡単に人を毒殺できる。","賈詡","奥義発動で付与するめまい効果の確率が80%に上昇","0","0","0",},
        [75] = {416,"龍泉剣","世の転変の激しさに飽いた古代の宝剣。お前が明君か忠臣か、邪悪な輩か梟雄かに関わらず、能力があるなら斬り、ないなら罵る。私はただ剣であり続けるだけだ。","陳宮","奥義で与えるダメージ+15%。","0","0","0",},
        [76] = {417,"春駒","幼いころ兄弟に梨を譲ってあげたことで、小さな竹馬が孔融の武器となった。孔子の子孫だとか、漢末の諸侯だとか、どうでもいい。","孔融","通常攻撃後に自身の怒気を1pt追加回復する。","0","0","0",},
        [77] = {418,"飛雲槍","公孫瓚は騎兵3千を率い、遼西烏桓を降した。烏桓の首領・貪至王は部族を率いて公孫瓚に投降し、この槍を献上した。名を飛雲槍という。","公孫瓚","通常攻撃ダメージの50%をHPに転換し、自身を回復する","0","0","0",},
        [78] = {419,"族滅の刃","このハサミは空からピューッと下りてきて、その力は誰にも防げない。ほらほら、股間をしっかり守らないと。","張譲","沈黙効果の付加率が80%に上昇","0","0","0",},
        [79] = {150,"幽冥誅仙刃","幽冥の力を用いて鋳造した刀。悪霊の魂が憑いており、使用者を駆り立てるといわれている。","司馬昭","女性武将を攻撃すると自身の怒気を2pt回復。男性武将を攻撃すると通常攻撃を1回追加し、最大HPの36%分のダメージを与える(追加された通常攻撃は怒気を回復せず、武将特性を発動しない)","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [80] = {151,"千葉流霜刀","風切羽のように軽い刃。全体が霜に覆われ、冷気を放っている。人はその名を聞いただけで肝を潰し、近づかない。","王異","敵武将が虚弱のせいで奥義発動に失敗した場合、王異の怒気を2pt回復する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [81] = {152,"璇玑鎮魂灯","目立たない灯が、日月星辰を吸収し、無窮な力に化す","管輅","奥義発動後自身の怒気+2pt、間接ダメージでターゲットを倒したら、更に怒気+2pt","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [82] = {153,"鬼霊奇韫筆","鬼霊の力を内蔵する筆で、使用者は文才に溢れるようになる。","周不疑","味方の魏の武将が挫く状態のターゲットを攻撃時、周不疑は自身の怒気+1pt、毎ターン最大+4pt","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [83] = {250,"蒼松水韻琴","水韻という名の古い琴は青松の魂を集め、青き清水の力を凝縮し、高山から流れ出る水を、自然の霊と一体化させる。","水鏡","戦場で1人死ぬたびダメージ+10%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [84] = {251,"神迅霊牛","両親の知恵を集めて作った不思議なからくりの牛。無限のエネルギーを秘め、主人に至れり尽くせりの加護と思いやりをもたらす。","諸葛果","毎ターン自身の怒気+1pt。めまい、吹っ飛ばし、制圧、中毒、やけど効果を受けると、怒気2ptを使い効果を無効にできる。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [85] = {252,"霊霄穿雲槍","精鋼で作られた十文字槍、戦闘時に雲を穿つ音を出し、どんな防御に貫ける","馬雲禄","奥義発動後、怒気を1pt回復する。奥義発動前にアーマー状態の場合、更に怒気を2pt回復。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [86] = {253,"百鳥朝鳳槍","鳳凰涅槃、火を浴びて再生する。童淵はいくつかの戦場を駆け抜けやがて山林の間に隠遁した。隠遁生活の中で悟りを開き、この槍術を作り出した。","童淵","奥義発動後、追加で怒気を回復、怪我状態一つにつき自身の怒気+1pt(最大で怒気+4pt)","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [87] = {350,"烈炎虹凰刀","宝刀には鳳凰の魂が凝縮されており、赤い蓮華が花開くと、火を浴びて再生するという。","周姫","ターゲットが男性武将の場合は最大HP10%分の追加ダメージを与え、女性武将の場合は、HP最少の味方ターゲット2名の制御効果を解消する","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [88] = {351,"秘光幻玉剣","貴重な金糸と玉でできた宝剣。美しき玉は適度に滑らかで、その発する光が自在に流動している。","陸抗","毎ターン怒気を2pt回復。味方武将に付与するアーマー効果が20%に上昇","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [89] = {352,"十方青玉刃","青玉刃二本を合わせて双頭の大刀になり、極めて強い腕力なしでは自在に扱えない。","朱桓","反射効果が1回発動すると、怒気が1pt回復、毎ターン最大4pt回復","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [90] = {353,"仙蝶鳳箜篌","仙霊の音を内蔵する箜篌、奏でる時は金色の蝶が舞い、美しい光景が現れるという。","孫姫","やけどターゲットの直接ダメージを受けると、確率で攻撃した敵を毒酒状態にする。1ターン持続(出陣する呉の武将1体につき、18％の確率を上昇)","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [91] = {450,"延陽追魂杖","無限の力を秘めた金のアカザの杖。これを得た者は無上の神功を習得でき、修練すれば長寿、若返りが可能になるという。","南華","奥義ダメージ+36%、通常攻撃ダメージ+72%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [92] = {451,"軽雲の煙管","居来する身は自在、俗世の浮沈に堪える。一縷の軽雲煙たるや、逍遥として神仙に似る。","盧植","奥義発動により無敵効果無効、かつ自身の怒気を2pt回復する。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [93] = {452,"霊巫破魔斧","歴代巫神の魂が宿った玉の斧。魑魅魍魎をねじ伏せ、野獣毒蛇は平伏になる。","木鹿大王","[パッシブ]木鹿大王がいる時、味方の全て群雄武将が直接ダメージを受ける時、そのダメージが最大HPの30%以上ならば、このダメージが-50%","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
        [94] = {453,"寒冥破星槌","小悪魔が使う流星錘，紫の光を漂い、寒気を発する。","董白","奥義で与えたオーバーキルダメージの50％を間接ダメージにし、他のHPがもっとも少ない鉄鎖、制圧ターゲットを攻撃。","初期怒気+1","初期怒気+1","開始時に最大HP18%のアーマーを付加。",},
    },

    -- index
    __index_id = {
        [1] = 1,
        [101] = 3,
        [102] = 4,
        [103] = 5,
        [104] = 6,
        [105] = 7,
        [106] = 8,
        [107] = 9,
        [108] = 10,
        [109] = 11,
        [110] = 12,
        [111] = 13,
        [112] = 14,
        [113] = 15,
        [114] = 16,
        [115] = 17,
        [116] = 18,
        [117] = 19,
        [118] = 20,
        [119] = 21,
        [150] = 79,
        [151] = 80,
        [152] = 81,
        [153] = 82,
        [2] = 2,
        [201] = 22,
        [202] = 23,
        [203] = 24,
        [204] = 25,
        [205] = 26,
        [206] = 27,
        [207] = 28,
        [208] = 29,
        [209] = 30,
        [210] = 31,
        [211] = 32,
        [212] = 33,
        [213] = 34,
        [214] = 35,
        [215] = 36,
        [216] = 37,
        [217] = 38,
        [218] = 39,
        [219] = 40,
        [250] = 83,
        [251] = 84,
        [252] = 85,
        [253] = 86,
        [301] = 41,
        [302] = 42,
        [303] = 43,
        [304] = 44,
        [305] = 45,
        [306] = 46,
        [307] = 47,
        [308] = 48,
        [309] = 49,
        [310] = 50,
        [311] = 51,
        [312] = 52,
        [313] = 53,
        [314] = 54,
        [315] = 55,
        [316] = 56,
        [317] = 57,
        [318] = 58,
        [319] = 59,
        [350] = 87,
        [351] = 88,
        [352] = 89,
        [353] = 90,
        [401] = 60,
        [402] = 61,
        [403] = 62,
        [404] = 63,
        [405] = 64,
        [406] = 65,
        [407] = 66,
        [408] = 67,
        [409] = 68,
        [410] = 69,
        [411] = 70,
        [412] = 71,
        [413] = 72,
        [414] = 73,
        [415] = 74,
        [416] = 75,
        [417] = 76,
        [418] = 77,
        [419] = 78,
        [450] = 91,
        [451] = 92,
        [452] = 93,
        [453] = 94,
    }
}

return instrument