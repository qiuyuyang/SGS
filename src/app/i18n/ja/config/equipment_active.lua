--equipment_active

local equipment_active = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --编号-int 
      name1 = 2,    --抽奖名称1-string 
      name2 = 3,    --抽奖名称2-string 
      time_name = 4,    --倒计时描述-string 
      hit_chat_1 = 5,    --被击喊话1-string 
      hit_chat_2 = 6,    --被击喊话2-string 
      hit_chat_3 = 7,    --被击喊话3-string 
      hit_chat_4 = 8,    --被击喊话4-string 
      hit_chat_5 = 9,    --被击喊话5-string 
      chat_1 = 10,    --常规喊话1-string 
      chat_2 = 11,    --常规喊话2-string 
      chat_3 = 12,    --常规喊话3-string 
      chat_4 = 13,    --常规喊话4-string 
      chat_5 = 14,    --常规喊话5-string 
    
    },
    -- data
    _data = {
        [1] = {1,"追撃1回","追撃10回","","英雄、叩かないで！ううう～～","どうかお手柔らかに。いいものを差し上げますから！","痛い！ 痛い！お前にやる！","来い、私を追ってこい、さあ。","ぶたないで、装備は全部あげるから！","わしの戦袍で装備(赤)と交換できるというのは、孫・劉の陰謀に違いない！","ふんっ！私に追いつけたら、装備(赤)を献上してやる。","あなたは名将だ。たかが女性のために朝廷に背いてはなりません！","何によって憂いを解くかと言えば、ただ女性あるのみ。","余が皇帝でなかったら、どれだけの女性が嫁いだであろう",},
        [2] = {2,"追撃1回","追撃10回","","英雄、叩かないで！ううう～～","どうかお手柔らかに。いいものを差し上げますから！","痛い！ 痛い！お前にやる！","来い、私を追ってこい、さあ。","ぶたないで、装備は全部あげるから！","わしの戦袍で装備(赤)と交換できるというのは、孫・劉の陰謀に違いない！","ふんっ！私に追いつけたら、装備(赤)を献上してやる。","あなたは名将だ。たかが女性のために朝廷に背いてはなりません！","何によって憂いを解くかと言えば、ただ女性あるのみ。","余が皇帝でなかったら、どれだけの女性が嫁いだであろう",},
        [3] = {1001,"観星1回","観星10回","青龍消失カウントダウン","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで",},
        [4] = {1002,"観星1回","観星10回","玄武消失残り時間|青龍消失残り時間","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで",},
        [5] = {1003,"観星1回","観星10回","玄武消失残り時間|白虎消失残り時間|聖鯤消失残り時間|青龍消失残り時間","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで",},
        [6] = {1004,"観星1回","観星10回","玄武消失残り時間|年獣消失残り時間|白虎消失残り時間|麒麟消失残り時間|白澤消失残り時間|聖鯤消失残り時間|青龍消失残り時間|朱雀消失残り時間","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで",},
        [7] = {1005,"観星1回","観星10回","玄武消失残り時間|年獣消失残り時間|白虎消失残り時間|麒麟消失残り時間|白澤消失残り時間|聖鯤消失残り時間|青龍消失残り時間|朱雀消失残り時間|真元消失残り時間","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで","ぶたないで",},
        [8] = {1401,"調教1回","調教10回","","","","","","","","","","","",},
        [9] = {1501,"調教1回","調教10回","烏雲踏雪の退場まであと|夜照玉獅の退場まであと|迅雷青驄の退場まであと|鉄血紅鬃の退場まであと|赤炎龍の退場まであと|飛霜千里の退場まであと|闇夜の紫騂の退場まであと","","","","","","酒はついだままにしておいてください。私はすぐに戻って来ます。","どいつも売り物の目印を立てて、命を売っているようだ。","玉は砕けてもその白さを改めず、竹は焼かれてもその節が壊れない。","単騎で千里を疾走し、五関の将を斬る。","これしきの事でこのわしが参るものか！",},
    },

    -- index
    __index_id = {
        [1] = 1,
        [1001] = 3,
        [1002] = 4,
        [1003] = 5,
        [1004] = 6,
        [1005] = 7,
        [1401] = 8,
        [1501] = 9,
        [2] = 2,
    }
}

return equipment_active