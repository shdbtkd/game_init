execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random



# 소환
# 1stage
execute as @e[tag=red-random,scores={random=1}] at @s run summon minecraft:spider ~ ~ ~ {Team:"red"}
execute as @e[tag=red-random,scores={random=2}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red"}
execute as @e[tag=red-random,scores={random=3}] at @s run summon minecraft:skeleton ~ ~ ~ {Team:"red",Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}
execute as @e[tag=red-random,scores={random=4}] at @s run summon minecraft:creeper ~ ~ ~ {Team:"red"}
# upgrade
execute as @e[tag=red-random,scores={random=5}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["upgrade"]}
execute as @e[tag=red-random,scores={random=6}] at @s run summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["upgrade"],Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}
# spawner
execute as @e[tag=red-random,scores={random=7}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["spawner"],ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],Attributes:[{Name:generic.followRange,Base:-9999}]}
execute as @e[tag=red-random,scores={random=8}] at @s if entity @a[scores={stage=1}] run summon minecraft:bee ~ ~ ~ {Team:"red",Anger:2000000}
# 2stage
execute as @e[tag=red-random,scores={random=8}] at @s if entity @a[scores={stage=2}] run summon minecraft:phantom ~ ~ ~ {Team:"red"}
execute as @e[tag=red-random,scores={random=9}] at @s run summon minecraft:phantom ~ ~ ~ {Team:"red"}
execute as @e[tag=red-random,scores={random=10}] at @s run summon minecraft:silverfish ~ ~ ~ {Health:5f,Team:"red",Attributes:[{Name:generic.maxHealth,Base:5}]}
execute as @e[tag=red-random,scores={random=11}] at @s run summon minecraft:slime ~ ~ ~
execute as @e[tag=red-random,scores={random=12}] at @s run summon minecraft:cave_spider ~ ~ ~ {Team:"red"}
# baby
execute as @e[tag=red-random,scores={random=13}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",IsBaby:1b}
# slime
execute as @e[tag=red-random,scores={random=14}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["slime"],Passengers:[{id:"minecraft:item",Tags:["select","delay","slime-storage"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{storage:[{}]}}}],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}
# execute as @e[tag=red-random,scores={random=15}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["dragon"],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @e[tag=red-random,scores={random=16}] at @s run summon minecraft:spider ~ ~ ~ {Team:"red",Passengers:[{id:"minecraft:skeleton",Team:"red",Health:10f,Attributes:[{Name:generic.maxHealth,Base:10}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}
# spawner
execute as @e[tag=red-random,scores={random=17}] at @s run summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["spawner"],Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}
# spawner upgrade
execute as @e[tag=red-random,scores={random=18}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["spawner","upgrade"],ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],Attributes:[{Name:generic.followRange,Base:-9999}]}
execute as @e[tag=red-random,scores={random=19}] at @s run summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["spawner","upgrade"],Health:10f,ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.followRange,Base:-9999}]}
# slime upgrade
execute as @e[tag=red-random,scores={random=20}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["slime","upgrade"],Passengers:[{id:"minecraft:item",Tags:["select","delay","slime-storage"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{storage:[{}]}}}],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}
# execute as @e[tag=red-random,scores={random=21}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["dragon","upgrade"],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}


kill @s