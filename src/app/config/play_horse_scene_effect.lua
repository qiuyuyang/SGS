--play_horse_scene_effect

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --序号-int 
  name = 2,    --模型名称-string 
  animation = 3,    --动画名称-string 
  x_coordinate = 4,    --x坐标-int 
  y_coordinate = 5,    --y坐标-int 
  orientation = 6,    --朝向-int 
  zorder = 7,    --层级-int 

}

-- key type
local __key_type = {
  id = "int",    --序号-1 
  name = "string",    --模型名称-2 
  animation = "string",    --动画名称-3 
  x_coordinate = "int",    --x坐标-4 
  y_coordinate = "int",    --y坐标-5 
  orientation = "int",    --朝向-6 
  zorder = "int",    --层级-7 

}


-- data
local play_horse_scene_effect = {
    version =  1,
    _data = {
        [1] = {1,"saipaodaoju4","effect",3048,-18,1,500,},
        [2] = {2,"saipaodaoju4","effect",6588,-18,1,499,},
        [3] = {3,"saipaodaoju4","effect",10128,-18,1,498,},
        [4] = {4,"saipaodaoju4","effect",1564,-11,-1,497,},
        [5] = {5,"saipaodaoju4","effect",5104,-11,-1,496,},
        [6] = {6,"saipaodaoju4","effect",8644,-11,-1,495,},
        [7] = {7,"saipaoxiaobing3","effect2",337,-5,1,494,},
        [8] = {8,"saipaoxiaobing3","effect2",860,-5,1,493,},
        [9] = {9,"saipaoxiaobing3","effect2",3877,-5,1,492,},
        [10] = {10,"saipaoxiaobing3","effect2",4400,-5,1,491,},
        [11] = {11,"saipaoxiaobing3","effect2",7417,-5,1,490,},
        [12] = {12,"saipaoxiaobing3","effect2",7940,-5,1,489,},
        [13] = {13,"saipaodaoju4","effect",3597,-3,1,488,},
        [14] = {14,"saipaoxiaobing3","effect1",3276,-3,-1,487,},
        [15] = {15,"saipaodaoju4","effect",7137,-3,1,486,},
        [16] = {16,"saipaoxiaobing3","effect1",6816,-3,-1,485,},
        [17] = {17,"saipaodaoju4","effect",10677,-3,1,484,},
        [18] = {18,"saipaoxiaobing3","effect1",10356,-3,-1,483,},
        [19] = {19,"saipaoxiaobing3","effect2",2563,-2,1,482,},
        [20] = {20,"saipaoxiaobing3","effect2",3631,-2,1,481,},
        [21] = {21,"saipaoxiaobing3","effect2",6103,-2,1,480,},
        [22] = {22,"saipaoxiaobing3","effect2",7171,-2,1,479,},
        [23] = {23,"saipaoxiaobing3","effect2",9643,-2,1,478,},
        [24] = {24,"saipaoxiaobing3","effect2",10711,-2,1,477,},
        [25] = {25,"saipaoxiaobing3","effect1",1935,-1,-1,476,},
        [26] = {26,"saipaoxiaobing3","effect1",5475,-1,-1,475,},
        [27] = {27,"saipaoxiaobing3","effect1",9015,-1,-1,474,},
        [28] = {28,"saipaoxiaobing3","effect2",3022,3,1,473,},
        [29] = {29,"saipaoxiaobing3","effect2",6562,3,1,472,},
        [30] = {30,"saipaoxiaobing3","effect2",10102,3,1,471,},
        [31] = {31,"saipaoxiaobing3","effect1",1433,10,-1,470,},
        [32] = {32,"saipaoxiaobing3","effect1",4973,10,-1,469,},
        [33] = {33,"saipaoxiaobing3","effect1",8513,10,-1,468,},
        [34] = {34,"saipaoxiaobing3","effect1",1056,15,-1,467,},
        [35] = {35,"saipaoxiaobing3","effect1",4596,15,-1,466,},
        [36] = {36,"saipaoxiaobing3","effect1",8136,15,-1,465,},
        [37] = {37,"saipaoxiaobing3","effect1",2709,19,-1,464,},
        [38] = {38,"saipaoxiaobing3","effect1",6249,19,-1,463,},
        [39] = {39,"saipaoxiaobing3","effect1",9789,19,-1,462,},
        [40] = {40,"saipaoxiaobing3","effect1",3395,21,1,461,},
        [41] = {41,"saipaoxiaobing3","effect1",6935,21,1,460,},
        [42] = {42,"saipaoxiaobing3","effect1",10475,21,1,459,},
        [43] = {43,"saipaoxiaobing3","effect2",1632,22,1,458,},
        [44] = {44,"saipaoxiaobing3","effect2",5172,22,1,457,},
        [45] = {45,"saipaoxiaobing3","effect2",8712,22,1,456,},
        [46] = {46,"saipaoxiaobing3","effect1",1177,23,1,455,},
        [47] = {47,"saipaoxiaobing3","effect1",4717,23,1,454,},
        [48] = {48,"saipaoxiaobing3","effect1",8257,23,1,453,},
        [49] = {49,"saipaoxiaobing3","effect1",725,27,-1,452,},
        [50] = {50,"saipaoxiaobing3","effect1",4265,27,-1,451,},
        [51] = {51,"saipaoxiaobing3","effect1",7805,27,-1,450,},
        [52] = {52,"saipaoxiaobing3","effect2",2432,29,-1,449,},
        [53] = {53,"saipaoxiaobing3","effect2",5972,29,-1,448,},
        [54] = {54,"saipaoxiaobing3","effect2",9512,29,-1,447,},
        [55] = {55,"saipaodaoju3","effect",2805,35,1,600,},
        [56] = {56,"saipaodaoju3","effect",6345,35,1,600,},
        [57] = {57,"saipaodaoju3","effect",9885,35,1,600,},
        [58] = {58,"saipaodaoju6","effect",993,43,-1,600,},
        [59] = {59,"saipaodaoju6","effect",4533,43,-1,600,},
        [60] = {60,"saipaodaoju6","effect",8073,43,-1,600,},
        [61] = {61,"saipaodaoju6","effect",2022,56,1,600,},
        [62] = {62,"saipaodaoju6","effect",5562,56,1,600,},
        [63] = {63,"saipaodaoju6","effect",9102,56,1,600,},
        [64] = {64,"saipaodaoju7","effect",393,58,1,437,},
        [65] = {65,"saipaodaoju7","effect",3933,58,1,436,},
        [66] = {66,"saipaodaoju7","effect",7473,58,1,435,},
        [67] = {67,"saipaodaoju6","effect",3350,65,1,600,},
        [68] = {68,"saipaodaoju6","effect",6890,65,1,600,},
        [69] = {69,"saipaodaoju6","effect",10430,65,1,600,},
        [70] = {70,"saipaodaoju6","effect",126,67,-1,600,},
        [71] = {71,"saipaodaoju6","effect",3666,67,-1,600,},
        [72] = {72,"saipaodaoju6","effect",7206,67,-1,600,},
        [73] = {73,"saipaodaoju2","effect",1223,84,1,600,},
        [74] = {74,"saipaodaoju2","effect",4763,84,1,600,},
        [75] = {75,"saipaodaoju2","effect",8303,84,1,600,},
        [76] = {76,"saipaodaoju2","effect",2430,85,-1,600,},
        [77] = {77,"saipaodaoju2","effect",5970,85,-1,600,},
        [78] = {78,"saipaodaoju2","effect",9510,85,-1,600,},
        [79] = {79,"saipaodaoju2","effect",4070,181,1,600,},
        [80] = {80,"saipaodaoju2","effect",7610,181,1,600,},
        [81] = {81,"saipaodaoju2","effect",11150,181,1,600,},
        [82] = {82,"saipaozhongdian","effect1",9560,295,1,300,},
        [83] = {83,"saipaozhongdian","effect3",9560,295,1,249,},
        [84] = {84,"saipaodaoju12","effect",153,495,1,200,},
        [85] = {85,"saipaodaoju12","effect",3693,495,1,199,},
        [86] = {86,"saipaodaoju12","effect",7233,495,1,198,},
        [87] = {87,"saipaoxiaobing2","effect3",3235,498,-1,197,},
        [88] = {88,"saipaoxiaobing2","effect3",6775,498,-1,196,},
        [89] = {89,"saipaoxiaobing2","effect3",10315,498,-1,195,},
        [90] = {90,"saipaoxiaobing2","effect3",2176,499,-1,194,},
        [91] = {91,"saipaoxiaobing2","effect1",2075,499,-1,193,},
        [92] = {92,"saipaoxiaobing2","effect3",5716,499,-1,192,},
        [93] = {93,"saipaoxiaobing2","effect1",5615,499,-1,191,},
        [94] = {94,"saipaoxiaobing2","effect3",9256,499,-1,190,},
        [95] = {95,"saipaoxiaobing2","effect1",9155,499,-1,189,},
        [96] = {96,"saipaoxiaobing2","effect2",826,501,1,188,},
        [97] = {97,"saipaoxiaobing2","effect2",4366,501,1,187,},
        [98] = {98,"saipaoxiaobing2","effect2",7906,501,1,186,},
        [99] = {99,"saipaoxiaobing1","effect2",350,502,1,185,},
        [100] = {100,"saipaoxiaobing1","effect2",3890,502,1,184,},
        [101] = {101,"saipaoxiaobing1","effect2",7430,502,1,183,},
        [102] = {102,"saipaoxiaobing2","effect2",2404,506,-1,182,},
        [103] = {103,"saipaoxiaobing2","effect2",5944,506,-1,181,},
        [104] = {104,"saipaoxiaobing2","effect2",9484,506,-1,180,},
        [105] = {105,"saipaoxiaobing1","effect1",3599,512,-1,179,},
        [106] = {106,"saipaoxiaobing1","effect1",7139,512,-1,178,},
        [107] = {107,"saipaoxiaobing1","effect1",10679,512,-1,177,},
        [108] = {108,"saipaoxiaobing2","effect1",1553,513,1,176,},
        [109] = {109,"saipaoxiaobing2","effect1",5093,513,1,175,},
        [110] = {110,"saipaoxiaobing2","effect1",8633,513,1,174,},
        [111] = {111,"saipaoxiaobing2","effect3",3752,514,-1,173,},
        [112] = {112,"saipaoxiaobing2","effect3",1118,514,-1,172,},
        [113] = {113,"saipaodaoju12","effect",1935,514,1,171,},
        [114] = {114,"saipaoxiaobing2","effect3",7292,514,-1,170,},
        [115] = {115,"saipaoxiaobing2","effect3",4658,514,-1,169,},
        [116] = {116,"saipaodaoju12","effect",5475,514,1,168,},
        [117] = {117,"saipaoxiaobing2","effect3",10832,514,-1,167,},
        [118] = {118,"saipaoxiaobing2","effect3",8198,514,-1,166,},
        [119] = {119,"saipaodaoju12","effect",9015,514,1,165,},
        [120] = {120,"saipaoxiaobing1","effect1",1210,519,-1,164,},
        [121] = {121,"saipaoxiaobing1","effect1",4750,519,-1,163,},
        [122] = {122,"saipaoxiaobing1","effect1",8290,519,-1,162,},
        [123] = {123,"saipaoxiaobing2","effect2",3044,520,-1,161,},
        [124] = {124,"saipaoxiaobing2","effect2",6584,520,-1,160,},
        [125] = {125,"saipaoxiaobing2","effect2",10124,520,-1,159,},
        [126] = {126,"saipaoxiaobing2","effect2",1448,523,-1,158,},
        [127] = {127,"saipaoxiaobing2","effect2",888,523,1,157,},
        [128] = {128,"saipaoxiaobing2","effect2",4988,523,-1,156,},
        [129] = {129,"saipaoxiaobing2","effect2",4428,523,1,155,},
        [130] = {130,"saipaoxiaobing2","effect2",8528,523,-1,154,},
        [131] = {131,"saipaoxiaobing2","effect2",7968,523,1,153,},
        [132] = {132,"saipaoxiaobing2","effect1",1334,526,-1,152,},
        [133] = {133,"saipaoxiaobing2","effect1",753,526,-1,151,},
        [134] = {134,"saipaoxiaobing2","effect1",4874,526,-1,150,},
        [135] = {135,"saipaoxiaobing2","effect1",4293,526,-1,149,},
        [136] = {136,"saipaoxiaobing2","effect1",8414,526,-1,148,},
        [137] = {137,"saipaoxiaobing2","effect1",7833,526,-1,147,},
        [138] = {138,"saipaodaoju13","effect",2723,527,1,146,},
        [139] = {139,"saipaodaoju13","effect",6263,527,1,145,},
        [140] = {140,"saipaodaoju13","effect",9803,527,1,144,},
        [141] = {141,"saipaoxiaobing1","effect4",246,533,1,143,},
        [142] = {142,"saipaodaoju1","effect",4062,533,1,142,},
        [143] = {143,"saipaoxiaobing1","effect4",3786,533,1,141,},
        [144] = {144,"saipaodaoju1","effect",7602,533,1,140,},
        [145] = {145,"saipaoxiaobing1","effect4",7326,533,1,139,},
        [146] = {146,"saipaodaoju1","effect",11142,533,1,138,},
        [147] = {147,"saipaoxiaobing1","effect4",1889,534,-1,137,},
        [148] = {148,"saipaoxiaobing1","effect4",5429,534,-1,136,},
        [149] = {149,"saipaoxiaobing1","effect4",8969,534,-1,135,},
        [150] = {150,"saipaoxiaobing1","effect4",3672,535,-1,134,},
        [151] = {151,"saipaoxiaobing1","effect4",7212,535,-1,133,},
        [152] = {152,"saipaoxiaobing1","effect4",10752,535,-1,132,},
        [153] = {153,"saipaoxiaobing2","effect1",3299,538,-1,131,},
        [154] = {154,"saipaoxiaobing2","effect1",6839,538,-1,130,},
        [155] = {155,"saipaoxiaobing2","effect1",10379,538,-1,129,},
        [156] = {156,"saipaoxiaobing1","effect4",2922,540,-1,128,},
        [157] = {157,"saipaoxiaobing1","effect4",6462,540,-1,127,},
        [158] = {158,"saipaoxiaobing1","effect4",10002,540,-1,126,},
        [159] = {159,"saipaoxiaobing1","effect3",2547,541,-1,125,},
        [160] = {160,"saipaoxiaobing1","effect3",6087,541,-1,124,},
        [161] = {161,"saipaoxiaobing1","effect3",9627,541,-1,123,},
        [162] = {162,"saipaoxiaobing1","effect2",1795,542,-1,122,},
        [163] = {163,"saipaoxiaobing1","effect2",5335,542,-1,121,},
        [164] = {164,"saipaoxiaobing1","effect2",8875,542,-1,120,},
        [165] = {165,"saipaoxiaobing1","effect3",647,545,-1,119,},
        [166] = {166,"saipaoxiaobing1","effect3",4187,545,-1,118,},
        [167] = {167,"saipaoxiaobing1","effect3",7727,545,-1,117,},
        [168] = {168,"saipaoxiaobing1","effect2",3133,553,-1,116,},
        [169] = {169,"saipaoxiaobing1","effect2",6673,553,-1,115,},
        [170] = {170,"saipaoxiaobing1","effect2",10213,553,-1,114,},
        [171] = {171,"saipaoxiaobing1","effect2",2867,556,1,113,},
        [172] = {172,"saipaoxiaobing1","effect2",6407,556,1,112,},
        [173] = {173,"saipaoxiaobing1","effect2",9947,556,1,111,},
        [174] = {174,"saipaodaoju11","effect",1650,573,1,110,},
        [175] = {175,"saipaodaoju11","effect",5190,573,1,109,},
        [176] = {176,"saipaodaoju11","effect",8730,573,1,108,},
        [177] = {177,"saipaodaoju8","effect",363,575,1,107,},
        [178] = {178,"saipaodaoju8","effect",3903,575,1,106,},
        [179] = {179,"saipaodaoju8","effect",7443,575,1,105,},
        [180] = {180,"saipaodaoju5","effect",1031,576,1,104,},
        [181] = {181,"saipaodaoju5","effect",4571,576,1,103,},
        [182] = {182,"saipaodaoju5","effect",8111,576,1,102,},
        [183] = {183,"saipaodaoju11","effect",3575,577,1,101,},
        [184] = {184,"saipaodaoju11","effect",7115,577,1,100,},
        [185] = {185,"saipaodaoju11","effect",10655,577,1,99,},
        [186] = {186,"saipaoxiaobing2","effect1",3230,581,-1,98,},
        [187] = {187,"saipaodaoju10","effect",2258,581,1,97,},
        [188] = {188,"saipaoxiaobing2","effect1",6770,581,-1,96,},
        [189] = {189,"saipaodaoju10","effect",5798,581,1,95,},
        [190] = {190,"saipaoxiaobing2","effect1",10310,581,-1,94,},
        [191] = {191,"saipaodaoju10","effect",9338,581,1,93,},
        [192] = {192,"saipaodaoju9","effect",203,585,1,92,},
        [193] = {193,"saipaodaoju9","effect",3743,585,1,91,},
        [194] = {194,"saipaodaoju9","effect",7283,585,1,90,},
        [195] = {195,"saipaodaoju10","effect",2966,586,1,89,},
        [196] = {196,"saipaodaoju10","effect",6506,586,1,88,},
        [197] = {197,"saipaodaoju10","effect",10046,586,1,87,},
        [198] = {198,"saipaoxiaobing2","effect1",3391,603,-1,86,},
        [199] = {199,"saipaoxiaobing2","effect1",6931,603,-1,85,},
        [200] = {200,"saipaoxiaobing2","effect1",10471,603,-1,84,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 10,
    [100] = 100,
    [101] = 101,
    [102] = 102,
    [103] = 103,
    [104] = 104,
    [105] = 105,
    [106] = 106,
    [107] = 107,
    [108] = 108,
    [109] = 109,
    [11] = 11,
    [110] = 110,
    [111] = 111,
    [112] = 112,
    [113] = 113,
    [114] = 114,
    [115] = 115,
    [116] = 116,
    [117] = 117,
    [118] = 118,
    [119] = 119,
    [12] = 12,
    [120] = 120,
    [121] = 121,
    [122] = 122,
    [123] = 123,
    [124] = 124,
    [125] = 125,
    [126] = 126,
    [127] = 127,
    [128] = 128,
    [129] = 129,
    [13] = 13,
    [130] = 130,
    [131] = 131,
    [132] = 132,
    [133] = 133,
    [134] = 134,
    [135] = 135,
    [136] = 136,
    [137] = 137,
    [138] = 138,
    [139] = 139,
    [14] = 14,
    [140] = 140,
    [141] = 141,
    [142] = 142,
    [143] = 143,
    [144] = 144,
    [145] = 145,
    [146] = 146,
    [147] = 147,
    [148] = 148,
    [149] = 149,
    [15] = 15,
    [150] = 150,
    [151] = 151,
    [152] = 152,
    [153] = 153,
    [154] = 154,
    [155] = 155,
    [156] = 156,
    [157] = 157,
    [158] = 158,
    [159] = 159,
    [16] = 16,
    [160] = 160,
    [161] = 161,
    [162] = 162,
    [163] = 163,
    [164] = 164,
    [165] = 165,
    [166] = 166,
    [167] = 167,
    [168] = 168,
    [169] = 169,
    [17] = 17,
    [170] = 170,
    [171] = 171,
    [172] = 172,
    [173] = 173,
    [174] = 174,
    [175] = 175,
    [176] = 176,
    [177] = 177,
    [178] = 178,
    [179] = 179,
    [18] = 18,
    [180] = 180,
    [181] = 181,
    [182] = 182,
    [183] = 183,
    [184] = 184,
    [185] = 185,
    [186] = 186,
    [187] = 187,
    [188] = 188,
    [189] = 189,
    [19] = 19,
    [190] = 190,
    [191] = 191,
    [192] = 192,
    [193] = 193,
    [194] = 194,
    [195] = 195,
    [196] = 196,
    [197] = 197,
    [198] = 198,
    [199] = 199,
    [2] = 2,
    [20] = 20,
    [200] = 200,
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
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [5] = 5,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
    [54] = 54,
    [55] = 55,
    [56] = 56,
    [57] = 57,
    [58] = 58,
    [59] = 59,
    [6] = 6,
    [60] = 60,
    [61] = 61,
    [62] = 62,
    [63] = 63,
    [64] = 64,
    [65] = 65,
    [66] = 66,
    [67] = 67,
    [68] = 68,
    [69] = 69,
    [7] = 7,
    [70] = 70,
    [71] = 71,
    [72] = 72,
    [73] = 73,
    [74] = 74,
    [75] = 75,
    [76] = 76,
    [77] = 77,
    [78] = 78,
    [79] = 79,
    [8] = 8,
    [80] = 80,
    [81] = 81,
    [82] = 82,
    [83] = 83,
    [84] = 84,
    [85] = 85,
    [86] = 86,
    [87] = 87,
    [88] = 88,
    [89] = 89,
    [9] = 9,
    [90] = 90,
    [91] = 91,
    [92] = 92,
    [93] = 93,
    [94] = 94,
    [95] = 95,
    [96] = 96,
    [97] = 97,
    [98] = 98,
    [99] = 99,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,
    [10] = 10,
    [100] = 100,
    [101] = 101,
    [102] = 102,
    [103] = 103,
    [104] = 104,
    [105] = 105,
    [106] = 106,
    [107] = 107,
    [108] = 108,
    [109] = 109,
    [11] = 11,
    [110] = 110,
    [111] = 111,
    [112] = 112,
    [113] = 113,
    [114] = 114,
    [115] = 115,
    [116] = 116,
    [117] = 117,
    [118] = 118,
    [119] = 119,
    [12] = 12,
    [120] = 120,
    [121] = 121,
    [122] = 122,
    [123] = 123,
    [124] = 124,
    [125] = 125,
    [126] = 126,
    [127] = 127,
    [128] = 128,
    [129] = 129,
    [13] = 13,
    [130] = 130,
    [131] = 131,
    [132] = 132,
    [133] = 133,
    [134] = 134,
    [135] = 135,
    [136] = 136,
    [137] = 137,
    [138] = 138,
    [139] = 139,
    [14] = 14,
    [140] = 140,
    [141] = 141,
    [142] = 142,
    [143] = 143,
    [144] = 144,
    [145] = 145,
    [146] = 146,
    [147] = 147,
    [148] = 148,
    [149] = 149,
    [15] = 15,
    [150] = 150,
    [151] = 151,
    [152] = 152,
    [153] = 153,
    [154] = 154,
    [155] = 155,
    [156] = 156,
    [157] = 157,
    [158] = 158,
    [159] = 159,
    [16] = 16,
    [160] = 160,
    [161] = 161,
    [162] = 162,
    [163] = 163,
    [164] = 164,
    [165] = 165,
    [166] = 166,
    [167] = 167,
    [168] = 168,
    [169] = 169,
    [17] = 17,
    [170] = 170,
    [171] = 171,
    [172] = 172,
    [173] = 173,
    [174] = 174,
    [175] = 175,
    [176] = 176,
    [177] = 177,
    [178] = 178,
    [179] = 179,
    [18] = 18,
    [180] = 180,
    [181] = 181,
    [182] = 182,
    [183] = 183,
    [184] = 184,
    [185] = 185,
    [186] = 186,
    [187] = 187,
    [188] = 188,
    [189] = 189,
    [19] = 19,
    [190] = 190,
    [191] = 191,
    [192] = 192,
    [193] = 193,
    [194] = 194,
    [195] = 195,
    [196] = 196,
    [197] = 197,
    [198] = 198,
    [199] = 199,
    [2] = 2,
    [20] = 20,
    [200] = 200,
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
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [5] = 5,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
    [54] = 54,
    [55] = 55,
    [56] = 56,
    [57] = 57,
    [58] = 58,
    [59] = 59,
    [6] = 6,
    [60] = 60,
    [61] = 61,
    [62] = 62,
    [63] = 63,
    [64] = 64,
    [65] = 65,
    [66] = 66,
    [67] = 67,
    [68] = 68,
    [69] = 69,
    [7] = 7,
    [70] = 70,
    [71] = 71,
    [72] = 72,
    [73] = 73,
    [74] = 74,
    [75] = 75,
    [76] = 76,
    [77] = 77,
    [78] = 78,
    [79] = 79,
    [8] = 8,
    [80] = 80,
    [81] = 81,
    [82] = 82,
    [83] = 83,
    [84] = 84,
    [85] = 85,
    [86] = 86,
    [87] = 87,
    [88] = 88,
    [89] = 89,
    [9] = 9,
    [90] = 90,
    [91] = 91,
    [92] = 92,
    [93] = 93,
    [94] = 94,
    [95] = 95,
    [96] = 96,
    [97] = 97,
    [98] = 98,
    [99] = 99,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in play_horse_scene_effect")
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
function play_horse_scene_effect.length()
    return #play_horse_scene_effect._data
end

-- 
function play_horse_scene_effect.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function play_horse_scene_effect.isVersionValid(v)
    if play_horse_scene_effect.version then
        if v then
            return play_horse_scene_effect.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function play_horse_scene_effect.indexOf(index)
    if index == nil or not play_horse_scene_effect._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/play_horse_scene_effect.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/play_horse_scene_effect.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/play_horse_scene_effect.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "play_horse_scene_effect" )
                _isDataExist = play_horse_scene_effect.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "play_horse_scene_effect" )
                _isBaseExist = play_horse_scene_effect.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "play_horse_scene_effect" )
                _isExist = play_horse_scene_effect.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "play_horse_scene_effect" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "play_horse_scene_effect" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = play_horse_scene_effect._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "play_horse_scene_effect" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function play_horse_scene_effect.get(id)
    
    return play_horse_scene_effect.indexOf(__index_id[id])
        
end

--
function play_horse_scene_effect.set(id, key, value)
    local record = play_horse_scene_effect.get(id)
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
function play_horse_scene_effect.index()
    return __index_id
end

return play_horse_scene_effect