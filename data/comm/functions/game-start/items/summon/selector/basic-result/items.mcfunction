
kill @s

summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16730879],FadeColors:[I;16760333]}]}}}}
setblock ~ ~ ~ minecraft:gold_block
setblock ~1 ~ ~ minecraft:smooth_stone_slab
setblock ~ ~ ~1 minecraft:smooth_stone_slab
setblock ~-1 ~ ~ minecraft:smooth_stone_slab
setblock ~ ~ ~-1 minecraft:smooth_stone_slab

function comm:game-start/items/summon/selector/result


# 아이템 소환
# 아이템에 추가되어야 하는 태그 item, delay
# 아이템에 추가되어야 하는 커스텀 태그 item:1b, showname:1b, basicitem:1b, 아이템_이름:1b
# 화살
# execute if score item-num item-random matches 1 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__1:1b}}}
# execute if score item-num item-random matches 2 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__2:1b}}}
# execute if score item-num item-random matches 3 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__3:1b}}}
# execute if score item-num item-random matches 4 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__4:1b}}}
# execute if score item-num item-random matches 5 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__5:1b}}}
# execute if score item-num item-random matches 6 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__6:1b}}}
# 음식
# execute if score item-num item-random matches 7 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"빵","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,bread:1b}}}
# execute if score item-num item-random matches 8 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:apple",Count:1b,tag:{display:{Name:'{"text":"사과","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,apple:1b}}}
# execute if score item-num item-random matches 9 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"호박파이","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,pumpkin_pie:1b}}}
# execute if score item-num item-random matches 10 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:cake",Count:1b,tag:{display:{Name:'{"text":"케이크","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,cake:1b}}}
# 부싯돌
# execute if score item-num item-random matches 11 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:flint",Count:1b,tag:{display:{Name:'{"text":"부싯돌","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,flint:1b}}}
# 앤더의 눈
# execute if score item-num item-random matches 12 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:ender_eye",Count:1b,tag:{display:{Name:'{"text":"엔더의 눈","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,ender_eye:1b}}}
# 약탈
# execute if score item-num item-random matches 13 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:looting",lvl:1s}],display:{Name:'{"text":"약탈","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,looting__1:1b}}}
# 벽돌
# execute if score item-num item-random matches 14 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:brick",Count:1b,tag:{display:{Name:'{"text":"벽돌","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,brick:1b}}}
# 네더 벽돌
# execute if score item-num item-random matches 15 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"네더 벽돌","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,nether_brick:1b}}}
# 양동이
# execute if score item-num item-random matches 16 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:bucket",Count:1b,tag:{display:{Name:'{"text":"양동이","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,bucket:1b}}}
# 깃털
# execute if score item-num item-random matches 17 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"깃털","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,feather:1b}}}
# 래드스톤
# execute if score item-num item-random matches 18 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'{"text":"레드스톤","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,redstone:1b}}}
# 뼈다귀
# execute if score item-num item-random matches 19 run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:bone",Count:1b,tag:{display:{Name:'{"text":"뼈다귀","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,bone:1b}}}
