--guild_wages_type

local guild_wages_type = {
    -- key
    __key_map = {
      type = 1,    --类型-int 
      name = 2,    --任务名称-string 
    
    },
    -- data
    _data = {
        [1] = {1,"Chiến Kỷ",},
        [2] = {2,"Góp Q.Đ",},
        [3] = {3,"BOSS",},
        [4] = {4,"Vấn Đáp",},
        [5] = {5,"Thí Luyện QĐ",},
        [6] = {6,"Cứu Viện",},
    },

    -- index
    __index_type = {
        [1] = 1,
        [2] = 2,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 6,
    }
}

return guild_wages_type