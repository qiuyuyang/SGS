--pet_star

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --神兽id-int 
  star = 2,    --星级-int 
  up = 3,    --升星时全属性加成-int 
  up_show = 4,    --升星时全属性加成（前端）-int 
  talent_name = 5,    --激活特性名称-string 
  talent_description = 6,    --激活特性描述-string 
  chance_description = 7,    --神兽技能释放概率描述-string 
  skill1 = 8,    --普攻id-int 
  skill2 = 9,    --技能id-int 
  skill3 = 10,    --战吼id-int 

}

-- key type
local __key_type = {
  id = "int",    --神兽id-1 
  star = "int",    --星级-2 
  up = "int",    --升星时全属性加成-3 
  up_show = "int",    --升星时全属性加成（前端）-4 
  talent_name = "string",    --激活特性名称-5 
  talent_description = "string",    --激活特性描述-6 
  chance_description = "string",    --神兽技能释放概率描述-7 
  skill1 = "int",    --普攻id-8 
  skill2 = "int",    --技能id-9 
  skill3 = "int",    --战吼id-10 

}


-- data
local pet_star = {
    version =  1,
    _data = {
        [1] = {1,0,1000,0,"","","奇数回合释放。",0,7010020,0,},
        [2] = {1,1,200,200,"猛击1","技能造成伤害提升至368%","奇数回合释放。",0,7010120,0,},
        [3] = {1,2,200,200,"猛击2","技能造成伤害提升至386%","奇数回合释放。",0,7010220,0,},
        [4] = {1,3,200,200,"猛击3","技能造成伤害提升至405%","奇数回合释放。",0,7010320,0,},
        [5] = {1,4,200,200,"猛击4","技能造成伤害提升至426%","奇数回合释放。",0,7010420,0,},
        [6] = {1,5,200,200,"猛击5","技能造成伤害提升至469%","奇数回合释放。",0,7010520,0,},
        [7] = {2,0,1000,0,"","","我方任意1个武将生命少于等于60%时释放。每场战斗释放1次。每回合最多释放1次。",0,7020020,0,},
        [8] = {2,1,200,200,"抚慰1","每场战斗释放技能次数提升至2次","我方任意1个武将生命少于等于60%时释放。每场战斗释放2次。每回合最多释放1次。",0,7020120,0,},
        [9] = {2,2,200,200,"抚慰2","每场战斗释放技能次数提升至3次","我方任意1个武将生命少于等于60%时释放。每场战斗释放3次。每回合最多释放1次。",0,7020220,0,},
        [10] = {2,3,200,200,"抚慰3","每场战斗释放技能次数提升至4次","我方任意1个武将生命少于等于60%时释放。每场战斗释放4次。每回合最多释放1次。",0,7020320,0,},
        [11] = {2,4,200,200,"抚慰4","每场战斗释放技能次数提升至5次","我方任意1个武将生命少于等于60%时释放。每场战斗释放5次。每回合最多释放1次。",0,7020420,0,},
        [12] = {2,5,200,200,"抚慰5","每场战斗释放技能次数提升至6次","我方任意1个武将生命少于等于60%时释放。每场战斗释放6次。每回合最多释放1次。",0,7020520,0,},
        [13] = {3,0,1000,0,"","","偶数回合释放。",0,7030020,0,},
        [14] = {3,1,300,300,"爪击1","技能造成伤害提升至181%","偶数回合释放。",0,7030120,0,},
        [15] = {3,2,300,300,"爪击2","技能造成伤害提升至190%","偶数回合释放。",0,7030220,0,},
        [16] = {3,3,300,300,"爪击3","技能造成伤害提升至209%","偶数回合释放。",0,7030320,0,},
        [17] = {3,4,300,300,"爪击4","技能造成伤害提升至229%","偶数回合释放。",0,7030420,0,},
        [18] = {3,5,300,300,"爪击5","技能造成伤害提升至275%","偶数回合释放。",0,7030520,0,},
        [19] = {4,0,1000,0,"","","偶数回合释放。",0,7040020,0,},
        [20] = {4,1,300,300,"凤鸣1","技能造成伤害提升至181%","偶数回合释放。",0,7040120,0,},
        [21] = {4,2,300,300,"凤鸣2","技能造成伤害提升至190%","偶数回合释放。",0,7040220,0,},
        [22] = {4,3,300,300,"凤鸣3","技能造成伤害提升至209%","偶数回合释放。",0,7040320,0,},
        [23] = {4,4,300,300,"凤鸣4","技能造成伤害提升至229%","偶数回合释放。",0,7040420,0,},
        [24] = {4,5,300,300,"凤鸣5","技能造成伤害提升至275%","偶数回合释放。",0,7040520,0,},
        [25] = {5,0,1000,0,"","","",0,7050020,7059999,},
        [26] = {5,1,1000,1000,"奔雷1","战斗中降低敌方怒气人数提升至4人","",0,7051020,7059999,},
        [27] = {5,2,1000,1000,"奔雷2","战斗中降低敌方怒气人数提升至全体","",0,7052020,7059999,},
        [28] = {5,3,1000,1000,"奔雷3","战斗前额外随机降低敌方2人1点怒气","",0,7053020,7058888,},
        [29] = {5,4,1000,1000,"奔雷4","战斗前额外随机降低敌方4人1点怒气","",0,7054020,7057777,},
        [30] = {5,5,1000,1000,"奔雷5","战斗前降低敌方全体2点怒气","",0,7055020,7056666,},
        [31] = {105,0,1000,0,"","","",0,7053320,7051120,},
        [32] = {105,1,3000,3000,"奔雷1","战斗前降低敌方全体1点怒气，并随机降低敌方2人1点怒气，额外对敌方随机2个目标施加白虎标记，持续1回合（白虎标记的目标在释放技能后，会额外损失1点怒气）；战斗中每回合有50%概率降低敌方全体1点怒气。","",0,7053320,7051120,},
        [33] = {105,2,1000,1000,"奔雷2","战斗前随机降低敌方1点怒气的人数提升至4人；白虎标记持续回合增加1","",0,7054420,7051220,},
        [34] = {105,3,1000,1000,"奔雷3","战斗前随机降低敌方1点怒气的人数提升至全体；白虎标记目标数增加1，持续回合增加1","",0,7055520,7051320,},
        [35] = {105,4,1000,1000,"奔雷4","白虎标记损失怒气增加1","",0,7056620,7051420,},
        [36] = {105,5,1000,1000,"奔雷5","白虎标记目标数增加1，持续回合增加2","",0,7057720,7051520,},
        [37] = {6,0,1000,0,"","","奇数回合释放。",0,7060020,0,},
        [38] = {6,1,1000,1000,"狂怒1","释放技能回复己方全体武将1点怒气","奇数回合释放。",0,7061020,0,},
        [39] = {6,2,1000,1000,"狂怒2","额外增加己方全体伤害6%，持续1回合","奇数回合释放。",0,7062020,0,},
        [40] = {6,3,1000,1000,"狂怒3","增加己方全体伤害提升至12%","奇数回合释放。",0,7063020,0,},
        [41] = {6,4,1000,1000,"狂怒4","额外增加己方全体命中12%，持续1回合","奇数回合释放。",0,7064020,0,},
        [42] = {6,5,1000,1000,"狂怒5","额外增加己方全体暴击概率12%，持续1回合","奇数回合释放。",0,7065020,0,},
        [43] = {106,0,1000,0,"","","奇数回合释放。",0,7060020,0,},
        [44] = {106,1,3000,3000,"狂怒1","释放技能给己方全体武将回复1点怒气，且己方全体伤害增加12%，己方全体武将暴击伤害增加8%，持续1回合。给怒气最少的2个目标附加一个青龙标记，持续1回合。青龙标记将在武将行动前为目标回复1点怒气","奇数回合释放。",0,7060120,0,},
        [45] = {106,2,1000,1000,"狂怒2","额外增加己方全体命中12%，己方武将全体暴击伤害提升至12%","奇数回合释放。",0,7060220,0,},
        [46] = {106,3,1000,1000,"狂怒3","额外增加己方全体暴击概率12%，持续1回合。己方武将全体暴击伤害提升至16%，青龙标记回复怒气数量增加1","奇数回合释放。",0,7060320,0,},
        [47] = {106,4,1000,1000,"狂怒4","己方武将全体暴击伤害提升至20%，青龙标记的目标增加1","奇数回合释放。",0,7060420,0,},
        [48] = {106,5,1000,1000,"狂怒5","己方武将全体暴击伤害提升至24%，青龙标记持续回合数增加1","奇数回合释放。",0,7060520,0,},
        [49] = {7,0,1000,0,"","","",0,7070010,0,},
        [50] = {7,1,1000,1000,"天火1","造成生命值上限的伤害提高至14%","",0,7070110,0,},
        [51] = {7,2,1000,1000,"天火2","造成生命值上限的伤害提高至18%","",0,7070210,0,},
        [52] = {7,3,1000,1000,"天火3","额外给我方吴国武将附加持续1回合的业炎效果，使其造成的伤害提高10%","",0,7070310,0,},
        [53] = {7,4,1000,1000,"天火4","额外给我方吴国武将附加持续1回合的业炎效果，使其造成的伤害提高15%","",0,7070410,0,},
        [54] = {7,5,1000,1000,"天火5","额外给我方吴国武将附加持续1回合的业炎效果，使其造成的伤害提高20%","",0,7070510,0,},
        [55] = {107,0,1000,0,"","","",0,7071120,0,},
        [56] = {107,1,3000,3000,"天火1","纵火将释放技能之后，朱雀对全体灼烧目标造成18%生命上限的伤害，每回合最多出手1次，并且给我方吴国武将附加持续一回合的业炎效果，使其造成的伤害提高10%。纵火将死亡后，朱雀对全体灼烧目标造成10%生命上限的伤害，每场战斗最多出手1次","",0,7071120,0,},
        [57] = {107,2,1000,1000,"天火2","业炎增加的伤害效果提高至15%。纵火将死亡后，朱雀对全体灼烧目标造成的生命上限的伤害提高至20%","",0,7071220,0,},
        [58] = {107,3,1000,1000,"天火3","业炎增加的伤害效果提高至20%。如果朱雀的伤害导致敌方武将死亡，则有额外几率再次出现释放技能（每个存活的吴国武将增加5%的几率），每回合限1次","",0,7071320,0,},
        [59] = {107,4,1000,1000,"天火4","如果朱雀的伤害导致敌方武将死亡，则有额外几率再次出现释放技能（每个存活的吴国武将增加10%的几率），每回合限1次","",0,7071420,0,},
        [60] = {107,5,1000,1000,"天火5","如果朱雀的伤害导致敌方武将死亡，则有额外几率再次出现释放技能（每个存活的吴国武将增加20%的几率），每回合限1次","",0,7071520,0,},
        [61] = {8,0,1000,0,"","","奇数回合释放。",0,7080020,0,},
        [62] = {8,1,1000,1000,"护主1","护盾减伤效果提升至16%","奇数回合释放。",0,7080120,0,},
        [63] = {8,2,1000,1000,"护主2","护盾减伤效果提升至20%","奇数回合释放。",0,7080220,0,},
        [64] = {8,3,1000,1000,"护主3","护盾减伤效果提升至24%","奇数回合释放。",0,7080320,0,},
        [65] = {8,4,1000,1000,"护主4","额外回复自身生命上限6%的生命","奇数回合释放。",0,7080420,0,},
        [66] = {8,5,1000,1000,"护主5","回复生命上限比例提升至12%","奇数回合释放。",0,7080520,0,},
        [67] = {108,0,1000,0,"","","奇数回合释放。",0,7081120,0,},
        [68] = {108,1,3000,3000,"护主1","【被动】使己方全体受到的追击伤害降低12%。给己方全体武将附加1个减伤24%的护盾，对血量最低的1个目标施加1个相当于18%最大生命值的御甲效果，持续1回合。","奇数回合释放。",0,7081120,0,},
        [69] = {108,2,1000,1000,"护主2","【被动】追击伤害降低的效果提高至18%。玄武释放技能额外回复自身生命上限6%的生命。","奇数回合释放。",0,7081220,0,},
        [70] = {108,3,1000,1000,"护主3","御甲效果附加的人数增加1人，回复生命上限比例提升至12%","奇数回合释放。",0,7081320,0,},
        [71] = {108,4,1000,1000,"护主4","【被动】使己方全体受到的追击伤害降低24%。","奇数回合释放。",0,7081420,0,},
        [72] = {108,5,1000,1000,"护主5","御甲效果附加的人数增加1人","奇数回合释放。",0,7081520,0,},
        [73] = {9,0,1000,0,"","","我方有成员受到攻击所导致的眩晕时释放。每回合最多解除2人。",0,7090010,0,},
        [74] = {9,1,1000,1000,"逍遥1","每场战斗解除眩晕效果人数提升至2人","我方有成员受到攻击所导致的眩晕时释放。每回合最多解除2人。",0,7090020,0,},
        [75] = {9,2,1000,1000,"逍遥2","每场战斗解除眩晕效果人数提升至3人","我方有成员受到攻击所导致的眩晕时释放。每回合最多解除2人。",0,7090030,0,},
        [76] = {9,3,1000,1000,"逍遥3","每场战斗解除眩晕效果人数提升至4人","我方有成员受到攻击所导致的眩晕时释放。每回合最多解除2人。",0,7090040,0,},
        [77] = {9,4,1000,1000,"逍遥4","每场战斗解除眩晕效果人数提升至5人","我方有成员受到攻击所导致的眩晕时释放。每回合最多解除2人。",0,7090050,0,},
        [78] = {9,5,1000,1000,"逍遥5","每场战斗解除眩晕效果人数提升至6人","我方有成员受到攻击所导致的眩晕时释放。每回合最多解除2人。",0,7090060,0,},
        [79] = {109,0,1000,0,"","","每场战斗解除己方4名武将受到的眩晕、灼烧效果。我方有成员受到攻击所导致的眩晕、灼烧时释放。每回合最多解除2人",0,7090110,0,},
        [80] = {109,1,3000,3000,"逍遥1","每场战斗解除己方4名武将受到的眩晕、灼烧效果。我方有成员受到攻击所导致的眩晕、灼烧时释放。每回合最多解除2人","",0,7090110,0,},
        [81] = {109,2,1000,1000,"逍遥2","每场战斗解除眩晕、灼烧效果人数提升至5人\n每场战斗解除己方2名武将受到的虚弱、压制效果。我方有成员受到攻击所导致的虚弱、压制时释放。每回合最多解除1人","",0,7090111,0,},
        [82] = {109,3,1000,1000,"逍遥3","每场战斗解除眩晕、灼烧效果人数提升至6人，每回合最多解除人数提升至3人\n每场战斗解除虚弱、压制效果人数提升至3人","",0,7090112,0,},
        [83] = {109,4,1000,1000,"逍遥4","每场战斗解除眩晕、灼烧效果人数提升至7人，每回合最多解除人数提升至3人\n每场战斗解除虚弱、压制效果人数提升至4人","",0,7090113,0,},
        [84] = {109,5,1000,1000,"逍遥5","每场战斗解除眩晕、灼烧效果人数提升至8人，每回合最多解除人数提升至4人\n每场战斗解除虚弱、压制效果人数提升至5人","",0,7090114,0,},
        [85] = {10,0,1000,0,"","","",0,7100010,7100010,},
        [86] = {10,1,1000,1000,"催命1","技能目标数量提升至3人","",0,7100020,7100020,},
        [87] = {10,2,1000,1000,"催命2","技能目标数量提升至4人","",0,7100030,7100030,},
        [88] = {10,3,1000,1000,"催命3","技能目标数量提升至5人","",0,7100040,7100040,},
        [89] = {10,4,1000,1000,"催命4","技能目标数量提升至全体","",0,7100050,7100050,},
        [90] = {10,5,1000,1000,"催命5","闪电有50%概率不消失并在下回合继续判定","",0,7100060,7100060,},
        [91] = {11,0,1000,0,"","","",0,7110010,0,},
        [92] = {11,1,1000,1000,"祭祖1","斩杀血量比例提升至30%","",0,7110020,0,},
        [93] = {11,2,1000,1000,"祭祖2","斩杀血量比例提升至35%","",0,7110030,0,},
        [94] = {11,3,1000,1000,"祭祖3","斩杀血量比例提升至40%","",0,7110040,0,},
        [95] = {11,4,1000,1000,"祭祖4","斩杀血量比例提升至45%","",0,7110050,0,},
        [96] = {11,5,1000,1000,"祭祖5","斩杀血量比例提升至50%","",0,7110060,0,},
        [97] = {12,0,1000,0,"","","",0,7120010,0,},
        [98] = {12,1,1000,1000,"上天1","敌方剩余3个目标以上释放","",0,7120020,0,},
        [99] = {12,2,1000,1000,"上天2","敌方剩余2个目标以上释放","",0,7120030,0,},
        [100] = {12,3,1000,1000,"上天3","释放概率提高至60%","",0,7120040,0,},
        [101] = {12,4,1000,1000,"上天4","释放概率提高至80%","",0,7120050,0,},
        [102] = {12,5,1000,1000,"上天5","释放概率提高至100%","",0,7120060,0,},
        [103] = {201,3,4000,3000,"氤氲3","战斗开始阶段，对我方全体目标附加氤氲标记，在目标行动前进行阵营判定，若判定结果和目标阵营相同，目标武将将获得相当于自身生命上限30%的御甲效果，之后氤氲标记消失。（阵营判定失败时，标记不消失）","",0,7201010,7201010,},
        [104] = {201,4,2000,2000,"氤氲4","增加的御甲值提高至50%","",0,7201020,7201020,},
        [105] = {201,5,2000,2000,"氤氲5","氤氲标记持续期间，目标受到致命伤害时不会死亡且剩余1血，并获得相当于自身生命上限50%的御甲效果，之后氤氲标记消失","",0,7201030,7201030,},
    }
}

-- index
local __index_id_star = {
    ["105_0"] = 31,
    ["105_1"] = 32,
    ["105_2"] = 33,
    ["105_3"] = 34,
    ["105_4"] = 35,
    ["105_5"] = 36,
    ["106_0"] = 43,
    ["106_1"] = 44,
    ["106_2"] = 45,
    ["106_3"] = 46,
    ["106_4"] = 47,
    ["106_5"] = 48,
    ["107_0"] = 55,
    ["107_1"] = 56,
    ["107_2"] = 57,
    ["107_3"] = 58,
    ["107_4"] = 59,
    ["107_5"] = 60,
    ["108_0"] = 67,
    ["108_1"] = 68,
    ["108_2"] = 69,
    ["108_3"] = 70,
    ["108_4"] = 71,
    ["108_5"] = 72,
    ["109_0"] = 79,
    ["109_1"] = 80,
    ["109_2"] = 81,
    ["109_3"] = 82,
    ["109_4"] = 83,
    ["109_5"] = 84,
    ["10_0"] = 85,
    ["10_1"] = 86,
    ["10_2"] = 87,
    ["10_3"] = 88,
    ["10_4"] = 89,
    ["10_5"] = 90,
    ["11_0"] = 91,
    ["11_1"] = 92,
    ["11_2"] = 93,
    ["11_3"] = 94,
    ["11_4"] = 95,
    ["11_5"] = 96,
    ["12_0"] = 97,
    ["12_1"] = 98,
    ["12_2"] = 99,
    ["12_3"] = 100,
    ["12_4"] = 101,
    ["12_5"] = 102,
    ["1_0"] = 1,
    ["1_1"] = 2,
    ["1_2"] = 3,
    ["1_3"] = 4,
    ["1_4"] = 5,
    ["1_5"] = 6,
    ["201_3"] = 103,
    ["201_4"] = 104,
    ["201_5"] = 105,
    ["2_0"] = 7,
    ["2_1"] = 8,
    ["2_2"] = 9,
    ["2_3"] = 10,
    ["2_4"] = 11,
    ["2_5"] = 12,
    ["3_0"] = 13,
    ["3_1"] = 14,
    ["3_2"] = 15,
    ["3_3"] = 16,
    ["3_4"] = 17,
    ["3_5"] = 18,
    ["4_0"] = 19,
    ["4_1"] = 20,
    ["4_2"] = 21,
    ["4_3"] = 22,
    ["4_4"] = 23,
    ["4_5"] = 24,
    ["5_0"] = 25,
    ["5_1"] = 26,
    ["5_2"] = 27,
    ["5_3"] = 28,
    ["5_4"] = 29,
    ["5_5"] = 30,
    ["6_0"] = 37,
    ["6_1"] = 38,
    ["6_2"] = 39,
    ["6_3"] = 40,
    ["6_4"] = 41,
    ["6_5"] = 42,
    ["7_0"] = 49,
    ["7_1"] = 50,
    ["7_2"] = 51,
    ["7_3"] = 52,
    ["7_4"] = 53,
    ["7_5"] = 54,
    ["8_0"] = 61,
    ["8_1"] = 62,
    ["8_2"] = 63,
    ["8_3"] = 64,
    ["8_4"] = 65,
    ["8_5"] = 66,
    ["9_0"] = 73,
    ["9_1"] = 74,
    ["9_2"] = 75,
    ["9_3"] = 76,
    ["9_4"] = 77,
    ["9_5"] = 78,

}

-- index mainkey map
local __main_key_map = {
    [31] = "105_0",
    [32] = "105_1",
    [33] = "105_2",
    [34] = "105_3",
    [35] = "105_4",
    [36] = "105_5",
    [43] = "106_0",
    [44] = "106_1",
    [45] = "106_2",
    [46] = "106_3",
    [47] = "106_4",
    [48] = "106_5",
    [55] = "107_0",
    [56] = "107_1",
    [57] = "107_2",
    [58] = "107_3",
    [59] = "107_4",
    [60] = "107_5",
    [67] = "108_0",
    [68] = "108_1",
    [69] = "108_2",
    [70] = "108_3",
    [71] = "108_4",
    [72] = "108_5",
    [79] = "109_0",
    [80] = "109_1",
    [81] = "109_2",
    [82] = "109_3",
    [83] = "109_4",
    [84] = "109_5",
    [85] = "10_0",
    [86] = "10_1",
    [87] = "10_2",
    [88] = "10_3",
    [89] = "10_4",
    [90] = "10_5",
    [91] = "11_0",
    [92] = "11_1",
    [93] = "11_2",
    [94] = "11_3",
    [95] = "11_4",
    [96] = "11_5",
    [97] = "12_0",
    [98] = "12_1",
    [99] = "12_2",
    [100] = "12_3",
    [101] = "12_4",
    [102] = "12_5",
    [1] = "1_0",
    [2] = "1_1",
    [3] = "1_2",
    [4] = "1_3",
    [5] = "1_4",
    [6] = "1_5",
    [103] = "201_3",
    [104] = "201_4",
    [105] = "201_5",
    [7] = "2_0",
    [8] = "2_1",
    [9] = "2_2",
    [10] = "2_3",
    [11] = "2_4",
    [12] = "2_5",
    [13] = "3_0",
    [14] = "3_1",
    [15] = "3_2",
    [16] = "3_3",
    [17] = "3_4",
    [18] = "3_5",
    [19] = "4_0",
    [20] = "4_1",
    [21] = "4_2",
    [22] = "4_3",
    [23] = "4_4",
    [24] = "4_5",
    [25] = "5_0",
    [26] = "5_1",
    [27] = "5_2",
    [28] = "5_3",
    [29] = "5_4",
    [30] = "5_5",
    [37] = "6_0",
    [38] = "6_1",
    [39] = "6_2",
    [40] = "6_3",
    [41] = "6_4",
    [42] = "6_5",
    [49] = "7_0",
    [50] = "7_1",
    [51] = "7_2",
    [52] = "7_3",
    [53] = "7_4",
    [54] = "7_5",
    [61] = "8_0",
    [62] = "8_1",
    [63] = "8_2",
    [64] = "8_3",
    [65] = "8_4",
    [66] = "8_5",
    [73] = "9_0",
    [74] = "9_1",
    [75] = "9_2",
    [76] = "9_3",
    [77] = "9_4",
    [78] = "9_5",

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in pet_star")
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
function pet_star.length()
    return #pet_star._data
end

-- 
function pet_star.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function pet_star.isVersionValid(v)
    if pet_star.version then
        if v then
            return pet_star.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function pet_star.indexOf(index)
    if index == nil or not pet_star._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/pet_star.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/pet_star.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/pet_star.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "pet_star" )
                _isDataExist = pet_star.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "pet_star" )
                _isBaseExist = pet_star.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "pet_star" )
                _isExist = pet_star.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "pet_star" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id_star"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "pet_star" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id_star"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = pet_star._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "pet_star" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function pet_star.get(id,star)
    
    local k = id .. '_' .. star
    return pet_star.indexOf(__index_id_star[k])
        
end

--
function pet_star.set(id,star, key, value)
    local record = pet_star.get(id,star)
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
function pet_star.index()
    return __index_id_star
end

return pet_star