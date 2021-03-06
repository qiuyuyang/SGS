--explore

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --章节-int 
  name = 2,    --章节名称-string 
  city_x = 3,    --建筑x坐标-int 
  map = 4,    --地图-int 
  fly = 5,    --飘特效-string 
  city_y = 6,    --建筑y坐标-int 
  chapter_id = 7,    --解锁副本id-int 
  ago_chapter = 8,    --前置游历章节id-int 
  city = 9,    --城池建筑-int 
  size = 10,    --格子数量-int 
  roll_type = 11,    --roll点消耗类型-int 
  roll_resource = 12,    --roll点消耗资源-int 
  roll_size = 13,    --roll点消耗数量-int 
  roll_min = 14,    --roll点小区间-int 
  roll_max = 15,    --roll点大区间-int 
  first1_type = 16,    --首通奖励1类型-int 
  first1_resource = 17,    --首通奖励1资源-int 
  first1_size = 18,    --首通奖励1数量-int 
  first2_type = 19,    --首通奖励2类型-int 
  first2_resource = 20,    --首通奖励2资源-int 
  first2_size = 21,    --首通奖励2数量-int 
  first3_type = 22,    --首通奖励3类型-int 
  first3_resource = 23,    --首通奖励3资源-int 
  first3_size = 24,    --首通奖励3数量-int 
  reward1_type = 25,    --普通奖励1类型-int 
  reward1_resource = 26,    --普通奖励1资源-int 
  reward1_size = 27,    --普通奖励1数量-int 
  reward2_type = 28,    --普通奖励2类型-int 
  reward2_resource = 29,    --普通奖励2资源-int 
  reward2_size = 30,    --普通奖励2数量-int 
  reward3_type = 31,    --普通奖励3类型-int 
  reward3_resource = 32,    --普通奖励3资源-int 
  reward3_size = 33,    --普通奖励3数量-int 
  discover1_type = 34,    --奇遇1类型-int 
  discover1_size = 35,    --奇遇1数量-int 
  discover1_definite_size = 36,    --奇遇1必触发数量-int 
  discover1_chance_size = 37,    --奇遇1概率触发数量-int 
  discover1_chance = 38,    --奇遇1概率触发概率-int 
  discover2_type = 39,    --奇遇2类型-int 
  discover2_size = 40,    --奇遇2数量-int 
  discover2_definite_size = 41,    --奇遇2必触发数量-int 
  discover2_chance_size = 42,    --奇遇2概率触发数量-int 
  discover2_chance = 43,    --奇遇2概率触发概率-int 
  discover3_type = 44,    --奇遇3类型-int 
  discover3_size = 45,    --奇遇3数量-int 
  discover3_definite_size = 46,    --奇遇3必触发数量-int 
  discover3_chance_size = 47,    --奇遇3概率触发数量-int 
  discover3_chance = 48,    --奇遇3概率触发概率-int 
  discover4_type = 49,    --奇遇4类型-int 
  discover4_size = 50,    --奇遇4数量-int 
  discover4_definite_size = 51,    --奇遇4必触发数量-int 
  discover4_chance_size = 52,    --奇遇4概率触发数量-int 
  discover4_chance = 53,    --奇遇4概率触发概率-int 
  discover5_type = 54,    --奇遇5类型-int 
  discover5_size = 55,    --奇遇5数量-int 
  discover5_definite_size = 56,    --奇遇5必触发数量-int 
  discover5_chance_size = 57,    --奇遇5概率触发数量-int 
  discover5_chance = 58,    --奇遇5概率触发概率-int 
  discover6_type = 59,    --奇遇6类型-int 
  discover6_size = 60,    --奇遇6数量-int 
  discover6_definite_size = 61,    --奇遇6必触发数量-int 
  discover6_chance_size = 62,    --奇遇6概率触发数量-int 
  discover6_chance = 63,    --奇遇6概率触发概率-int 
  discover7_type = 64,    --奇遇7类型-int 
  discover7_size = 65,    --奇遇7数量-int 
  discover7_definite_size = 66,    --奇遇7必触发数量-int 
  discover7_chance_size = 67,    --奇遇7概率触发数量-int 
  discover7_chance = 68,    --奇遇7概率触发概率-int 
  discover8_type = 69,    --奇遇8类型-int 
  discover8_size = 70,    --奇遇8数量-int 
  discover8_definite_size = 71,    --奇遇8必触发数量-int 
  discover8_chance_size = 72,    --奇遇8概率触发数量-int 
  discover8_chance = 73,    --奇遇8概率触发概率-int 
  discover9_type = 74,    --奇遇9类型-int 
  discover9_size = 75,    --奇遇9数量-int 
  discover9_definite_size = 76,    --奇遇9必触发数量-int 
  discover9_chance_size = 77,    --奇遇9概率触发数量-int 
  discover9_chance = 78,    --奇遇9概率触发概率-int 
  discover10_type = 79,    --奇遇10类型-int 
  discover10_size = 80,    --奇遇10数量-int 
  discover10_definite_size = 81,    --奇遇10必触发数量-int 
  discover10_chance_size = 82,    --奇遇10概率触发数量-int 
  discover10_chance = 83,    --奇遇10概率触发概率-int 
  produce_type = 84,    --关卡产出类型-int 
  produce_id = 85,    --关卡产出id-int 

}

-- key type
local __key_type = {
  id = "int",    --章节-1 
  name = "string",    --章节名称-2 
  city_x = "int",    --建筑x坐标-3 
  map = "int",    --地图-4 
  fly = "string",    --飘特效-5 
  city_y = "int",    --建筑y坐标-6 
  chapter_id = "int",    --解锁副本id-7 
  ago_chapter = "int",    --前置游历章节id-8 
  city = "int",    --城池建筑-9 
  size = "int",    --格子数量-10 
  roll_type = "int",    --roll点消耗类型-11 
  roll_resource = "int",    --roll点消耗资源-12 
  roll_size = "int",    --roll点消耗数量-13 
  roll_min = "int",    --roll点小区间-14 
  roll_max = "int",    --roll点大区间-15 
  first1_type = "int",    --首通奖励1类型-16 
  first1_resource = "int",    --首通奖励1资源-17 
  first1_size = "int",    --首通奖励1数量-18 
  first2_type = "int",    --首通奖励2类型-19 
  first2_resource = "int",    --首通奖励2资源-20 
  first2_size = "int",    --首通奖励2数量-21 
  first3_type = "int",    --首通奖励3类型-22 
  first3_resource = "int",    --首通奖励3资源-23 
  first3_size = "int",    --首通奖励3数量-24 
  reward1_type = "int",    --普通奖励1类型-25 
  reward1_resource = "int",    --普通奖励1资源-26 
  reward1_size = "int",    --普通奖励1数量-27 
  reward2_type = "int",    --普通奖励2类型-28 
  reward2_resource = "int",    --普通奖励2资源-29 
  reward2_size = "int",    --普通奖励2数量-30 
  reward3_type = "int",    --普通奖励3类型-31 
  reward3_resource = "int",    --普通奖励3资源-32 
  reward3_size = "int",    --普通奖励3数量-33 
  discover1_type = "int",    --奇遇1类型-34 
  discover1_size = "int",    --奇遇1数量-35 
  discover1_definite_size = "int",    --奇遇1必触发数量-36 
  discover1_chance_size = "int",    --奇遇1概率触发数量-37 
  discover1_chance = "int",    --奇遇1概率触发概率-38 
  discover2_type = "int",    --奇遇2类型-39 
  discover2_size = "int",    --奇遇2数量-40 
  discover2_definite_size = "int",    --奇遇2必触发数量-41 
  discover2_chance_size = "int",    --奇遇2概率触发数量-42 
  discover2_chance = "int",    --奇遇2概率触发概率-43 
  discover3_type = "int",    --奇遇3类型-44 
  discover3_size = "int",    --奇遇3数量-45 
  discover3_definite_size = "int",    --奇遇3必触发数量-46 
  discover3_chance_size = "int",    --奇遇3概率触发数量-47 
  discover3_chance = "int",    --奇遇3概率触发概率-48 
  discover4_type = "int",    --奇遇4类型-49 
  discover4_size = "int",    --奇遇4数量-50 
  discover4_definite_size = "int",    --奇遇4必触发数量-51 
  discover4_chance_size = "int",    --奇遇4概率触发数量-52 
  discover4_chance = "int",    --奇遇4概率触发概率-53 
  discover5_type = "int",    --奇遇5类型-54 
  discover5_size = "int",    --奇遇5数量-55 
  discover5_definite_size = "int",    --奇遇5必触发数量-56 
  discover5_chance_size = "int",    --奇遇5概率触发数量-57 
  discover5_chance = "int",    --奇遇5概率触发概率-58 
  discover6_type = "int",    --奇遇6类型-59 
  discover6_size = "int",    --奇遇6数量-60 
  discover6_definite_size = "int",    --奇遇6必触发数量-61 
  discover6_chance_size = "int",    --奇遇6概率触发数量-62 
  discover6_chance = "int",    --奇遇6概率触发概率-63 
  discover7_type = "int",    --奇遇7类型-64 
  discover7_size = "int",    --奇遇7数量-65 
  discover7_definite_size = "int",    --奇遇7必触发数量-66 
  discover7_chance_size = "int",    --奇遇7概率触发数量-67 
  discover7_chance = "int",    --奇遇7概率触发概率-68 
  discover8_type = "int",    --奇遇8类型-69 
  discover8_size = "int",    --奇遇8数量-70 
  discover8_definite_size = "int",    --奇遇8必触发数量-71 
  discover8_chance_size = "int",    --奇遇8概率触发数量-72 
  discover8_chance = "int",    --奇遇8概率触发概率-73 
  discover9_type = "int",    --奇遇9类型-74 
  discover9_size = "int",    --奇遇9数量-75 
  discover9_definite_size = "int",    --奇遇9必触发数量-76 
  discover9_chance_size = "int",    --奇遇9概率触发数量-77 
  discover9_chance = "int",    --奇遇9概率触发概率-78 
  discover10_type = "int",    --奇遇10类型-79 
  discover10_size = "int",    --奇遇10数量-80 
  discover10_definite_size = "int",    --奇遇10必触发数量-81 
  discover10_chance_size = "int",    --奇遇10概率触发数量-82 
  discover10_chance = "int",    --奇遇10概率触发概率-83 
  produce_type = "int",    --关卡产出类型-84 
  produce_id = "int",    --关卡产出id-85 

}


-- data
local explore = {
    version =  1,
    _data = {
        [1] = {1,"桃园",295,1,"youli_huaban",232,1,0,1,30,5,4,2,1,6,5,1,100,5,17,300,3,101,1,5,17,150,6,72,2,0,0,0,1,2,0,2,300,5,1,0,1,200,6,0,0,0,0,4,0,0,0,0,7,0,0,0,0,11,0,0,0,0,12,0,0,0,0,13,0,0,0,0,14,0,0,0,0,15,0,0,0,0,3,101,},
        [2] = {2,"徐州",456,2,"",13,1,1,2,45,5,4,2,1,6,5,1,100,5,17,400,3,111,1,5,17,250,6,72,4,0,0,0,1,3,0,3,310,5,1,0,1,300,6,0,0,0,0,4,0,0,0,0,7,0,0,0,0,11,1,0,1,250,12,0,0,0,0,13,0,0,0,0,14,0,0,0,0,15,0,0,0,0,3,111,},
        [3] = {3,"虎牢关",690,3,"youli_xuehua",373,1,2,3,60,5,4,2,1,6,5,1,100,5,17,500,3,102,1,5,17,320,6,72,5,0,0,0,1,3,0,3,290,5,1,0,1,300,6,2,0,2,300,4,0,0,0,0,7,0,0,0,0,11,1,0,1,250,12,0,0,0,0,13,0,0,0,0,14,0,0,0,0,15,0,0,0,0,3,102,},
        [4] = {4,"五丈原",932,4,"youli_yezi",140,1,3,4,75,5,4,2,1,6,5,1,200,5,17,600,3,112,1,5,17,400,6,72,6,0,0,0,1,3,0,3,320,5,1,0,1,330,6,2,0,2,330,4,1,0,1,320,7,0,0,0,0,11,1,0,1,250,12,0,0,0,0,13,0,0,0,0,14,0,0,0,0,15,0,0,0,0,3,112,},
        [5] = {5,"玉门关",1158,5,"",315,6,4,5,90,5,4,2,1,6,5,1,200,5,17,800,3,101,1,5,17,520,6,72,8,0,0,0,1,3,0,3,330,5,1,0,1,350,6,2,0,2,350,4,1,0,1,350,7,1,0,1,350,11,1,0,1,250,12,0,0,0,0,13,0,0,0,0,14,0,0,0,0,15,0,0,0,0,3,101,},
        [6] = {6,"鄱阳湖",1355,6,"youli_huaban",10,10,5,6,105,5,4,2,1,6,5,1,300,5,17,1000,7,3201,1,5,17,600,6,72,10,0,0,0,1,4,0,4,300,5,2,0,2,300,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,1,0,1,380,12,2,0,2,260,13,1,0,1,110,14,0,0,0,0,15,0,0,0,0,3,201,},
        [7] = {7,"卧龙岗",1614,7,"youli_yezi",344,14,6,7,105,5,4,2,1,6,5,1,300,5,17,1000,7,3211,1,5,17,600,6,72,10,0,0,0,1,4,0,4,300,5,2,0,2,300,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,1,0,1,380,12,2,0,2,260,13,1,0,1,110,14,0,0,0,0,15,0,0,0,0,3,211,},
        [8] = {8,"赤壁",1966,6,"",97,18,7,8,105,5,4,2,1,6,5,1,400,5,17,1000,7,3202,1,5,17,600,6,72,10,0,0,0,1,4,0,4,300,5,2,0,2,300,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,1,0,1,380,12,2,0,2,260,13,1,0,1,110,14,0,0,0,0,15,0,0,0,0,3,202,},
        [9] = {9,"乌巢",2566,6,"youli_huaban",232,22,8,1,105,5,4,2,1,6,5,1,400,5,17,1000,7,3212,1,5,17,600,6,72,10,0,0,0,1,4,0,4,300,5,2,0,2,300,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,1,0,1,380,12,2,0,2,260,13,1,0,1,110,14,0,0,0,0,15,0,0,0,0,3,212,},
        [10] = {10,"许昌",2727,7,"youli_yezi",13,26,9,2,105,5,4,2,1,6,5,1,500,5,17,1000,7,3301,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,301,},
        [11] = {11,"常山",2961,8,"youli_xuehua",373,30,10,3,105,5,4,2,1,6,5,1,500,5,17,1000,7,3311,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,311,},
        [12] = {12,"新野",3203,7,"",140,34,11,4,105,5,4,2,1,6,5,1,500,5,17,1000,7,3302,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,302,},
        [13] = {13,"西凉",3429,8,"",315,38,12,5,105,5,4,2,1,6,5,1,500,5,17,1000,7,3312,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,312,},
        [14] = {14,"下邳",3626,6,"youli_huaban",10,42,13,6,105,5,4,2,1,6,5,1,500,5,17,1000,7,3303,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,303,},
        [15] = {15,"宛城",3885,7,"youli_yezi",344,46,14,7,105,5,4,2,1,6,5,1,500,5,17,1000,7,3313,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,313,},
        [16] = {16,"磐河",4237,6,"",97,50,15,8,105,5,4,2,1,6,5,1,500,5,17,1000,7,3304,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,304,},
        [17] = {17,"陈留",4837,6,"youli_huaban",232,54,16,1,105,5,4,2,1,6,5,1,500,5,17,1000,7,3314,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,314,},
        [18] = {18,"洛阳",4998,7,"",13,58,17,2,105,5,4,2,1,6,5,1,500,5,17,1000,7,3301,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,301,},
        [19] = {19,"祁山",5232,8,"youli_xuehua",373,62,18,3,105,5,4,2,1,6,5,1,500,5,17,1000,7,3311,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,311,},
        [20] = {20,"长坂坡",5474,7,"youli_yezi",140,66,19,4,105,5,4,2,1,6,5,1,500,5,17,1000,7,3302,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,302,},
        [21] = {21,"幽州",5700,8,"youli_xuehua",315,70,20,5,105,5,4,2,1,6,5,1,500,5,17,1000,7,3312,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,312,},
        [22] = {22,"街亭",5897,6,"youli_huaban",10,74,21,6,105,5,4,2,1,6,5,1,500,5,17,1000,7,3303,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,303,},
        [23] = {23,"白帝",6156,7,"",344,78,22,7,105,5,4,2,1,6,5,1,500,5,17,1000,7,3313,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,313,},
        [24] = {24,"官渡",6508,6,"youli_huaban",97,82,23,8,105,5,4,2,1,6,5,1,500,5,17,1000,7,3304,1,5,17,600,6,72,10,6,10,50,1,4,0,4,300,5,2,0,2,400,6,2,0,2,400,4,1,0,1,400,7,1,0,1,400,11,2,0,2,250,12,2,0,2,350,13,1,0,1,140,14,2,0,2,320,15,1,0,1,70,3,304,},
    }
}

-- index
local __index_id = {
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
    [23] = 23,
    [24] = 24,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- index mainkey map
local __main_key_map = {
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
    [23] = 23,
    [24] = 24,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in explore")
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
function explore.length()
    return #explore._data
end

-- 
function explore.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function explore.isVersionValid(v)
    if explore.version then
        if v then
            return explore.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function explore.indexOf(index)
    if index == nil or not explore._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/explore.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/explore.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/explore.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "explore" )
                _isDataExist = explore.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "explore" )
                _isBaseExist = explore.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "explore" )
                _isExist = explore.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "explore" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "explore" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = explore._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "explore" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function explore.get(id)
    
    return explore.indexOf(__index_id[id])
        
end

--
function explore.set(id, key, value)
    local record = explore.get(id)
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
function explore.index()
    return __index_id
end

return explore