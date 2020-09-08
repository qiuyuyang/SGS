--pet

local pet = {
    -- key
    __key_map = {
      id = 1,    --id_key-int 
      name = 2,    --名称-简中-string 
      description = 3,    --宠物描述-简中-string 
      description1 = 4,    --show宠物描述1-简中-string 
      description2 = 5,    --show宠物描述2-简中-string 
      skill_name = 6,    --show宠物技能名称-简中-string 
      skill_description = 7,    --show宠物技能描述-简中-string 
      is_fight = 8,    --无差别竞技里是否可用_math-int 
    
    },
    -- data
    _data = {
        [1] = {1,"熊猫","熊猫, 又称食铁兽, 熊猫爸爸凶猛有力, 熊猫宝宝聪明呆萌, 父子组合, 所向披靡","熊猫爸爸凶猛有力, 熊猫宝宝聪明呆萌","父子组合, 所向披靡","[破胆咆哮]","对敌方单体造成伤害",0,},
        [2] = {2,"灵鹿","灵鹿, 生长在天地间的神奇灵物, 鹿角为天地灵气凝结而成, 灵气绽放时可助人起死回生.","生长在天地间的神奇灵物","鹿角为天地灵气凝结而成","[花繁叶茂]","治疗己方生命最少的队友",0,},
        [3] = {3,"烈火狐","烈火狐, 传说此狐三尾, 四爪带火, 凶戾高傲, 但恩怨分明, 有仇报仇, 有恩报恩.","三尾, 四爪带火","恩怨分明, 有仇报仇, 有恩报恩","[火狐卷尾]","对敌方后排造成伤害",0,},
        [4] = {4,"紫青鸾","紫青鸾, 羽色华丽, 紫中带青.古人视赤色为凤, 青色为鸾.传说青鸾为爱情的象征, 唱歌时会给心诚之人带来桃花运.","羽色华丽, 紫中带青","传说是爱情的象征","[风卷残云]","对敌方前排造成伤害",0,},
        [5] = {5,"雷霆白虎","雷霆白虎, 四神兽之一, 通体雪白, 紫光流溢, 可御使雷电之力.","通体雪白, 紫光流溢","可御使雷电之力","[曜日奔雷]","战前减怒, 战中再减怒",0,},
        [6] = {6,"沧海青龙","沧海青龙, 四神兽之首, 自古就是祥瑞的象征.东方青龙, 角亢之精, 吐云郁炁, 啖雷发声, 飞翔八极, 周游四冥, 来立吾左.","四神兽之首","自古就是祥瑞的象征","[青龙之怒]","恢复我方成员怒气",1,},
        [7] = {7,"赤炎朱雀","赤炎朱雀, 百鸟之王, 四大神兽中的颜值担当.主火, 唯美而暴力, 自歌自舞, 预示着吉祥安宁, 蓬勃腾达.","能继燃灼烧之物","能接引灵魂上升于天","[业炎焚天]","对敌方全体被灼烧目标造成伤害",0,},
        [8] = {8,"裂天玄武","裂天玄武, 四神兽之一, 龟, 蛇组成的灵物, 自古就是长生不老的象征.玄武者, 北方壬癸水黑汞也, 能柔能刚, 非铅非锡非众石之类, 水乃河东神水, 生乎天地之先, 至药不可暂舍, 能养育万物.","龟蛇组合成的灵物","长生不老的象征","[玄武之佑]","给我方成员附加护盾",1,},
        [9] = {9,"北冥圣鲲","鲲出自庄子·逍遥游: 北冥有鱼, 其名为鲲.鲲之大, 不知其几千里也.明代德清庄子内篇注云: 北冥即北海, 以旷远非世人所见之地, 以喻玄冥大道.海中之鲲, 以喻大道体中养成大圣之胚胎, 喻如大鲲, 非北海之大不能养成也.","北冥有鱼, 其名为鲲","鲲之大, 不知其几千里也","[云梦逍遥]","清除我方成员眩晕状态",1,},
        [10] = {10,"雷火麒麟","雷火麒麟, 与凤龟龙谓之四灵, 游必泽土, 祥而后处, 不履生虫, 不践生草, 王者有出, 辨善恶通天理.","千年祥瑞神灵","辨善恶通天理","[天命抉择]","对敌方随机目标造成生命上限50%的伤害",0,},
        [11] = {11,"麟华年兽","传说中每逢岁末时出没在人间的幼年凶兽, 眼若铜铃, 来去如风, 金身流彩, 威风凛凛；性如幼童般活泼好动, 十分喜爱热闹.","金身流彩, 威风凛凛","性如幼童般活泼好动","[燎竹天降]","血量低于一定值的目标会被斩杀",0,},
        [12] = {12,"天瑞白泽","象征着祥瑞的白泽, 通人语, 通万物之情, 晓天下万物状貌, 是令人逢凶化吉的吉祥之兽.","晓天下万物状貌","逢凶化吉","[幽雨流光]","回合开始前放逐敌方目标",0,},
        [13] = {106,"神·青龙","沧海青龙, 四神兽之首, 自古就是祥瑞的象征.东方青龙, 角亢之精, 吐云郁炁, 啖雷发声, 飞翔八极, 周游四冥, 来立吾左.","四神兽之首","自古就是祥瑞的象征","[青龙之怒]","恢复我方成员怒气",0,},
    }
}

return pet