--equipment_active

local equipment_active = {
    -- key
    __key_map = {
      id = 1,    --编号_key-int 
      money = 2,    --充值额度_math-int 
    
    },
    -- data
    _data = {
        [1] = {1,50000,},
        [2] = {2,50000,},
        [3] = {1001,50000,},
        [4] = {1002,50000,},
        [5] = {1003,50000,},
        [6] = {1004,50000,},
        [7] = {1005,50000,},
        [8] = {1401,50000,},
        [9] = {1501,50000,},
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