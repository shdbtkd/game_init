# 랜덤 아이템 생성
    execute as @e[tag=item-random,scores={item-random=..0}] as @e[tag=item-selecter,tag=!load,tag=!end,limit=1,sort=random] run tag @s add load
    # 아이템 번호
    execute as @e[tag=item-selecter,tag=load,tag=!end,limit=1,sort=random] store result score item-num item-random run data get entity @s Pos[2]
    execute as @e[tag=item-selecter,tag=load,tag=!end,limit=1,sort=random] run tag @s add end
    execute as @e[tag=item-random,limit=1,sort=random,scores={item-random=..0}] store result score @s item-random run scoreboard players get item-num item-random

# 아이템 소환
# 아이템에 추가되어야 하는 태그 item, delay
# 아이템에 추가되어야 하는 커스텀 태그 item:1b, showname:1b, basicitem:1b, 아이템_이름:1b
# 화살
execute as @e[tag=item-random,scores={item-random=1}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__1:1b}}}
execute as @e[tag=item-random,scores={item-random=2}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__2:1b}}}
execute as @e[tag=item-random,scores={item-random=3}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__3:1b}}}
execute as @e[tag=item-random,scores={item-random=4}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__4:1b}}}
execute as @e[tag=item-random,scores={item-random=5}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__5:1b}}}
execute as @e[tag=item-random,scores={item-random=6}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__6:1b}}}
# 음식
execute as @e[tag=item-random,scores={item-random=7}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"빵","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,bread:1b}}}
execute as @e[tag=item-random,scores={item-random=8}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:apple",Count:1b,tag:{display:{Name:'{"text":"사과","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,apple:1b}}}
execute as @e[tag=item-random,scores={item-random=9}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"호박파이","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,pumpkin_pie:1b}}}
execute as @e[tag=item-random,scores={item-random=10}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:cake",Count:1b,tag:{display:{Name:'{"text":"케이크","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,cake:1b}}}
# 부싯돌
execute as @e[tag=item-random,scores={item-random=11}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:flint",Count:1b,tag:{display:{Name:'{"text":"부싯돌","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,flint:1b}}}
# 앤더의 눈
execute as @e[tag=item-random,scores={item-random=12}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:ender_eye",Count:1b,tag:{display:{Name:'{"text":"엔더의 눈","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,ender_eye:1b}}}
# 약탈
execute as @e[tag=item-random,scores={item-random=13}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:looting",lvl:1s}],display:{Name:'{"text":"약탈","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,looting__1:1b}}}
# 벽돌
execute as @e[tag=item-random,scores={item-random=14}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:brick",Count:1b,tag:{display:{Name:'{"text":"벽돌","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,brick:1b}}}
# 네더 벽돌
execute as @e[tag=item-random,scores={item-random=15}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"네더 벽돌","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,nether_brick:1b}}}
# 양동이
execute as @e[tag=item-random,scores={item-random=16}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:bucket",Count:1b,tag:{display:{Name:'{"text":"양동이","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,bucket:1b}}}
# 깃털
execute as @e[tag=item-random,scores={item-random=17}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"깃털","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,feather:1b}}}
# 래드스톤
execute as @e[tag=item-random,scores={item-random=18}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'{"text":"레드스톤","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,redstone:1b}}}
# 뼈다귀
execute as @e[tag=item-random,scores={item-random=19}] at @s run summon item ~ ~1 ~ {Tags:["item","delay"],Item:{id:"minecraft:bone",Count:1b,tag:{display:{Name:'{"text":"뼈다귀","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,bone:1b}}}


execute as @e[tag=item-random,scores={item-random=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16730879],FadeColors:[I;16760333]}]}}}}

execute as @e[tag=item-random,scores={item-random=1..}] at @s run setblock ~ ~ ~ minecraft:gold_block

execute as @e[tag=item-random,scores={item-random=1..}] at @s run setblock ~1 ~ ~ minecraft:smooth_stone_slab
execute as @e[tag=item-random,scores={item-random=1..}] at @s run setblock ~ ~ ~1 minecraft:smooth_stone_slab
execute as @e[tag=item-random,scores={item-random=1..}] at @s run setblock ~-1 ~ ~ minecraft:smooth_stone_slab
execute as @e[tag=item-random,scores={item-random=1..}] at @s run setblock ~ ~ ~-1 minecraft:smooth_stone_slab
# 죽이기
execute as @e[tag=item-random,scores={item-random=1..}] run kill @s

execute as @e[tag=item-random,scores={item-random=..0},limit=1] at @s run function comm:game-start/class/summon-item