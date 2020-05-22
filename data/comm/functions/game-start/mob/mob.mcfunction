# execute as @e[team=red,scores={HP=1..},type=!minecraft:phantom,tag=!none-show] if entity @s[scores={red-size=..0}] run tp ~ 0 ~

execute as @e[team=red,tag=!boss,tag=!none-show] store result score @s HP run data get entity @s Health
#execute as @e[team=red] if data entity @s Size store result score @s red-size run data get entity @s Size
#execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=!minecraft:phantom] if entity @s[scores={red-size=0..1}] run tag @s add not-big
#execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=!minecraft:phantom] if entity @s[scores={red-size=2..3}] run tag @s add common
#execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=!minecraft:phantom] if entity @s[scores={red-size=4}] run tag @s add not-small
#execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=!minecraft:phantom] if entity @s[scores={red-size=5..}] run tag @s add bigtype
#execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=minecraft:phantom] if entity @s[scores={red-size=0}] run tag @s add not-big
#execute as @e[team=red,scores={HP=1..},type=!minecraft:silverfish,type=!minecraft:spider,type=!minecraft:cave_spider,type=!minecraft:bee,type=!minecraft:endermite,type=!minecraft:phantom,type=!minecraft:vex,tag=!not-small] run tag @s add not-small
#execute as @e[team=red,scores={HP=1..},type=!minecraft:elder_guardian,type=!minecraft:ghast,type=!minecraft:iron_golem,type=!minecraft:polar_bear,type=!minecraft:ravager,tag=!not-big] run tag @s add not-big
#execute as @e[team=red,scores={HP=1..},tag=not-small,tag=not-big,tag=!common] run tag @s add common
#execute as @e[team=red,scores={HP=1..},tag=bigtype,tag=!common] at @s run function comm:game-start/mob/showhealth/bigtype
#execute as @e[team=red,scores={HP=1..},tag=not-small,tag=!common] at @s run function comm:game-start/mob/showhealth/notsmall
#execute as @e[team=red,scores={HP=1..},tag=common] at @s run function comm:game-start/mob/showhealth/common
#execute as @e[team=red,scores={HP=1..},tag=not-big,tag=!common] at @s run function comm:game-start/mob/showhealth/notbig
execute as @e[team=red,scores={HP=0..}] at @s run function comm:game-start/mob/showhealth/show
execute as @a[scores={kill=1..}] at @s run function comm:game-start/mob/loot/generic

execute as @e[tag=red-random] run scoreboard players add @s random 0
execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] run function comm:game-start/mob/getnumred

# 업그래이드 좀비
execute as @e[tag=upgrade,tag=!end-upgrade] run function comm:game-start/mob/upgrade/zom-ske

# 스포너
execute as @e[tag=spawner] at @s run function comm:game-start/mob/upgrade/spawner/basic

# 슬라임
execute as @e[tag=slime] at @s run function comm:game-start/mob/upgrade/slime/basic


# give _Rono minecraft:command_block{display:{Name:'{"text":"---","italic":false}'},BlockEntityTag:{Command: ''}}

# give _Rono minecraft:command_block{display:{Name:'{"text":"random","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:armor_stand ~ 71 ~ {Tags:["red-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"box","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:armor_stand ~ 71 ~ {Tags:["box-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}'}}

#------ 1stage ------#
# give _Rono minecraft:command_block{display:{Name:'{"text":"spider","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:spider ~ 71 ~ {Team:"red"}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"zombie","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:zombie ~ 71 ~ {Team:"red"}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"skeleton","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:skeleton ~ 71 ~ {Team:"red",Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"creeper","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:creeper ~ 71 ~ {Team:"red"}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"bee","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:bee ~ 72 ~ {Team:"red",Anger:2000000}'}}

#------ 2stage ------#
# give _Rono minecraft:command_block{display:{Name:'{"text":"phantom","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:silverfish ~ ~ ~ {Health:5f,Team:"red",Attributes:[{Name:generic.maxHealth,Base:5}]}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"silverfish","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:phantom ~ ~ ~ {Team:"red"}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"slime","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:slime ~ ~ ~'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"cave spider","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:cave_spider ~ ~ ~ {Team:"red"}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"baby zombie","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:zombie ~ ~ ~ {Team:"red",IsBaby:1b}'}}

#------ 업그래이드 ------#
# give _Rono minecraft:command_block{display:{Name:'{"text":"upgrade zombie","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:zombie ~ 71 ~ {Team:"red",Tags:["upgrade"]}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"upgrade skeleton","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:skeleton ~ 71 ~ {Team:"red",Tags:["upgrade"],Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}'}}

#------ 스포너 ------#
# give _Rono minecraft:command_block{display:{Name:'{"text":"spawner zombie","italic":false}'},BlockEntityTag:{Command: 'summon zombie ~ ~1 ~ {Team:"red",Tags:["spawner"],ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],Attributes:[{Name:generic.followRange,Base:-9999}]}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"spawner skeleton","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["spawner"],Health:10f,ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.followRange,Base:-9999}]}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"upgrade spawner zombie","italic":false}'},BlockEntityTag:{Command: 'summon zombie ~ ~1 ~ {Team:"red",Tags:["spawner","upgrade"],ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],Attributes:[{Name:generic.followRange,Base:-9999}]}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"upgrade spawner skeleton","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["spawner","upgrade"],Health:10f,ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.followRange,Base:-9999}]}'}}

#------ 슬라임 ------#
# give _Rono minecraft:command_block{display:{Name:'{"text":"slime zombie","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["slime"],Passengers:[{id:"minecraft:item",Tags:["select","delay","slime-storage"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{storage:[{}]}}}],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"upgrade slime zombie","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["slime","upgrade"],Passengers:[{id:"minecraft:item",Tags:["select","delay","slime-storage"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{storage:[{}]}}}],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}'}}

#------ 드래곤 ------#
# give _Rono minecraft:command_block{display:{Name:'{"text":"dragon zombie","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["dragon"],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}'}}
# give _Rono minecraft:command_block{display:{Name:'{"text":"upgrade dragon zombie","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["dragon","upgrade"],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}'}}

#------ 스파이더 조키 ------#
# give _Rono minecraft:command_block{display:{Name:'{"text":"spider jockey","italic":false}'},BlockEntityTag:{Command: 'summon minecraft:spider ~ ~ ~ {Team:"red",Passengers:[{id:"minecraft:skeleton",Team:"red",Health:10f,Attributes:[{Name:generic.maxHealth,Base:10}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}'}}
