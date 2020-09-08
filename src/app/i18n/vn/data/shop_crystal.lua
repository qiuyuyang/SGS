--shop_crystal

local shop_crystal = {
    -- key
    __key_map = {
      good_id = 1,    --商品id_key-int 
      pay_amount = 2,    --条件值_math-int 
      size_2 = 3,    --奖励数量2_math-int 
      is_work = 4,    --开关_math-int 
    
    },
    -- data
    _data = {
        [1] = {101,20000,80,1,},
        [2] = {102,109000,436,1,},
        [3] = {103,299000,1196,1,},
        [4] = {104,1,0,1,},
        [5] = {105,1,0,1,},
        [6] = {106,1,0,1,},
        [7] = {107,1,0,1,},
        [8] = {108,1,0,1,},
        [9] = {109,1,0,0,},
        [10] = {110,599000,2396,1,},
        [11] = {111,1,0,1,},
        [12] = {201,22000,80,1,},
    },

    -- index
    __index_good_id = {
        [101] = 1,
        [102] = 2,
        [103] = 3,
        [104] = 4,
        [105] = 5,
        [106] = 6,
        [107] = 7,
        [108] = 8,
        [109] = 9,
        [110] = 10,
        [111] = 11,
        [201] = 12,
    }
}

return shop_crystal