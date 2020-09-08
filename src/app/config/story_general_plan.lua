--story_general_plan

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --锦囊关id-int 
  name = 2,    --锦囊名称-string 
  need_chapter = 3,    --需要通关章节-int 
  show_res = 4,    --帐篷形象-int 
  position_x = 5,    --帐篷X坐标-int 
  position_y = 6,    --帐篷Y坐标-int 
  pic = 7,    --帐篷事件图-string 
  des = 8,    --帐篷事件描述-string 
  in_res = 9,    --战斗场景-string 
  type_1 = 10,    --类型1-int 
  value_1 = 11,    --类型值1-int 
  size_1 = 12,    --数量1-int 
  chance_1 = 13,    --概率1-int 
  type_2 = 14,    --类型2-int 
  value_2 = 15,    --类型值2-int 
  size_2 = 16,    --数量2-int 
  chance_2 = 17,    --概率2-int 
  type_3 = 18,    --类型3-int 
  value_3 = 19,    --类型值3-int 
  size_3 = 20,    --数量3-int 
  chance_3 = 21,    --概率3-int 
  type_4 = 22,    --类型4-int 
  value_4 = 23,    --类型值4-int 
  size_4 = 24,    --数量4-int 
  chance_4 = 25,    --概率4-int 
  type_5 = 26,    --类型5-int 
  value_5 = 27,    --类型值5-int 
  size_5 = 28,    --数量5-int 
  chance_5 = 29,    --概率5-int 
  type_6 = 30,    --类型6-int 
  value_6 = 31,    --类型值6-int 
  size_6 = 32,    --数量6-int 
  chance_6 = 33,    --概率6-int 

}

-- key type
local __key_type = {
  id = "int",    --锦囊关id-1 
  name = "string",    --锦囊名称-2 
  need_chapter = "int",    --需要通关章节-3 
  show_res = "int",    --帐篷形象-4 
  position_x = "int",    --帐篷X坐标-5 
  position_y = "int",    --帐篷Y坐标-6 
  pic = "string",    --帐篷事件图-7 
  des = "string",    --帐篷事件描述-8 
  in_res = "string",    --战斗场景-9 
  type_1 = "int",    --类型1-10 
  value_1 = "int",    --类型值1-11 
  size_1 = "int",    --数量1-12 
  chance_1 = "int",    --概率1-13 
  type_2 = "int",    --类型2-14 
  value_2 = "int",    --类型值2-15 
  size_2 = "int",    --数量2-16 
  chance_2 = "int",    --概率2-17 
  type_3 = "int",    --类型3-18 
  value_3 = "int",    --类型值3-19 
  size_3 = "int",    --数量3-20 
  chance_3 = "int",    --概率3-21 
  type_4 = "int",    --类型4-22 
  value_4 = "int",    --类型值4-23 
  size_4 = "int",    --数量4-24 
  chance_4 = "int",    --概率4-25 
  type_5 = "int",    --类型5-26 
  value_5 = "int",    --类型值5-27 
  size_5 = "int",    --数量5-28 
  chance_5 = "int",    --概率5-29 
  type_6 = "int",    --类型6-30 
  value_6 = "int",    --类型值6-31 
  size_6 = "int",    --数量6-32 
  chance_6 = "int",    --概率6-33 

}


-- data
local story_general_plan = {
    version =  1,
    _data = {
        [1] = {1,"名将挑战",2003,405,1264,59,"img_m","董卓，字仲颖，东汉末年凉州军阀，后入洛阳成为权臣，官至太师，权倾朝野。其人体魄健壮，臂力过人，善骑射，爱喝酒，爱吃肉，更爱美人儿，后因残暴不仁滥杀无辜，死于貂蝉的美人计之下，被吕布斩杀。","2",5,1,500,1000,5,9,800,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [2] = {2,"名将挑战",2006,301,2353,261,"img_m","孙策，字伯符，被称江东小霸王，东吴的奠基者之一。年少时容貌俊美，性格阔达，声名远播，后与周瑜结拜。为继承孙坚遗业而屈事袁术，袁术僭越称帝后，孙策与袁术决裂，统一江东。","3",5,1,500,1000,5,9,1000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [3] = {3,"名将挑战",2009,201,3766,55,"img_m","赵云，字子龙，蜀汉五虎上将之一。身长八尺，姿颜雄伟，曾在长坂坡七进七出百万曹军，救出刘备的儿子阿斗，先主云：“子龙一身都是胆也。”","3",5,1,500,1000,5,9,1200,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [4] = {4,"名将挑战",2012,206,5028,135,"img_m","张飞，字益德，蜀汉五虎上将之一，与刘备、关羽是桃园结义的兄弟，以勇猛非凡，性如烈火，嫉恶如仇而著称，曾在长坂坡当阳桥一声怒吼，吓退十万曹军。","2",5,1,500,1000,5,9,1400,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [5] = {5,"名将挑战",2015,303,6124,330,"img_m","周瑜，字公瑾，东吴名将，大都督。因其容貌英俊而有周郎之称，精通音律，故有[曲有误，周郎顾]之语。与孙策交好，助孙策平定江东，后孙策遇刺身亡，又助孙权统领江东。208年，周瑜率军与刘备联合，于赤壁之战中大败曹军，由此奠定了三分天下的基础。被后世誉为[世间豪杰英雄士，江左风流美丈夫]。","2",5,1,500,1000,5,9,1600,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [6] = {6,"名将挑战",2018,203,7376,186,"img_m","诸葛亮，字孔明，号卧龙，蜀汉丞相。早年在隆中耕种，后刘备三顾茅庐请出，辅佐刘备建立蜀汉。曾舌战群儒促成吴蜀联盟，空城计吓退司马懿，一生为蜀汉事业鞠躬尽瘁，死而后已，是忠臣与智者的代表人物。其代表作有《出师表》《诫子书》等，曾发明木牛流马、孔明灯、诸葛连弩等。","2",5,1,500,1000,5,9,1800,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [7] = {7,"名将挑战",2021,103,8588,295,"img_m","曹操，字孟德，小名阿瞒，汉末军阀，一代奸雄，是魏国实际的奠基人，不仅长于军略，也通音律，善词赋，爵至魏王，其子曹丕建魏后，追谥武帝，即魏武帝。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [8] = {8,"名将挑战",2024,401,10036,300,"img_m","左慈，字元放，东汉末年知名道士，精通五经、占星、奇门遁甲，传说能役使鬼神，以方术名闻当世，一手建立丹鼎派。左慈曾戏耍曹操与孙策，后进山炼丹，得道乘鹤而去。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [9] = {9,"名将挑战",2027,403,10988,50,"img_m","吕布，字奉先，三国第一猛将。手持方天画戟，骑赤兔马，头戴金冠，器宇轩昂，威风凛凛。关羽、张飞、刘备三人围攻他，也未能将其战倒，战神之名当之无愧！","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [10] = {10,"名将挑战",2030,404,12524,290,"img_m","貂蝉，中国古代四大美女之一，王允义女，吕布之妻。有绝世之颜，闭月之貌，倾国倾城。为了报答义父王允的养育之恩，而甘愿献身完成刺杀董卓的连环计。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [11] = {11,"名将挑战",2033,109,13516,75,"img_m","张辽，字文远，吕布武将，后仕曹操，曹魏五子良将之一，曾阵斩蹋顿，击破乌桓。建安二十一年，东吴大军进围合肥，张辽领数千精兵大破十万吴军，几乎活捉孙权，小儿止啼的著名典故即由此而来。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [12] = {12,"名将挑战",2036,309,14896,59,"img_m","孙坚，字文台，东吴霸业的奠基人，被誉为江东烈虎。其人容貌不凡，豪爽阔达，擅使大刀，喜戴红头巾，曾参与讨伐黄巾军的战役以及讨伐董卓的战役。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [13] = {13,"名将挑战",2039,302,15900,261,"img_m","大乔，孙策之妻，三国知名美人，与其妹小乔并称江东二乔。通音律，晓诗文，肌肤胜雪，眉目如画，浅笑盈盈，十分动人。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [14] = {14,"名将挑战",2042,117,17398,55,"img_m","典韦，曹操武将，身材魁梧，力大无穷，能驱赶猛虎。擅使大双戟，张绣叛变时，为保护曹操力战而死。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [15] = {15,"名将挑战",2045,304,18660,135,"img_m","小乔，周瑜之妻，三国知名美人，与其姐大乔并称江东二乔。神采飞扬，灵气逼人，天真烂漫，银铃般的声音，娇俏活泼，听着不自禁的让人喜欢。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [16] = {16,"名将挑战",2048,116,19756,330,"img_m","乐进，字文谦，曹魏五子良将之一。以胆识英烈而从曹操，随军多年，南征北讨，战功无数。建安二十三年逝世，谥曰威侯。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [17] = {17,"名将挑战",2051,408,21008,186,"img_m","吕灵雎，相传为吕布与貂蝉之女，美貌不亚于貂蝉，武艺不亚于父亲，威风凛凛而寂寥，勇敢而身先士卒。虽然有着能够直面困难的坚强意志，却由于过去的经历而有着非常害怕孤独的一面。 ","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [18] = {18,"名将挑战",2054,308,22220,315,"img_m","甘宁，字兴霸，东吴猛将。少年时好游侠，头插鸟羽，身佩铃铛，披服锦绣，四处游荡抢夺船只财物，人称锦帆贼。青年时停止抢劫，熟读诸子，历仕于刘表和黄祖，后率部投奔孙权，开始建功立业。曾率百余人夜袭曹营，战功赫赫。孙权曾说：“孟德有张辽，孤有甘兴霸，足相敌也。”","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [19] = {19,"名将挑战",2057,106,23668,320,"img_m","曹仁，字子孝，三国时期曹魏名将，曹魏八虎骑之一，治军严谨，擅长防守。跟随曹操征战多年，功勋卓著，官至大司马。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [20] = {20,"名将挑战",2060,316,24620,50,"img_m","周泰，字幼平，东吴重要武将。多次于战乱当中保护孙权的安危，身上受的伤多达几十处，就像在皮肤上雕画一样。孙权为了表彰周泰出生入死的功绩，赐给他青罗伞盖。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [21] = {21,"名将挑战",2063,112,26091,360,"img_m","甄姬，三国知名美女，别称甄洛或甄宓[fú] ，文昭甄皇后。倾国倾城，风华绝代，本是魏文帝曹丕的正室妻子，但传说与曹植相爱，相传《洛神赋》即曹植为她所作，成就洛神的千古佳话。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [22] = {22,"名将挑战",2066,204,27083,175,"img_m","黄月英，诸葛亮之妻，荆州名士黄承彦之女。相传其美丽无双，却腼腆害羞，因此用斗笠轻纱蒙面。她家学渊源，才智无双，与诸葛一起发明了木牛流马，为世人津津乐道。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [23] = {23,"名将挑战",2069,218,28463,159,"img_m","关平，蜀汉将领，关羽之子，随关羽东征西讨，武勇过人，不逊乃父，曾跟随刘备出征西川，立下战功，后来又与曹魏猛将庞德大战三十回合，彼此不分胜负。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [24] = {24,"名将挑战",2072,318,29552,361,"img_m","韩当，字义公，东吴将领。长于弓箭、骑术并且膂力过人，历仕孙坚、孙策、孙权三代，功勋卓著，对江东基业的逐渐稳固和吴国的建立有着重要影响。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [25] = {25,"名将挑战",2075,307,30965,155,"img_m","吕蒙，字子明，东吴名将，曾任大都督。十五岁时就从军打仗，能征惯战，但读书甚少，后来孙权劝他学习，才开始发愤勤学，鲁肃来到寻阳与吕蒙研讨议事，十分惊奇他的进步。后以士别三日刮目相看、吴下阿蒙等称誉别人进步很大。吕蒙最出名的功绩是袭取荆州，击败蜀汉名将关羽，留下白衣渡江典故。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [26] = {26,"名将挑战",2078,311,32227,235,"img_m","陆逊，字伯言，东吴大将，历任吴国大都督、上大将军、丞相，在夷陵击败刘备所率蜀汉军，一战成名。陆逊深得孙权器重，深谋远虑，忠诚耿直，一生出将入相，被赞为社稷之臣。玩家喜称周瑜为大都督，陆逊为小都督。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [27] = {27,"名将挑战",2081,101,33327,371,"img_m","司马懿，字仲达，少有奇节，聪明多大略，博学洽闻，伏膺儒教。魏国政治家、军事谋略家，魏国权臣，西晋王朝的奠基人。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [28] = {28,"名将挑战",2084,205,34557,155,"img_m","关羽，字云长，五虎上将之首。义薄云天，忠贞不移，英勇骁战，留有温酒斩华雄，刮骨疗伤等佳话。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [29] = {29,"名将挑战",2087,105,35767,335,"img_m","夏侯惇，字元让，曹魏名将，性如烈火的独目将军。为曹家征战一生，为人清俭，所得赏赐全部分给将士，一生不置产业，至死家无余财。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [30] = {30,"名将挑战",2090,309,37227,361,"img_m","孙坚，字文台，军事家孙武的后裔，东汉末年将领、军阀，三国中吴国的奠基人。勇挚刚毅，容貌不凡，性阔达，好奇节，乃江东猛虎。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [31] = {31,"名将挑战",2093,111,38177,125,"img_m","曹丕，字子桓，曹操次子，著名的政治家、文学家，曹魏开国皇帝。自幼文武双全，博览经传，通晓诸子百家学说。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [32] = {32,"名将挑战",2096,212,39657,355,"img_m","徐庶，字元直，原刘备帐下谋士，促成卧龙出山，后归曹操，并仕于曹魏，但一生并无大建树。留有身在曹营心在汉的典故。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [33] = {33,"名将挑战",2099,306,40657,261,"img_m","孙权，字仲谋，孙坚之子，孙吴的建立者。于赤壁之战中击败曹操，奠定三国鼎立的基础。形貌奇伟，骨体不恒，有大贵之表，古有生子当如孙仲谋之言。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [34] = {34,"名将挑战",2102,415,42057,120,"img_m","贾诩，字文和，凉州人，三国著名谋士。原为董卓部将，董卓死后，因献计导致李傕郭汜反攻长安，被称为毒士。之后，贾诩辗转成为张绣的谋士，后降曹操，成为曹魏重要谋臣。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [35] = {35,"名将挑战",2105,104,43097,160,"img_m","郭嘉，字奉孝，魏国早期最杰出的谋士，曹魏五谋臣之一。官至军师祭酒。才智过人，奇计百出，曹操称他为[奇佐]，但英年早逝，曹操深为痛惜。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [36] = {36,"名将挑战",2108,211,44637,110,"img_m","庞统，字士元，号凤雏，刘备重要谋士，才智与诸葛亮齐名，赤壁之战，他避乱江东，为鲁肃荐于周瑜，并入曹营献连环计，助瑜火攻大败曹操。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [37] = {37,"名将挑战",2111,310,45840,125,"img_m","孙尚香，孙权之妹，赤壁之战嫁给刘备为妻。她容貌秀丽，才智敏捷，桀骜不驯，巾帼不让须眉。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [38] = {38,"名将挑战",2114,409,47000,355,"img_m","张角，东汉末年黄巾军的领袖，太平道的创始人，教徒多达几十万。184年，张角以“苍天已死，黄天当立，岁在甲子，天下大吉”为口号，自称天公将军，率领群众发动起义，史称黄巾起义。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [39] = {39,"名将挑战",2117,110,48200,110,"img_m","张郃[hé]，字儁乂[jùn yì]，曹魏五子良将之一。曾仕袁绍，官渡之战中投效曹操，张郃戎马一生，以用兵巧变、善列营阵，长于利用地形著称，跟随曹操后屡建战功。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [40] = {40,"名将挑战",2120,210,49375,335,"img_m","孟获，南蛮王，三国时期南中地区少数民族首领，被诸葛亮率领大军七擒七纵后降服，此后不再叛乱。他不但作战勇敢，意志坚强，而且待人忠厚，在当地极得人心。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [41] = {41,"名将挑战",2123,314,50835,361,"img_m","黄盖，字公覆，历仕孙坚、孙策、孙权三任。为人严肃，勇猛善战，赤壁之战时，黄盖施展苦肉计前往曹营诈降，并趁机以火攻大破曹操军队，是赤壁之战主要功臣之一。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [42] = {42,"名将挑战",2126,406,51800,220,"img_m","华[huà]雄，董卓帐下一员虎将。十八路诸侯讨伐董卓时，被孙坚所杀，《三国演义》改为被关羽所杀，成就温酒斩华雄的一段佳话。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [43] = {43,"名将挑战",2129,115,53350,375,"img_m","夏侯渊，字妙才，曹魏八虎骑之一。擅长率骑兵千里奔袭作战，来去如风，令敌人防不胜防！讨董卓时随曹操一同起兵，征战四方，屡立功勋，在平定马超叛乱后负责西北防线的镇守。镇守汉中时，与刘备相拒，被黄忠所袭，战死定军。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [44] = {44,"名将挑战",2132,213,54295,245,"img_m","魏延，字文长，蜀汉名将，刘备入川时魏延数有战功，后领汉中太守，镇守汉中，成为独当一方的大将。魏延镇守汉中近十年，之后又屡次随诸葛亮北伐，功绩显著，曾提出子午谷奇谋。诸葛亮死后，与长史杨仪相互争权，魏延败逃，为马岱追斩。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [45] = {45,"名将挑战",2135,305,55700,143,"img_m","太史慈，字子义，东吴名将。弓马熟练，箭法精良，为人磊落坦荡，尽义守信，智勇双全，原为刘繇[yáo]部下，后被孙策收降，死前曾道：“大丈夫生于乱世，当带三尺剑立不世之功；今所志未遂，奈何死乎！”年四十一岁。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [46] = {46,"名将挑战",2138,414,56780,400,"img_m","文丑，袁绍帐下大将，勇冠三军，颇有威名，颜良死后，为颜良报仇心切，在延津一役中，射退张辽，与徐晃大战三十合不分胜败，追击中正遇关羽，战不三合，心怯欲走，被关羽赶上斩于马下。","2",5,1,500,1000,5,9,2000,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 10,
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
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,
    [10] = 10,
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
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in story_general_plan")
        if _lang ~= "cn" and _isDataExist  and t._data_key_map[k] then
            return t._data[t._data_key_map[k]]
        end
        if _lang ~= "cn" and _isExist  and t._lang_key_map[k] then
            return t._lang[t._lang_key_map[k]]
        end
        return t._raw[key_map[k]]
    end
}

-- 
function story_general_plan.length()
    return #story_general_plan._data
end

-- 
function story_general_plan.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function story_general_plan.isVersionValid(v)
    if story_general_plan.version then
        if v then
            return story_general_plan.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function story_general_plan.indexOf(index)
    if index == nil or not story_general_plan._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/story_general_plan.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/story_general_plan.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/story_general_plan.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "story_general_plan" )
                _isDataExist = story_general_plan.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "story_general_plan" )
                _isBaseExist = story_general_plan.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "story_general_plan" )
                _isExist = story_general_plan.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "story_general_plan" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "story_general_plan" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = story_general_plan._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "story_general_plan" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function story_general_plan.get(id)
    
    return story_general_plan.indexOf(__index_id[id])
        
end

--
function story_general_plan.set(id, key, value)
    local record = story_general_plan.get(id)
    if record then
        if _lang ~= "cn" and _isDataExist then
            local keyIndex =  record._data_key_map[key]
            if keyIndex then
                record._data[keyIndex] = value
                return
            end
        end
        if _lang ~= "cn" and _isExist then
            local keyIndex =  record._lang_key_map[key]
            if keyIndex then
                record._lang[keyIndex] = value
                return
            end
        end
        local keyIndex = record._raw_key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

--
function story_general_plan.index()
    return __index_id
end

return story_general_plan