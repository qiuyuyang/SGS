--box

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --序列id-int 
  item_id = 2,    --item_id-int 
  group = 3,    --分组-int 
  type_1 = 4,    --类型1-int 
  value_1 = 5,    --类型值1-int 
  size_1 = 6,    --数量1-int 
  type_2 = 7,    --类型2-int 
  value_2 = 8,    --类型值2-int 
  size_2 = 9,    --数量2-int 
  type_3 = 10,    --类型3-int 
  value_3 = 11,    --类型值3-int 
  size_3 = 12,    --数量3-int 
  type_4 = 13,    --类型4-int 
  value_4 = 14,    --类型值4-int 
  size_4 = 15,    --数量4-int 

}

-- key type
local __key_type = {
  id = "int",    --序列id-1 
  item_id = "int",    --item_id-2 
  group = "int",    --分组-3 
  type_1 = "int",    --类型1-4 
  value_1 = "int",    --类型值1-5 
  size_1 = "int",    --数量1-6 
  type_2 = "int",    --类型2-7 
  value_2 = "int",    --类型值2-8 
  size_2 = "int",    --数量2-9 
  type_3 = "int",    --类型3-10 
  value_3 = "int",    --类型值3-11 
  size_3 = "int",    --数量3-12 
  type_4 = "int",    --类型4-13 
  value_4 = "int",    --类型值4-14 
  size_4 = "int",    --数量4-15 

}


-- data
local box = {
    version =  1,
    _data = {
        [1] = {1,104,0,3,201,1,3,211,1,0,0,0,0,0,0,},
        [2] = {2,104,0,3,202,1,3,212,1,0,0,0,0,0,0,},
        [3] = {3,104,0,3,203,1,3,213,1,0,0,0,0,0,0,},
        [4] = {5,105,0,1,401,1,1,402,1,1,403,1,1,404,1,},
        [5] = {6,105,0,1,301,1,1,302,1,1,303,1,1,304,1,},
        [6] = {7,201,1,1,113,1,1,114,1,1,115,1,1,116,1,},
        [7] = {8,201,1,1,117,1,1,118,1,1,119,1,0,0,0,},
        [8] = {9,201,2,1,213,1,1,214,1,1,215,1,1,216,1,},
        [9] = {10,201,2,1,217,1,1,218,1,1,219,1,0,0,0,},
        [10] = {11,201,3,1,313,1,1,314,1,1,315,1,1,316,1,},
        [11] = {12,201,3,1,317,1,1,318,1,1,319,1,0,0,0,},
        [12] = {13,201,4,1,413,1,1,414,1,1,415,1,1,416,1,},
        [13] = {14,201,4,1,417,1,1,418,1,1,419,1,0,0,0,},
        [14] = {15,202,1,1,113,1,1,114,1,1,115,1,1,116,1,},
        [15] = {16,202,1,1,117,1,1,118,1,1,119,1,0,0,0,},
        [16] = {17,202,2,1,213,1,1,214,1,1,215,1,1,216,1,},
        [17] = {18,202,2,1,217,1,1,218,1,1,219,1,0,0,0,},
        [18] = {19,202,3,1,313,1,1,314,1,1,315,1,1,316,1,},
        [19] = {20,202,3,1,317,1,1,318,1,1,319,1,0,0,0,},
        [20] = {21,202,4,1,413,1,1,414,1,1,415,1,1,416,1,},
        [21] = {22,202,4,1,417,1,1,418,1,1,419,1,0,0,0,},
        [22] = {23,203,1,1,102,1,1,104,1,1,105,1,1,106,1,},
        [23] = {24,203,1,1,107,1,1,108,1,1,109,1,1,110,1,},
        [24] = {25,203,1,1,111,1,1,112,1,0,0,0,0,0,0,},
        [25] = {26,203,2,1,202,1,1,204,1,1,205,1,1,206,1,},
        [26] = {27,203,2,1,207,1,1,208,1,1,209,1,1,210,1,},
        [27] = {28,203,2,1,211,1,1,212,1,0,0,0,0,0,0,},
        [28] = {29,203,3,1,302,1,1,304,1,1,305,1,1,306,1,},
        [29] = {30,203,3,1,307,1,1,308,1,1,309,1,1,310,1,},
        [30] = {31,203,3,1,311,1,1,312,1,0,0,0,0,0,0,},
        [31] = {32,203,4,1,402,1,1,404,1,1,405,1,1,406,1,},
        [32] = {33,203,4,1,407,1,1,408,1,1,409,1,1,410,1,},
        [33] = {34,203,4,1,411,1,1,412,1,0,0,0,0,0,0,},
        [34] = {35,103,0,1,101,1,1,201,1,1,301,1,1,401,1,},
        [35] = {36,107,1,4,102,1,4,104,1,4,105,1,4,106,1,},
        [36] = {37,107,1,4,107,1,4,108,1,4,109,1,4,110,1,},
        [37] = {38,107,1,4,111,1,4,112,1,0,0,0,0,0,0,},
        [38] = {39,107,2,4,202,1,4,204,1,4,205,1,4,206,1,},
        [39] = {40,107,2,4,207,1,4,208,1,4,209,1,4,210,1,},
        [40] = {41,107,2,4,211,1,4,212,1,0,0,0,0,0,0,},
        [41] = {42,107,3,4,302,1,4,304,1,4,305,1,4,306,1,},
        [42] = {43,107,3,4,307,1,4,308,1,4,309,1,4,310,1,},
        [43] = {44,107,3,4,311,1,4,312,1,0,0,0,0,0,0,},
        [44] = {45,107,4,4,402,1,4,404,1,4,405,1,4,406,1,},
        [45] = {46,107,4,4,407,1,4,408,1,4,409,1,4,410,1,},
        [46] = {47,107,4,4,411,1,4,412,1,0,0,0,0,0,0,},
        [47] = {48,108,1,4,101,1,4,103,1,0,0,0,0,0,0,},
        [48] = {49,108,2,4,201,1,4,203,1,0,0,0,0,0,0,},
        [49] = {50,108,3,4,301,1,4,303,1,0,0,0,0,0,0,},
        [50] = {51,108,4,4,401,1,4,403,1,0,0,0,0,0,0,},
        [51] = {52,109,0,3,301,1,3,302,1,0,0,0,0,0,0,},
        [52] = {53,109,0,3,303,1,3,304,1,0,0,0,0,0,0,},
        [53] = {54,109,0,3,311,1,3,312,1,0,0,0,0,0,0,},
        [54] = {55,109,0,3,313,1,3,314,1,0,0,0,0,0,0,},
        [55] = {56,110,1,1,101,1,1,103,1,0,0,0,0,0,0,},
        [56] = {57,110,2,1,201,1,1,203,1,0,0,0,0,0,0,},
        [57] = {58,110,3,1,301,1,1,303,1,0,0,0,0,0,0,},
        [58] = {59,110,4,1,401,1,1,403,1,0,0,0,0,0,0,},
        [59] = {60,114,1,1,113,1,1,114,1,1,115,1,1,116,1,},
        [60] = {61,114,1,1,117,1,1,118,1,1,119,1,0,0,0,},
        [61] = {62,114,2,1,213,1,1,214,1,1,215,1,1,216,1,},
        [62] = {63,114,2,1,217,1,1,218,1,1,219,1,0,0,0,},
        [63] = {64,114,3,1,313,1,1,314,1,1,315,1,1,316,1,},
        [64] = {65,114,3,1,317,1,1,318,1,1,319,1,0,0,0,},
        [65] = {66,114,4,1,413,1,1,414,1,1,415,1,1,416,1,},
        [66] = {67,114,4,1,417,1,1,418,1,1,419,1,0,0,0,},
        [67] = {68,301,0,11,1108,1,11,1101,1,11,1102,1,11,1105,1,},
        [68] = {69,301,0,11,1103,1,11,1107,1,11,1104,1,11,1106,1,},
        [69] = {70,302,0,11,1213,1,11,1214,1,11,1220,1,11,1223,1,},
        [70] = {71,302,0,11,1224,1,11,1202,1,11,1219,1,11,1205,1,},
        [71] = {72,302,0,11,1215,1,11,1207,1,11,1216,1,11,1209,1,},
        [72] = {73,302,0,11,1212,1,11,1217,1,11,1222,1,11,1203,1,},
        [73] = {74,302,0,11,1225,1,11,1221,1,11,1208,1,11,1204,1,},
        [74] = {75,302,0,11,1211,1,11,1218,1,11,1226,1,11,1227,1,},
        [75] = {76,120,1,7,1101,1,7,1103,1,0,0,0,0,0,0,},
        [76] = {77,120,2,7,1201,1,7,1203,1,0,0,0,0,0,0,},
        [77] = {78,120,3,7,1301,1,7,1303,1,0,0,0,0,0,0,},
        [78] = {79,120,4,7,1401,1,7,1403,1,0,0,0,0,0,0,},
        [79] = {80,121,0,7,2409,1,7,2410,1,7,2411,1,7,2412,1,},
        [80] = {81,122,0,7,2501,1,7,2502,1,7,2503,1,7,2504,1,},
        [81] = {82,123,0,3,301,1,3,302,1,3,303,1,3,304,1,},
        [82] = {83,124,0,3,311,1,3,312,1,3,313,1,3,314,1,},
        [83] = {84,125,0,7,2401,1,7,2402,1,7,2403,1,7,2404,1,},
        [84] = {85,126,1,7,1102,1,7,1104,1,7,1105,1,7,1106,1,},
        [85] = {86,126,1,7,1107,1,7,1108,1,7,1109,1,7,1110,1,},
        [86] = {87,126,1,7,1111,1,7,1112,1,0,0,0,0,0,0,},
        [87] = {88,126,2,7,1202,1,7,1204,1,7,1205,1,7,1206,1,},
        [88] = {89,126,2,7,1207,1,7,1208,1,7,1209,1,7,1210,1,},
        [89] = {90,126,2,7,1211,1,7,1212,1,0,0,0,0,0,0,},
        [90] = {91,126,3,7,1302,1,7,1304,1,7,1305,1,7,1306,1,},
        [91] = {92,126,3,7,1307,1,7,1308,1,7,1309,1,7,1310,1,},
        [92] = {93,126,3,7,1311,1,7,1312,1,0,0,0,0,0,0,},
        [93] = {94,126,4,7,1402,1,7,1404,1,7,1405,1,7,1406,1,},
        [94] = {95,126,4,7,1407,1,7,1408,1,7,1409,1,7,1410,1,},
        [95] = {96,126,4,7,1411,1,7,1412,1,0,0,0,0,0,0,},
        [96] = {97,127,4,2,401,1,2,402,1,2,403,1,2,404,1,},
        [97] = {98,128,4,2,405,1,2,406,1,2,407,1,2,408,1,},
        [98] = {99,129,4,2,409,1,2,410,1,2,411,1,2,412,1,},
        [99] = {100,130,0,7,2405,1,7,2406,1,7,2407,1,7,2408,1,},
        [100] = {101,131,0,2,501,1,2,502,1,2,503,1,2,504,1,},
        [101] = {102,140,1,1,104,1,1,105,1,1,106,1,1,107,1,},
        [102] = {103,140,1,1,108,1,1,109,1,1,110,1,1,111,1,},
        [103] = {104,140,1,1,112,1,0,0,0,0,0,0,0,0,0,},
        [104] = {105,140,2,1,204,1,1,205,1,1,206,1,1,207,1,},
        [105] = {106,140,2,1,208,1,1,209,1,1,210,1,1,211,1,},
        [106] = {107,140,2,1,212,1,0,0,0,0,0,0,0,0,0,},
        [107] = {108,140,3,1,304,1,1,305,1,1,306,1,1,307,1,},
        [108] = {109,140,3,1,308,1,1,309,1,1,310,1,1,311,1,},
        [109] = {110,140,3,1,312,1,0,0,0,0,0,0,0,0,0,},
        [110] = {111,140,4,1,404,1,1,405,1,1,406,1,1,407,1,},
        [111] = {112,140,4,1,408,1,1,409,1,1,410,1,1,411,1,},
        [112] = {113,140,4,1,412,1,0,0,0,0,0,0,0,0,0,},
        [113] = {114,139,0,11,1301,1,11,1303,1,11,1304,1,11,1308,1,},
        [114] = {115,139,0,11,1302,1,11,1309,1,11,1310,1,11,1311,1,},
        [115] = {116,139,0,11,1312,1,0,0,0,11,1313,1,11,1314,1,},
        [116] = {117,139,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [117] = {118,139,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [118] = {119,141,0,6,500,1,6,510,1,6,530,1,0,0,0,},
        [119] = {120,142,0,6,501,1,6,511,1,6,531,1,0,0,0,},
        [120] = {121,143,0,6,502,1,6,512,1,6,532,1,0,0,0,},
        [121] = {122,144,0,6,503,1,6,513,1,6,533,1,0,0,0,},
        [122] = {123,145,0,6,504,1,6,514,1,6,534,1,0,0,0,},
        [123] = {124,146,0,6,92,1,6,93,1,0,0,0,0,0,0,},
        [124] = {125,148,0,0,0,0,10,6,1,0,0,0,10,8,1,},
        [125] = {126,148,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [126] = {152,148,0,0,0,0,0,0,0,0,0,0,0,0,0,},
        [127] = {127,149,0,6,121,20,6,14,40,0,0,0,0,0,0,},
        [128] = {128,150,0,6,121,16,6,14,32,0,0,0,0,0,0,},
        [129] = {129,151,0,6,121,14,6,14,28,0,0,0,0,0,0,},
        [130] = {130,152,0,6,121,12,6,14,24,0,0,0,0,0,0,},
        [131] = {131,153,0,6,121,10,6,14,20,0,0,0,0,0,0,},
        [132] = {132,157,0,11,1401,1,11,1402,1,11,1403,1,11,1404,1,},
        [133] = {133,157,0,11,1405,1,11,1406,1,11,1407,1,11,1408,1,},
        [134] = {157,157,0,11,1409,1,0,0,0,0,0,0,0,0,0,},
        [135] = {134,158,0,12,9,1,0,0,0,0,0,0,0,0,0,},
        [136] = {135,158,0,12,0,0,0,0,0,0,0,0,0,0,0,},
        [137] = {136,162,0,6,555,1,6,556,1,0,0,0,0,0,0,},
        [138] = {137,705,0,6,701,1,6,702,1,6,703,1,6,704,1,},
        [139] = {153,705,0,6,721,1,6,722,1,0,0,0,0,0,0,},
        [140] = {138,163,0,6,94,1,6,95,1,0,0,0,0,0,0,},
        [141] = {139,163,0,6,159,1,6,85,2,0,0,0,0,0,0,},
        [142] = {140,164,1,7,1150,1,7,1151,1,7,1152,1,7,1153,1,},
        [143] = {141,164,2,7,1250,1,7,1251,1,7,1252,1,7,1253,1,},
        [144] = {142,164,3,7,1350,1,7,1351,1,7,1352,1,7,1353,1,},
        [145] = {143,164,4,7,1450,1,7,1451,1,7,1452,1,7,1453,1,},
        [146] = {144,165,1,1,150,1,1,151,1,1,152,1,1,153,1,},
        [147] = {145,165,2,1,250,1,1,251,1,1,252,1,1,253,1,},
        [148] = {146,165,3,1,350,1,1,351,1,1,352,1,1,353,1,},
        [149] = {147,165,4,1,450,1,1,451,1,1,452,1,1,453,1,},
        [150] = {148,166,0,13,201,1,13,202,1,0,0,0,0,0,0,},
        [151] = {149,167,0,13,101,1,13,102,1,13,103,1,13,104,1,},
        [152] = {150,168,0,14,201,1,14,202,1,0,0,0,0,0,0,},
        [153] = {151,169,0,14,101,1,14,102,1,14,103,1,14,104,1,},
        [154] = {154,170,0,6,570,1,6,573,1,6,576,1,6,579,1,},
        [155] = {155,171,0,6,571,1,6,574,1,6,577,1,6,580,1,},
        [156] = {156,172,0,6,572,1,6,575,1,6,578,1,6,581,1,},
        [157] = {158,177,1,9,1106,1,9,1110,1,9,1109,1,9,1112,1,},
        [158] = {159,177,1,9,1104,1,9,1105,1,9,1107,1,9,1108,1,},
        [159] = {160,177,1,9,1102,1,9,1111,1,0,0,0,0,0,0,},
        [160] = {161,177,2,9,1205,1,9,1206,1,9,1204,1,9,1212,1,},
        [161] = {162,177,2,9,1207,1,9,1208,1,9,1209,1,9,1211,1,},
        [162] = {163,177,2,9,1202,1,9,1210,1,0,0,0,0,0,0,},
        [163] = {164,177,3,9,1304,1,9,1308,1,9,1305,1,9,1311,1,},
        [164] = {165,177,3,9,1306,1,9,1307,1,9,1310,1,9,1312,1,},
        [165] = {166,177,3,9,1302,1,9,1309,1,0,0,0,0,0,0,},
        [166] = {167,177,4,9,1408,1,9,1410,1,9,1409,1,9,1412,1,},
        [167] = {168,177,4,9,1406,1,9,1407,1,9,1405,1,9,1411,1,},
        [168] = {169,177,4,9,1402,1,9,1404,1,0,0,0,0,0,0,},
        [169] = {170,900,1,7,1102,16,7,1104,16,7,1105,16,7,1106,16,},
        [170] = {171,900,1,7,1107,16,7,1108,16,7,1109,16,7,1110,16,},
        [171] = {172,900,1,7,1111,16,7,1112,16,0,0,0,0,0,0,},
        [172] = {173,900,2,7,1202,16,7,1204,16,7,1205,16,7,1206,16,},
        [173] = {174,900,2,7,1207,16,7,1208,16,7,1209,16,7,1210,16,},
        [174] = {175,900,2,7,1211,16,7,1212,16,0,0,0,0,0,0,},
        [175] = {176,900,3,7,1302,16,7,1304,16,7,1305,16,7,1306,16,},
        [176] = {177,900,3,7,1307,16,7,1308,16,7,1309,16,7,1310,16,},
        [177] = {178,900,3,7,1311,16,7,1312,16,0,0,0,0,0,0,},
        [178] = {179,900,4,7,1402,16,7,1404,16,7,1405,16,7,1406,16,},
        [179] = {180,900,4,7,1407,16,7,1408,16,7,1409,16,7,1410,16,},
        [180] = {181,900,4,7,1411,16,7,1412,16,0,0,0,0,0,0,},
        [181] = {182,901,1,7,1102,16,7,1104,16,7,1105,16,7,1106,16,},
        [182] = {183,901,1,7,1107,16,7,1108,16,7,1109,16,7,1110,16,},
        [183] = {184,901,1,7,1111,16,7,1112,16,0,0,0,0,0,0,},
        [184] = {185,901,2,7,1202,16,7,1204,16,7,1205,16,7,1206,16,},
        [185] = {186,901,2,7,1207,16,7,1208,16,7,1209,16,7,1210,16,},
        [186] = {187,901,2,7,1211,16,7,1212,16,0,0,0,0,0,0,},
        [187] = {188,901,3,7,1302,16,7,1304,16,7,1305,16,7,1306,16,},
        [188] = {189,901,3,7,1307,16,7,1308,16,7,1309,16,7,1310,16,},
        [189] = {190,901,3,7,1311,16,7,1312,16,0,0,0,0,0,0,},
        [190] = {191,901,4,7,1402,16,7,1404,16,7,1405,16,7,1406,16,},
        [191] = {192,901,4,7,1407,16,7,1408,16,7,1409,16,7,1410,16,},
        [192] = {193,901,4,7,1411,16,7,1412,16,0,0,0,0,0,0,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 9,
    [100] = 99,
    [101] = 100,
    [102] = 101,
    [103] = 102,
    [104] = 103,
    [105] = 104,
    [106] = 105,
    [107] = 106,
    [108] = 107,
    [109] = 108,
    [11] = 10,
    [110] = 109,
    [111] = 110,
    [112] = 111,
    [113] = 112,
    [114] = 113,
    [115] = 114,
    [116] = 115,
    [117] = 116,
    [118] = 117,
    [119] = 118,
    [12] = 11,
    [120] = 119,
    [121] = 120,
    [122] = 121,
    [123] = 122,
    [124] = 123,
    [125] = 124,
    [126] = 125,
    [127] = 127,
    [128] = 128,
    [129] = 129,
    [13] = 12,
    [130] = 130,
    [131] = 131,
    [132] = 132,
    [133] = 133,
    [134] = 135,
    [135] = 136,
    [136] = 137,
    [137] = 138,
    [138] = 140,
    [139] = 141,
    [14] = 13,
    [140] = 142,
    [141] = 143,
    [142] = 144,
    [143] = 145,
    [144] = 146,
    [145] = 147,
    [146] = 148,
    [147] = 149,
    [148] = 150,
    [149] = 151,
    [15] = 14,
    [150] = 152,
    [151] = 153,
    [152] = 126,
    [153] = 139,
    [154] = 154,
    [155] = 155,
    [156] = 156,
    [157] = 134,
    [158] = 157,
    [159] = 158,
    [16] = 15,
    [160] = 159,
    [161] = 160,
    [162] = 161,
    [163] = 162,
    [164] = 163,
    [165] = 164,
    [166] = 165,
    [167] = 166,
    [168] = 167,
    [169] = 168,
    [17] = 16,
    [170] = 169,
    [171] = 170,
    [172] = 171,
    [173] = 172,
    [174] = 173,
    [175] = 174,
    [176] = 175,
    [177] = 176,
    [178] = 177,
    [179] = 178,
    [18] = 17,
    [180] = 179,
    [181] = 180,
    [182] = 181,
    [183] = 182,
    [184] = 183,
    [185] = 184,
    [186] = 185,
    [187] = 186,
    [188] = 187,
    [189] = 188,
    [19] = 18,
    [190] = 189,
    [191] = 190,
    [192] = 191,
    [193] = 192,
    [2] = 2,
    [20] = 19,
    [21] = 20,
    [22] = 21,
    [23] = 22,
    [24] = 23,
    [25] = 24,
    [26] = 25,
    [27] = 26,
    [28] = 27,
    [29] = 28,
    [3] = 3,
    [30] = 29,
    [31] = 30,
    [32] = 31,
    [33] = 32,
    [34] = 33,
    [35] = 34,
    [36] = 35,
    [37] = 36,
    [38] = 37,
    [39] = 38,
    [40] = 39,
    [41] = 40,
    [42] = 41,
    [43] = 42,
    [44] = 43,
    [45] = 44,
    [46] = 45,
    [47] = 46,
    [48] = 47,
    [49] = 48,
    [5] = 4,
    [50] = 49,
    [51] = 50,
    [52] = 51,
    [53] = 52,
    [54] = 53,
    [55] = 54,
    [56] = 55,
    [57] = 56,
    [58] = 57,
    [59] = 58,
    [6] = 5,
    [60] = 59,
    [61] = 60,
    [62] = 61,
    [63] = 62,
    [64] = 63,
    [65] = 64,
    [66] = 65,
    [67] = 66,
    [68] = 67,
    [69] = 68,
    [7] = 6,
    [70] = 69,
    [71] = 70,
    [72] = 71,
    [73] = 72,
    [74] = 73,
    [75] = 74,
    [76] = 75,
    [77] = 76,
    [78] = 77,
    [79] = 78,
    [8] = 7,
    [80] = 79,
    [81] = 80,
    [82] = 81,
    [83] = 82,
    [84] = 83,
    [85] = 84,
    [86] = 85,
    [87] = 86,
    [88] = 87,
    [89] = 88,
    [9] = 8,
    [90] = 89,
    [91] = 90,
    [92] = 91,
    [93] = 92,
    [94] = 93,
    [95] = 94,
    [96] = 95,
    [97] = 96,
    [98] = 97,
    [99] = 98,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,
    [9] = 10,
    [99] = 100,
    [100] = 101,
    [101] = 102,
    [102] = 103,
    [103] = 104,
    [104] = 105,
    [105] = 106,
    [106] = 107,
    [107] = 108,
    [108] = 109,
    [10] = 11,
    [109] = 110,
    [110] = 111,
    [111] = 112,
    [112] = 113,
    [113] = 114,
    [114] = 115,
    [115] = 116,
    [116] = 117,
    [117] = 118,
    [118] = 119,
    [11] = 12,
    [119] = 120,
    [120] = 121,
    [121] = 122,
    [122] = 123,
    [123] = 124,
    [124] = 125,
    [125] = 126,
    [127] = 127,
    [128] = 128,
    [129] = 129,
    [12] = 13,
    [130] = 130,
    [131] = 131,
    [132] = 132,
    [133] = 133,
    [135] = 134,
    [136] = 135,
    [137] = 136,
    [138] = 137,
    [140] = 138,
    [141] = 139,
    [13] = 14,
    [142] = 140,
    [143] = 141,
    [144] = 142,
    [145] = 143,
    [146] = 144,
    [147] = 145,
    [148] = 146,
    [149] = 147,
    [150] = 148,
    [151] = 149,
    [14] = 15,
    [152] = 150,
    [153] = 151,
    [126] = 152,
    [139] = 153,
    [154] = 154,
    [155] = 155,
    [156] = 156,
    [134] = 157,
    [157] = 158,
    [158] = 159,
    [15] = 16,
    [159] = 160,
    [160] = 161,
    [161] = 162,
    [162] = 163,
    [163] = 164,
    [164] = 165,
    [165] = 166,
    [166] = 167,
    [167] = 168,
    [168] = 169,
    [16] = 17,
    [169] = 170,
    [170] = 171,
    [171] = 172,
    [172] = 173,
    [173] = 174,
    [174] = 175,
    [175] = 176,
    [176] = 177,
    [177] = 178,
    [178] = 179,
    [17] = 18,
    [179] = 180,
    [180] = 181,
    [181] = 182,
    [182] = 183,
    [183] = 184,
    [184] = 185,
    [185] = 186,
    [186] = 187,
    [187] = 188,
    [188] = 189,
    [18] = 19,
    [189] = 190,
    [190] = 191,
    [191] = 192,
    [192] = 193,
    [2] = 2,
    [19] = 20,
    [20] = 21,
    [21] = 22,
    [22] = 23,
    [23] = 24,
    [24] = 25,
    [25] = 26,
    [26] = 27,
    [27] = 28,
    [28] = 29,
    [3] = 3,
    [29] = 30,
    [30] = 31,
    [31] = 32,
    [32] = 33,
    [33] = 34,
    [34] = 35,
    [35] = 36,
    [36] = 37,
    [37] = 38,
    [38] = 39,
    [39] = 40,
    [40] = 41,
    [41] = 42,
    [42] = 43,
    [43] = 44,
    [44] = 45,
    [45] = 46,
    [46] = 47,
    [47] = 48,
    [48] = 49,
    [4] = 5,
    [49] = 50,
    [50] = 51,
    [51] = 52,
    [52] = 53,
    [53] = 54,
    [54] = 55,
    [55] = 56,
    [56] = 57,
    [57] = 58,
    [58] = 59,
    [5] = 6,
    [59] = 60,
    [60] = 61,
    [61] = 62,
    [62] = 63,
    [63] = 64,
    [64] = 65,
    [65] = 66,
    [66] = 67,
    [67] = 68,
    [68] = 69,
    [6] = 7,
    [69] = 70,
    [70] = 71,
    [71] = 72,
    [72] = 73,
    [73] = 74,
    [74] = 75,
    [75] = 76,
    [76] = 77,
    [77] = 78,
    [78] = 79,
    [7] = 8,
    [79] = 80,
    [80] = 81,
    [81] = 82,
    [82] = 83,
    [83] = 84,
    [84] = 85,
    [85] = 86,
    [86] = 87,
    [87] = 88,
    [88] = 89,
    [8] = 9,
    [89] = 90,
    [90] = 91,
    [91] = 92,
    [92] = 93,
    [93] = 94,
    [94] = 95,
    [95] = 96,
    [96] = 97,
    [97] = 98,
    [98] = 99,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in box")
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
function box.length()
    return #box._data
end

-- 
function box.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function box.isVersionValid(v)
    if box.version then
        if v then
            return box.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function box.indexOf(index)
    if index == nil or not box._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/box.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/box.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/box.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "box" )
                _isDataExist = box.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "box" )
                _isBaseExist = box.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "box" )
                _isExist = box.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "box" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "box" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = box._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "box" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function box.get(id)
    
    return box.indexOf(__index_id[id])
        
end

--
function box.set(id, key, value)
    local record = box.get(id)
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
function box.index()
    return __index_id
end

return box