--guild_cross_war_point

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  point_id = 2,    --据点id-int 
  hole_id = 3,    --坑位编号-int 
  point_x = 4,    --坑位坐标X-int 
  point_y = 5,    --坑位坐标Y-int 
  point_range = 6,    --坑点点击区域-int 
  vary = 7,    --基于标准坑位XY坐标浮动范围-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  point_id = "int",    --据点id-2 
  hole_id = "int",    --坑位编号-3 
  point_x = "int",    --坑位坐标X-4 
  point_y = "int",    --坑位坐标Y-5 
  point_range = "int",    --坑点点击区域-6 
  vary = "int",    --基于标准坑位XY坐标浮动范围-7 

}


-- data
local guild_cross_war_point = {
    version =  1,
    _data = {
        [1] = {1,1,1,3798,3017,50,20,},
        [2] = {2,1,2,3897,3041,50,20,},
        [3] = {3,1,3,3985,3042,50,20,},
        [4] = {4,1,4,4063,3017,50,20,},
        [5] = {5,1,5,4143,2986,50,20,},
        [6] = {6,1,6,3760,2902,50,20,},
        [7] = {7,1,7,3845,2903,50,20,},
        [8] = {8,1,8,3930,2917,50,20,},
        [9] = {9,1,9,4009,2905,50,20,},
        [10] = {10,1,10,4090,2879,50,20,},
        [11] = {21,2,1,4332,2675,50,20,},
        [12] = {22,2,2,4419,2696,50,20,},
        [13] = {23,2,3,4488,2623,50,20,},
        [14] = {24,2,4,4561,2679,50,20,},
        [15] = {25,2,5,4639,2642,50,20,},
        [16] = {26,2,6,4282,2561,50,20,},
        [17] = {27,2,7,4386,2515,50,20,},
        [18] = {28,2,8,4471,2471,50,20,},
        [19] = {29,2,9,4572,2505,50,20,},
        [20] = {30,2,10,4686,2534,50,20,},
        [21] = {41,3,1,4523,1991,50,20,},
        [22] = {42,3,2,4626,2011,50,20,},
        [23] = {43,3,3,4740,1952,50,20,},
        [24] = {44,3,4,4812,1916,50,20,},
        [25] = {45,3,5,4918,1907,50,20,},
        [26] = {46,3,6,4573,1894,50,20,},
        [27] = {47,3,7,4669,1877,50,20,},
        [28] = {48,3,8,4634,1765,50,20,},
        [29] = {49,3,9,4740,1770,50,20,},
        [30] = {50,3,10,4866,1808,50,20,},
        [31] = {61,4,1,4471,1335,50,20,},
        [32] = {62,4,2,4552,1357,50,20,},
        [33] = {63,4,3,4619,1389,50,20,},
        [34] = {64,4,4,4698,1407,50,20,},
        [35] = {65,4,5,4786,1375,50,20,},
        [36] = {66,4,6,4398,1240,50,20,},
        [37] = {67,4,7,4477,1190,50,20,},
        [38] = {68,4,8,4566,1198,50,20,},
        [39] = {69,4,9,4643,1247,50,20,},
        [40] = {70,4,10,4722,1274,50,20,},
        [41] = {81,5,1,3912,905,50,20,},
        [42] = {82,5,2,3998,925,50,20,},
        [43] = {83,5,3,4066,854,50,20,},
        [44] = {84,5,4,4137,911,50,20,},
        [45] = {85,5,5,4222,873,50,20,},
        [46] = {86,5,6,3859,790,50,20,},
        [47] = {87,5,7,3963,748,50,20,},
        [48] = {88,5,8,4047,702,50,20,},
        [49] = {89,5,9,4148,739,50,20,},
        [50] = {90,5,10,4263,763,50,20,},
        [51] = {101,6,1,3166,614,50,20,},
        [52] = {102,6,2,3259,631,50,20,},
        [53] = {103,6,3,3334,592,50,20,},
        [54] = {104,6,4,3403,622,50,20,},
        [55] = {105,6,5,3475,646,50,20,},
        [56] = {106,6,6,3135,514,50,20,},
        [57] = {107,6,7,3217,495,50,20,},
        [58] = {108,6,8,3305,461,50,20,},
        [59] = {109,6,9,3396,472,50,20,},
        [60] = {110,6,10,3475,515,50,20,},
        [61] = {121,7,1,2446,482,50,20,},
        [62] = {122,7,2,2522,451,50,20,},
        [63] = {123,7,3,2605,445,50,20,},
        [64] = {124,7,4,2695,472,50,20,},
        [65] = {125,7,5,2775,419,50,20,},
        [66] = {126,7,6,2361,389,50,20,},
        [67] = {127,7,7,2441,364,50,20,},
        [68] = {128,7,8,2531,323,50,20,},
        [69] = {129,7,9,2623,322,50,20,},
        [70] = {130,7,10,2699,355,50,20,},
        [71] = {141,8,1,1550,711,50,20,},
        [72] = {142,8,2,1623,689,50,20,},
        [73] = {143,8,3,1699,658,50,20,},
        [74] = {144,8,4,1776,689,50,20,},
        [75] = {145,8,5,1868,625,50,20,},
        [76] = {146,8,6,1497,597,50,20,},
        [77] = {147,8,7,1576,561,50,20,},
        [78] = {148,8,8,1648,529,50,20,},
        [79] = {149,8,9,1721,517,50,20,},
        [80] = {150,8,10,1795,558,50,20,},
        [81] = {161,9,1,711,910,50,20,},
        [82] = {162,9,2,781,886,50,20,},
        [83] = {163,9,3,860,853,50,20,},
        [84] = {164,9,4,939,878,50,20,},
        [85] = {165,9,5,1021,921,50,20,},
        [86] = {166,9,6,671,806,50,20,},
        [87] = {167,9,7,744,754,50,20,},
        [88] = {168,9,8,825,734,50,20,},
        [89] = {169,9,9,924,737,50,20,},
        [90] = {170,9,10,1011,786,50,20,},
        [91] = {181,10,1,685,1446,50,20,},
        [92] = {182,10,2,772,1446,50,20,},
        [93] = {183,10,3,843,1426,50,20,},
        [94] = {184,10,4,912,1435,50,20,},
        [95] = {185,10,5,986,1412,50,20,},
        [96] = {186,10,6,632,1329,50,20,},
        [97] = {187,10,7,715,1302,50,20,},
        [98] = {188,10,8,790,1318,50,20,},
        [99] = {189,10,9,873,1286,50,20,},
        [100] = {190,10,10,949,1298,50,20,},
        [101] = {201,11,1,632,1903,50,20,},
        [102] = {202,11,2,716,1884,50,20,},
        [103] = {203,11,3,797,1903,50,20,},
        [104] = {204,11,4,879,1877,50,20,},
        [105] = {205,11,5,963,1886,50,20,},
        [106] = {206,11,6,578,1807,50,20,},
        [107] = {207,11,7,668,1769,50,20,},
        [108] = {208,11,8,753,1737,50,20,},
        [109] = {209,11,9,834,1759,50,20,},
        [110] = {210,11,10,920,1751,50,20,},
        [111] = {221,12,1,671,2274,50,20,},
        [112] = {222,12,2,742,2357,50,20,},
        [113] = {223,12,3,821,2375,50,20,},
        [114] = {224,12,4,905,2390,50,20,},
        [115] = {225,12,5,984,2388,50,20,},
        [116] = {226,12,6,765,2231,50,20,},
        [117] = {227,12,7,857,2266,50,20,},
        [118] = {228,12,8,936,2241,50,20,},
        [119] = {229,12,9,1010,2260,50,20,},
        [120] = {230,12,10,1088,2328,50,20,},
        [121] = {241,13,1,1174,2719,50,20,},
        [122] = {242,13,2,1264,2717,50,20,},
        [123] = {243,13,3,1345,2763,50,20,},
        [124] = {244,13,4,1422,2736,50,20,},
        [125] = {245,13,5,1515,2716,50,20,},
        [126] = {246,13,6,1149,2596,50,20,},
        [127] = {247,13,7,1236,2598,50,20,},
        [128] = {248,13,8,1308,2572,50,20,},
        [129] = {249,13,9,1386,2614,50,20,},
        [130] = {250,13,10,1474,2611,50,20,},
        [131] = {261,14,1,1711,3043,50,20,},
        [132] = {262,14,2,1796,3072,50,20,},
        [133] = {263,14,3,1876,3057,50,20,},
        [134] = {264,14,4,1951,3045,50,20,},
        [135] = {265,14,5,2033,3035,50,20,},
        [136] = {266,14,6,1655,2940,50,20,},
        [137] = {267,14,7,1741,2916,50,20,},
        [138] = {268,14,8,1816,2948,50,20,},
        [139] = {269,14,9,1901,2939,50,20,},
        [140] = {270,14,10,1990,2929,50,20,},
        [141] = {281,15,1,2351,3000,50,20,},
        [142] = {282,15,2,2389,2899,50,20,},
        [143] = {283,15,3,2468,2939,50,20,},
        [144] = {284,15,4,2551,2910,50,20,},
        [145] = {285,15,5,2630,2896,50,20,},
        [146] = {286,15,6,2322,2823,50,20,},
        [147] = {287,15,7,2379,2720,50,20,},
        [148] = {288,15,8,2451,2779,50,20,},
        [149] = {289,15,9,2525,2769,50,20,},
        [150] = {290,15,10,2606,2759,50,20,},
        [151] = {301,16,1,2972,3085,50,20,},
        [152] = {302,16,2,3063,3086,50,20,},
        [153] = {303,16,3,3146,3100,50,20,},
        [154] = {304,16,4,3225,3073,50,20,},
        [155] = {305,16,5,3296,3012,50,20,},
        [156] = {306,16,6,2965,2972,50,20,},
        [157] = {307,16,7,3039,2963,50,20,},
        [158] = {308,16,8,321,2973,50,20,},
        [159] = {309,16,9,3190,2947,50,20,},
        [160] = {310,16,10,3262,2899,50,20,},
        [161] = {321,17,1,3614,2294,50,20,},
        [162] = {322,17,2,3746,2306,50,20,},
        [163] = {323,17,3,3698,2190,50,20,},
        [164] = {324,17,4,3563,2178,50,20,},
        [165] = {325,17,5,3501,2275,50,20,},
        [166] = {326,17,6,3561,2411,50,20,},
        [167] = {327,17,7,3671,2420,50,20,},
        [168] = {328,17,8,3782,2411,50,20,},
        [169] = {329,17,9,3888,2314,50,20,},
        [170] = {330,17,10,3833,2214,50,20,},
        [171] = {331,17,11,3766,2110,50,20,},
        [172] = {332,17,12,3637,2087,50,20,},
        [173] = {333,17,13,3472,2111,50,20,},
        [174] = {334,17,14,3400,2238,50,20,},
        [175] = {335,17,15,3443,2391,50,20,},
        [176] = {341,18,1,3809,1701,50,20,},
        [177] = {342,18,2,3945,1692,50,20,},
        [178] = {343,18,3,3896,1596,50,20,},
        [179] = {344,18,4,3750,1583,50,20,},
        [180] = {345,18,5,3663,1670,50,20,},
        [181] = {346,18,6,3722,1798,50,20,},
        [182] = {347,18,7,3853,1827,50,20,},
        [183] = {348,18,8,3978,1807,50,20,},
        [184] = {349,18,9,4086,1700,50,20,},
        [185] = {350,18,10,4042,1583,50,20,},
        [186] = {351,18,11,3974,1489,50,20,},
        [187] = {352,18,12,3819,1496,50,20,},
        [188] = {353,18,13,3643,1541,50,20,},
        [189] = {354,18,14,3537,1606,50,20,},
        [190] = {355,18,15,3590,1770,50,20,},
        [191] = {361,19,1,3222,1146,50,20,},
        [192] = {362,19,2,3347,1177,50,20,},
        [193] = {363,19,3,3291,1046,50,20,},
        [194] = {364,19,4,3146,1082,50,20,},
        [195] = {365,19,5,3060,1197,50,20,},
        [196] = {366,19,6,3158,1259,50,20,},
        [197] = {367,19,7,3275,1299,50,20,},
        [198] = {368,19,8,3404,1284,50,20,},
        [199] = {369,19,9,3481,1181,50,20,},
        [200] = {370,19,10,3431,1071,50,20,},
        [201] = {371,19,11,3364,975,50,20,},
        [202] = {372,19,12,3212,952,50,20,},
        [203] = {373,19,13,3126,931,50,20,},
        [204] = {374,19,14,3045,1018,50,20,},
        [205] = {375,19,15,2971,1108,50,20,},
        [206] = {381,20,1,2322,938,50,20,},
        [207] = {382,20,2,2492,928,50,20,},
        [208] = {383,20,3,2417,862,50,20,},
        [209] = {384,20,4,2192,982,50,20,},
        [210] = {385,20,5,2270,1082,50,20,},
        [211] = {386,20,6,2385,1062,50,20,},
        [212] = {387,20,7,2510,1056,50,20,},
        [213] = {388,20,8,2608,952,50,20,},
        [214] = {389,20,9,2570,804,50,20,},
        [215] = {390,20,10,2479,734,50,20,},
        [216] = {391,20,11,2351,761,50,20,},
        [217] = {392,20,12,2245,849,50,20,},
        [218] = {393,20,13,2130,870,50,20,},
        [219] = {394,20,14,2057,976,50,20,},
        [220] = {395,20,15,2124,1094,50,20,},
        [221] = {401,21,1,1520,1278,50,20,},
        [222] = {402,21,2,1645,1285,50,20,},
        [223] = {403,21,3,1585,1172,50,20,},
        [224] = {404,21,4,1464,1151,50,20,},
        [225] = {405,21,5,1391,1255,50,20,},
        [226] = {406,21,6,1464,1392,50,20,},
        [227] = {407,21,7,1572,1402,50,20,},
        [228] = {408,21,8,1689,1394,50,20,},
        [229] = {409,21,9,1777,1308,50,20,},
        [230] = {410,21,10,1713,1189,50,20,},
        [231] = {411,21,11,1680,1063,50,20,},
        [232] = {412,21,12,1552,1047,50,20,},
        [233] = {413,21,13,1372,1107,50,20,},
        [234] = {414,21,14,1279,1239,50,20,},
        [235] = {415,21,15,1330,1392,50,20,},
        [236] = {421,22,1,1398,1970,50,20,},
        [237] = {422,22,2,1290,1977,50,20,},
        [238] = {423,22,3,1533,1995,50,20,},
        [239] = {424,22,4,1639,1915,50,20,},
        [240] = {425,22,5,1508,1861,50,20,},
        [241] = {426,22,6,1320,1845,50,20,},
        [242] = {427,22,7,1214,1870,50,20,},
        [243] = {428,22,8,1147,1971,50,20,},
        [244] = {429,22,9,1215,2076,50,20,},
        [245] = {430,22,10,1347,2127,50,20,},
        [246] = {431,22,11,1467,2084,50,20,},
        [247] = {432,22,12,1595,2121,50,20,},
        [248] = {433,22,13,1683,2023,50,20,},
        [249] = {434,22,14,1768,1915,50,20,},
        [250] = {435,22,15,1599,1807,50,20,},
        [251] = {441,23,1,2010,2357,50,20,},
        [252] = {442,23,2,2134,2363,50,20,},
        [253] = {443,23,3,2085,2253,50,20,},
        [254] = {444,23,4,1953,2239,50,20,},
        [255] = {445,23,5,1892,2336,50,20,},
        [256] = {446,23,6,1953,2471,50,20,},
        [257] = {447,23,7,2060,2482,50,20,},
        [258] = {448,23,8,2175,2474,50,20,},
        [259] = {449,23,9,2275,2375,50,20,},
        [260] = {450,23,10,2223,2278,50,20,},
        [261] = {451,23,11,2155,2172,50,20,},
        [262] = {452,23,12,2027,2151,50,20,},
        [263] = {453,23,13,1867,2176,50,20,},
        [264] = {454,23,14,1791,2301,50,20,},
        [265] = {455,23,15,1834,2451,50,20,},
        [266] = {461,24,1,2858,2482,50,20,},
        [267] = {462,24,2,3003,2463,50,20,},
        [268] = {463,24,3,2918,2384,50,20,},
        [269] = {464,24,4,2785,2387,50,20,},
        [270] = {465,24,5,2691,2429,50,20,},
        [271] = {466,24,6,2759,2552,50,20,},
        [272] = {467,24,7,2876,2607,50,20,},
        [273] = {468,24,8,2996,2595,50,20,},
        [274] = {469,24,9,3097,2446,50,20,},
        [275] = {470,24,10,3073,2324,50,20,},
        [276] = {471,24,11,2981,2278,50,20,},
        [277] = {472,24,12,2859,2274,50,20,},
        [278] = {473,24,13,2720,2276,50,20,},
        [279] = {474,24,14,2597,2386,50,20,},
        [280] = {475,24,15,2646,2563,50,20,},
        [281] = {481,25,1,2641,1658,50,20,},
        [282] = {482,25,2,2543,1646,50,20,},
        [283] = {483,25,3,2735,1627,50,20,},
        [284] = {484,25,4,2443,1606,50,20,},
        [285] = {485,25,5,2829,1613,50,20,},
        [286] = {486,25,6,2651,1788,50,20,},
        [287] = {487,25,7,1632,1523,50,20,},
        [288] = {488,25,8,2542,1800,50,20,},
        [289] = {489,25,9,2545,1490,50,20,},
        [290] = {490,25,10,2807,1774,50,20,},
        [291] = {491,25,11,2762,1490,50,20,},
        [292] = {492,25,12,2427,1758,50,20,},
        [293] = {493,25,13,2424,1465,50,20,},
        [294] = {494,25,14,2922,1725,50,20,},
        [295] = {495,25,15,2899,1520,50,20,},
        [296] = {496,25,16,2332,1689,50,20,},
        [297] = {497,25,17,2348,1554,50,20,},
        [298] = {498,25,18,3032,1728,50,20,},
        [299] = {499,25,19,2979,1583,50,20,},
        [300] = {500,25,20,2251,1596,50,20,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 10,
    [101] = 51,
    [102] = 52,
    [103] = 53,
    [104] = 54,
    [105] = 55,
    [106] = 56,
    [107] = 57,
    [108] = 58,
    [109] = 59,
    [110] = 60,
    [121] = 61,
    [122] = 62,
    [123] = 63,
    [124] = 64,
    [125] = 65,
    [126] = 66,
    [127] = 67,
    [128] = 68,
    [129] = 69,
    [130] = 70,
    [141] = 71,
    [142] = 72,
    [143] = 73,
    [144] = 74,
    [145] = 75,
    [146] = 76,
    [147] = 77,
    [148] = 78,
    [149] = 79,
    [150] = 80,
    [161] = 81,
    [162] = 82,
    [163] = 83,
    [164] = 84,
    [165] = 85,
    [166] = 86,
    [167] = 87,
    [168] = 88,
    [169] = 89,
    [170] = 90,
    [181] = 91,
    [182] = 92,
    [183] = 93,
    [184] = 94,
    [185] = 95,
    [186] = 96,
    [187] = 97,
    [188] = 98,
    [189] = 99,
    [190] = 100,
    [2] = 2,
    [201] = 101,
    [202] = 102,
    [203] = 103,
    [204] = 104,
    [205] = 105,
    [206] = 106,
    [207] = 107,
    [208] = 108,
    [209] = 109,
    [21] = 11,
    [210] = 110,
    [22] = 12,
    [221] = 111,
    [222] = 112,
    [223] = 113,
    [224] = 114,
    [225] = 115,
    [226] = 116,
    [227] = 117,
    [228] = 118,
    [229] = 119,
    [23] = 13,
    [230] = 120,
    [24] = 14,
    [241] = 121,
    [242] = 122,
    [243] = 123,
    [244] = 124,
    [245] = 125,
    [246] = 126,
    [247] = 127,
    [248] = 128,
    [249] = 129,
    [25] = 15,
    [250] = 130,
    [26] = 16,
    [261] = 131,
    [262] = 132,
    [263] = 133,
    [264] = 134,
    [265] = 135,
    [266] = 136,
    [267] = 137,
    [268] = 138,
    [269] = 139,
    [27] = 17,
    [270] = 140,
    [28] = 18,
    [281] = 141,
    [282] = 142,
    [283] = 143,
    [284] = 144,
    [285] = 145,
    [286] = 146,
    [287] = 147,
    [288] = 148,
    [289] = 149,
    [29] = 19,
    [290] = 150,
    [3] = 3,
    [30] = 20,
    [301] = 151,
    [302] = 152,
    [303] = 153,
    [304] = 154,
    [305] = 155,
    [306] = 156,
    [307] = 157,
    [308] = 158,
    [309] = 159,
    [310] = 160,
    [321] = 161,
    [322] = 162,
    [323] = 163,
    [324] = 164,
    [325] = 165,
    [326] = 166,
    [327] = 167,
    [328] = 168,
    [329] = 169,
    [330] = 170,
    [331] = 171,
    [332] = 172,
    [333] = 173,
    [334] = 174,
    [335] = 175,
    [341] = 176,
    [342] = 177,
    [343] = 178,
    [344] = 179,
    [345] = 180,
    [346] = 181,
    [347] = 182,
    [348] = 183,
    [349] = 184,
    [350] = 185,
    [351] = 186,
    [352] = 187,
    [353] = 188,
    [354] = 189,
    [355] = 190,
    [361] = 191,
    [362] = 192,
    [363] = 193,
    [364] = 194,
    [365] = 195,
    [366] = 196,
    [367] = 197,
    [368] = 198,
    [369] = 199,
    [370] = 200,
    [371] = 201,
    [372] = 202,
    [373] = 203,
    [374] = 204,
    [375] = 205,
    [381] = 206,
    [382] = 207,
    [383] = 208,
    [384] = 209,
    [385] = 210,
    [386] = 211,
    [387] = 212,
    [388] = 213,
    [389] = 214,
    [390] = 215,
    [391] = 216,
    [392] = 217,
    [393] = 218,
    [394] = 219,
    [395] = 220,
    [4] = 4,
    [401] = 221,
    [402] = 222,
    [403] = 223,
    [404] = 224,
    [405] = 225,
    [406] = 226,
    [407] = 227,
    [408] = 228,
    [409] = 229,
    [41] = 21,
    [410] = 230,
    [411] = 231,
    [412] = 232,
    [413] = 233,
    [414] = 234,
    [415] = 235,
    [42] = 22,
    [421] = 236,
    [422] = 237,
    [423] = 238,
    [424] = 239,
    [425] = 240,
    [426] = 241,
    [427] = 242,
    [428] = 243,
    [429] = 244,
    [43] = 23,
    [430] = 245,
    [431] = 246,
    [432] = 247,
    [433] = 248,
    [434] = 249,
    [435] = 250,
    [44] = 24,
    [441] = 251,
    [442] = 252,
    [443] = 253,
    [444] = 254,
    [445] = 255,
    [446] = 256,
    [447] = 257,
    [448] = 258,
    [449] = 259,
    [45] = 25,
    [450] = 260,
    [451] = 261,
    [452] = 262,
    [453] = 263,
    [454] = 264,
    [455] = 265,
    [46] = 26,
    [461] = 266,
    [462] = 267,
    [463] = 268,
    [464] = 269,
    [465] = 270,
    [466] = 271,
    [467] = 272,
    [468] = 273,
    [469] = 274,
    [47] = 27,
    [470] = 275,
    [471] = 276,
    [472] = 277,
    [473] = 278,
    [474] = 279,
    [475] = 280,
    [48] = 28,
    [481] = 281,
    [482] = 282,
    [483] = 283,
    [484] = 284,
    [485] = 285,
    [486] = 286,
    [487] = 287,
    [488] = 288,
    [489] = 289,
    [49] = 29,
    [490] = 290,
    [491] = 291,
    [492] = 292,
    [493] = 293,
    [494] = 294,
    [495] = 295,
    [496] = 296,
    [497] = 297,
    [498] = 298,
    [499] = 299,
    [5] = 5,
    [50] = 30,
    [500] = 300,
    [6] = 6,
    [61] = 31,
    [62] = 32,
    [63] = 33,
    [64] = 34,
    [65] = 35,
    [66] = 36,
    [67] = 37,
    [68] = 38,
    [69] = 39,
    [7] = 7,
    [70] = 40,
    [8] = 8,
    [81] = 41,
    [82] = 42,
    [83] = 43,
    [84] = 44,
    [85] = 45,
    [86] = 46,
    [87] = 47,
    [88] = 48,
    [89] = 49,
    [9] = 9,
    [90] = 50,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,
    [10] = 10,
    [51] = 101,
    [52] = 102,
    [53] = 103,
    [54] = 104,
    [55] = 105,
    [56] = 106,
    [57] = 107,
    [58] = 108,
    [59] = 109,
    [60] = 110,
    [61] = 121,
    [62] = 122,
    [63] = 123,
    [64] = 124,
    [65] = 125,
    [66] = 126,
    [67] = 127,
    [68] = 128,
    [69] = 129,
    [70] = 130,
    [71] = 141,
    [72] = 142,
    [73] = 143,
    [74] = 144,
    [75] = 145,
    [76] = 146,
    [77] = 147,
    [78] = 148,
    [79] = 149,
    [80] = 150,
    [81] = 161,
    [82] = 162,
    [83] = 163,
    [84] = 164,
    [85] = 165,
    [86] = 166,
    [87] = 167,
    [88] = 168,
    [89] = 169,
    [90] = 170,
    [91] = 181,
    [92] = 182,
    [93] = 183,
    [94] = 184,
    [95] = 185,
    [96] = 186,
    [97] = 187,
    [98] = 188,
    [99] = 189,
    [100] = 190,
    [2] = 2,
    [101] = 201,
    [102] = 202,
    [103] = 203,
    [104] = 204,
    [105] = 205,
    [106] = 206,
    [107] = 207,
    [108] = 208,
    [109] = 209,
    [11] = 21,
    [110] = 210,
    [12] = 22,
    [111] = 221,
    [112] = 222,
    [113] = 223,
    [114] = 224,
    [115] = 225,
    [116] = 226,
    [117] = 227,
    [118] = 228,
    [119] = 229,
    [13] = 23,
    [120] = 230,
    [14] = 24,
    [121] = 241,
    [122] = 242,
    [123] = 243,
    [124] = 244,
    [125] = 245,
    [126] = 246,
    [127] = 247,
    [128] = 248,
    [129] = 249,
    [15] = 25,
    [130] = 250,
    [16] = 26,
    [131] = 261,
    [132] = 262,
    [133] = 263,
    [134] = 264,
    [135] = 265,
    [136] = 266,
    [137] = 267,
    [138] = 268,
    [139] = 269,
    [17] = 27,
    [140] = 270,
    [18] = 28,
    [141] = 281,
    [142] = 282,
    [143] = 283,
    [144] = 284,
    [145] = 285,
    [146] = 286,
    [147] = 287,
    [148] = 288,
    [149] = 289,
    [19] = 29,
    [150] = 290,
    [3] = 3,
    [20] = 30,
    [151] = 301,
    [152] = 302,
    [153] = 303,
    [154] = 304,
    [155] = 305,
    [156] = 306,
    [157] = 307,
    [158] = 308,
    [159] = 309,
    [160] = 310,
    [161] = 321,
    [162] = 322,
    [163] = 323,
    [164] = 324,
    [165] = 325,
    [166] = 326,
    [167] = 327,
    [168] = 328,
    [169] = 329,
    [170] = 330,
    [171] = 331,
    [172] = 332,
    [173] = 333,
    [174] = 334,
    [175] = 335,
    [176] = 341,
    [177] = 342,
    [178] = 343,
    [179] = 344,
    [180] = 345,
    [181] = 346,
    [182] = 347,
    [183] = 348,
    [184] = 349,
    [185] = 350,
    [186] = 351,
    [187] = 352,
    [188] = 353,
    [189] = 354,
    [190] = 355,
    [191] = 361,
    [192] = 362,
    [193] = 363,
    [194] = 364,
    [195] = 365,
    [196] = 366,
    [197] = 367,
    [198] = 368,
    [199] = 369,
    [200] = 370,
    [201] = 371,
    [202] = 372,
    [203] = 373,
    [204] = 374,
    [205] = 375,
    [206] = 381,
    [207] = 382,
    [208] = 383,
    [209] = 384,
    [210] = 385,
    [211] = 386,
    [212] = 387,
    [213] = 388,
    [214] = 389,
    [215] = 390,
    [216] = 391,
    [217] = 392,
    [218] = 393,
    [219] = 394,
    [220] = 395,
    [4] = 4,
    [221] = 401,
    [222] = 402,
    [223] = 403,
    [224] = 404,
    [225] = 405,
    [226] = 406,
    [227] = 407,
    [228] = 408,
    [229] = 409,
    [21] = 41,
    [230] = 410,
    [231] = 411,
    [232] = 412,
    [233] = 413,
    [234] = 414,
    [235] = 415,
    [22] = 42,
    [236] = 421,
    [237] = 422,
    [238] = 423,
    [239] = 424,
    [240] = 425,
    [241] = 426,
    [242] = 427,
    [243] = 428,
    [244] = 429,
    [23] = 43,
    [245] = 430,
    [246] = 431,
    [247] = 432,
    [248] = 433,
    [249] = 434,
    [250] = 435,
    [24] = 44,
    [251] = 441,
    [252] = 442,
    [253] = 443,
    [254] = 444,
    [255] = 445,
    [256] = 446,
    [257] = 447,
    [258] = 448,
    [259] = 449,
    [25] = 45,
    [260] = 450,
    [261] = 451,
    [262] = 452,
    [263] = 453,
    [264] = 454,
    [265] = 455,
    [26] = 46,
    [266] = 461,
    [267] = 462,
    [268] = 463,
    [269] = 464,
    [270] = 465,
    [271] = 466,
    [272] = 467,
    [273] = 468,
    [274] = 469,
    [27] = 47,
    [275] = 470,
    [276] = 471,
    [277] = 472,
    [278] = 473,
    [279] = 474,
    [280] = 475,
    [28] = 48,
    [281] = 481,
    [282] = 482,
    [283] = 483,
    [284] = 484,
    [285] = 485,
    [286] = 486,
    [287] = 487,
    [288] = 488,
    [289] = 489,
    [29] = 49,
    [290] = 490,
    [291] = 491,
    [292] = 492,
    [293] = 493,
    [294] = 494,
    [295] = 495,
    [296] = 496,
    [297] = 497,
    [298] = 498,
    [299] = 499,
    [5] = 5,
    [30] = 50,
    [300] = 500,
    [6] = 6,
    [31] = 61,
    [32] = 62,
    [33] = 63,
    [34] = 64,
    [35] = 65,
    [36] = 66,
    [37] = 67,
    [38] = 68,
    [39] = 69,
    [7] = 7,
    [40] = 70,
    [8] = 8,
    [41] = 81,
    [42] = 82,
    [43] = 83,
    [44] = 84,
    [45] = 85,
    [46] = 86,
    [47] = 87,
    [48] = 88,
    [49] = 89,
    [9] = 9,
    [50] = 90,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in guild_cross_war_point")
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
function guild_cross_war_point.length()
    return #guild_cross_war_point._data
end

-- 
function guild_cross_war_point.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function guild_cross_war_point.isVersionValid(v)
    if guild_cross_war_point.version then
        if v then
            return guild_cross_war_point.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function guild_cross_war_point.indexOf(index)
    if index == nil or not guild_cross_war_point._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/guild_cross_war_point.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/guild_cross_war_point.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/guild_cross_war_point.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "guild_cross_war_point" )
                _isDataExist = guild_cross_war_point.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "guild_cross_war_point" )
                _isBaseExist = guild_cross_war_point.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "guild_cross_war_point" )
                _isExist = guild_cross_war_point.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "guild_cross_war_point" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "guild_cross_war_point" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = guild_cross_war_point._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "guild_cross_war_point" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function guild_cross_war_point.get(id)
    
    return guild_cross_war_point.indexOf(__index_id[id])
        
end

--
function guild_cross_war_point.set(id, key, value)
    local record = guild_cross_war_point.get(id)
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
function guild_cross_war_point.index()
    return __index_id
end

return guild_cross_war_point