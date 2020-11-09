--shop

local shop = {
    -- key
    __key_map = {
      shop_id = 1,    --商店ID-int 
      shop_name = 2,    --商店名称-string 
      tab_name1 = 3,    --页签名称-string 
      tab_name2 = 4,    --页签名称-string 
      tab_name3 = 5,    --页签名称-string 
      tab_name4 = 6,    --页签名称-string 
      tab_name5 = 7,    --页签名称-string 
    
    },
    -- data
    _data = {
        [1] = {1,"Cửa Hàng","Đạo Cụ","Vật Phẩm","Ngọc Bích","","",},
        [2] = {2,"Trang Bị","Đạo Cụ","T.Bị Tím","T.Bị Cam","Thưởng","",},
        [3] = {3,"Thần Binh","Đạo Cụ","","","","",},
        [4] = {4,"Thi Đấu","Đạo Cụ","Võ Tướng","Thưởng","","",},
        [5] = {5,"Quân Đoàn","Đạo Cụ","Ngụy","Thục","Ngô","Quần",},
        [6] = {6,"Võ Tướng","Võ Tướng","","","","",},
        [7] = {7,"Bảo Vật","Đạo Cụ","Bảo Vật Tím","Bảo Vật Cam","","",},
        [8] = {8,"Thức Tỉnh","Đạo Cụ","","","","",},
        [9] = {9,"Ưu Đãi Ngày","","","","","",},
        [10] = {10,"Ưu Đãi Tuần","","","","","",},
        [11] = {11,"Thần Thú","","","","","",},
        [12] = {12,"Vật Tư Nửa Giá","","","","","",},
        [13] = {13,"Biến Thân","Ngụy","Thục","Ngô","Quần","",},
        [14] = {14,"Bộ","","","","","",},
        [15] = {15,"Thần Thú","Đạo Cụ","","","","",},
        [16] = {16,"Thức Tỉnh","Đạo Cụ","Lam","Tím","Cam","Đỏ",},
        [17] = {17,"Quán Tinh","","","","","",},
        [18] = {18,"Chiến Mã","Chiến Mã","Trang bị","","","",},
        [19] = {19,"VIP","","","","","",},
        [20] = {20,"Tiệm Đá","Đá Thô","","","","",},
        [21] = {21,"Tiệm Thuần Ngựa","","","","","",},
        [22] = {22,"Tiệm Kỷ Niệm","Ngày 1","Ngày 2","3 Ngày","Đổi","",},
        [23] = {24,"Tiệm Tướng Vàng","Tướng Vàng","Giới Hạn","Tài Nguyên","","",},
        [24] = {25,"Tiệm Kỳ Linh","","","","","",},
        [25] = {26,"Tiệm Chân Vũ","Đạo Cụ","Đổi","","","",},
    },

    -- index
    __index_shop_id = {
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
        [24] = 23,
        [25] = 24,
        [26] = 25,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 6,
        [7] = 7,
        [8] = 8,
        [9] = 9,
    }
}

return shop