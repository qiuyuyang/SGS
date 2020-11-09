--notification

local notification = {
    -- key
    __key_map = {
      id = 1,    --id_key-int 
      time_txt = 2,    --标题-简中-string 
      chat_before = 3,    --文本-简中-string 
    
    },
    -- data
    _data = {
        [1] = {1,"午宴开始了","各位主公, 午宴已经开始, 快去参加午宴补充大量体力吧!",},
        [2] = {2,"晚宴开始了","各位主公, 晚宴已经开始, 快去参加晚宴补充大量体力吧!",},
        [3] = {3,"夜宵开始了","各位主公, 夜宵已经开始, 快去参加夜宵补充大量体力吧!",},
        [4] = {4,"军团BOSS来临","军团BOSS将在5分钟后来临, 主公请前往挑战, 击退BOSS后可参与拍卖和分红!",},
        [5] = {5,"军团BOSS来临","军团BOSS将在5分钟后来临, 主公请前往挑战, 击退BOSS后可参与拍卖和分红!",},
        [6] = {6,"每日早上礼物","各位主公, 快点登陆领取您的早上礼物吧~~~",},
        [7] = {7,"三国战纪开战","三国战纪将在5分钟后开战, 挑战BOSS并击破之, 可以参与拍卖和分红!",},
        [8] = {8,"阵营竞技开战","阵营竞技将在5分钟后开战, 谁是阵营王者, 请前往一决高下!",},
        [9] = {9,"军团战一触即发","军团战将在5分钟后开战, 夺城占地, 做巅峰军团, 就在此时!",},
    }
}

return notification