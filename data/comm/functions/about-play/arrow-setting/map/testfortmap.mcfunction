
# top
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~ ~-1 ~48 minecraft:gray_concrete run summon armor_stand ~ ~ ~48 {Tags:["testmap","testtop"]}

# top-left
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~48 ~-1 ~48 minecraft:gray_concrete run summon armor_stand ~48 ~ ~48 {Tags:["testmap","testtopleft"]}
# top-left-left
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~96 ~-1 ~48 minecraft:gray_concrete run summon armor_stand ~96 ~ ~48 {Tags:["testmap","testtopleftleft"]}

# top-right
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~-48 ~-1 ~48 minecraft:gray_concrete run summon armor_stand ~-48 ~ ~48 {Tags:["testmap","testtopright"]}
# top-right-right
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~-96 ~-1 ~48 minecraft:gray_concrete run summon armor_stand ~-96 ~ ~48 {Tags:["testmap","testtoprightright"]}



# bottom
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~ ~-1 ~-48 minecraft:gray_concrete run summon armor_stand ~ ~ ~-48 {Tags:["testmap","testbottom"]}

# bottom-left
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~48 ~-1 ~-48 minecraft:gray_concrete run summon armor_stand ~48 ~ ~-48 {Tags:["testmap","testbottomleft"]}
# bottom-left-left
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~96 ~-1 ~-48 minecraft:gray_concrete run summon armor_stand ~96 ~ ~-48 {Tags:["testmap","testbottomleftleft"]}

# bottom-right
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~-48 ~-1 ~-48 minecraft:gray_concrete run summon armor_stand ~-48 ~ ~-48 {Tags:["testmap","testbottomright"]}
# bottom-right-right
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~-96 ~-1 ~-48 minecraft:gray_concrete run summon armor_stand ~-96 ~ ~-48 {Tags:["testmap","testbottomrightright"]}



# left
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~48 ~-1 ~ minecraft:gray_concrete run summon armor_stand ~48 ~ ~ {Tags:["testmap","testleft"]}
# left-left
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~96 ~-1 ~ minecraft:gray_concrete run summon armor_stand ~96 ~ ~ {Tags:["testmap","testleftleft"]}



# right
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~-48 ~-1 ~ minecraft:gray_concrete run summon armor_stand ~-48 ~ ~ {Tags:["testmap","testright"]}

# right-right
execute at @e[tag=map-all,limit=1,sort=nearest] if block ~-96 ~-1 ~ minecraft:gray_concrete run summon armor_stand ~-96 ~ ~ {Tags:["testmap","testrightright"]}

execute as @s at @s run function comm:about-play/arrow-setting/map/makemap