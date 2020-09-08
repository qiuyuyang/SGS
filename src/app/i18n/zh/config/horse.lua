--horse

local horse = {
    -- key
    __key_map = {
      id = 1,    --编号_key-int 
      name = 2,    --装备名称-string 
      description = 3,    --装备描述-string 
      type = 4,    --泛用性-string 
      show_day = 5,    --图鉴显示天数-int 
    
    },
    -- data
    _data = {
        [1] = {1,"青骓","青骓, 苍白杂色的骏马, 战场上毫无畏惧, 迎箭而上迅猛异常.","所有",0,},
        [2] = {2,"绿耳","绿耳, 青黄色的马, 穆王八骏之一, 日行千里, 不知疲倦.","所有",0,},
        [3] = {3,"渠黄","渠黄, 如其名全身鹅黄色, 穆王八骏之一, 一形十影, 速度极快.","所有",0,},
        [4] = {4,"枣骝","枣骝, 全身褐色, 肌如钢铁, 力气很大, 负百斤之重, 仍可健步如飞.","所有",0,},
        [5] = {5,"雪里白","雪里白, 通体雪白, 蹄为黑者, 踏雪如履平地, 马之君子.","所有",0,},
        [6] = {6,"飒露紫","飒露紫, 如紫色飞燕, 傲骨嶙嶙, 气愚三川, 威凌八阵.","所有",0,},
        [7] = {7,"红玉辇","红玉辇, 体如红玉, 吉祥如意, 真龙天子之驹.","所有",0,},
        [8] = {8,"碧骢驹","碧骢驹, 体呈青白, 身形健硕, 奔跑似龙行天际, 速度快且型美.","所有",0,},
        [9] = {9,"飞霜千里","飞霜千里, 身体雪白似冰霜, 神秘轻盈, 行万里不知疲惫, 所过之处如飞霜过境, 寒气逼人, 让人无法靠近.","辅助类",40,},
        [10] = {10,"乌云踏雪","乌云踏雪, 通体如黑缎子一般, 油光放亮, 唯有四个马蹄部位白得赛雪, 背长腰短而平直, 四肢关节筋腱发育壮实, 身覆重甲, 从一而终.","输出类",999,},
        [11] = {11,"胭脂火龙","胭脂火龙, 浑身上下, 火炭般赤, 无半根杂毛, 嘶喊咆哮, 有腾空入海之状, 鬃卷似江波, 又如少女发丝般柔软, 行速如飞, 过川登山, 如履平地.","治疗类",999,},
        [12] = {12,"夜照玉狮","夜照玉狮, 一色雪白, 仅脖子尾巴覆金色毛发, 大蹄, 宛如雄狮一般, 性格暴烈, 既能日行千里, 亦能跨越天险, 出入战场如入无人之境.","辅助, 控制类",999,},
        [13] = {15,"奔雷青骢","万里追电拦路虎, 举世无双一奔雷.头带闪电, 脚踏幽光, 奔跑时如疾雷呼啸而过.通晓人性, 耐力持久, 助英雄在战场上屡立奇功.","肉盾类",999,},
        [14] = {13,"神·爪黄飞电","神·爪黄飞电, 通体雪白, 四蹄为黄, 气质高贵非凡, 傲气不可一世, 与众不同, 枭雄帝王之驹.","所有",9999,},
        [15] = {14,"神·的卢追月","神·的卢追月, 凶悍凌厉, 速度之快可及日月, 既能穿行水中, 又能一越三丈, 跃溪跨潭不在话下.","所有",9999,},
    }
}

return horse