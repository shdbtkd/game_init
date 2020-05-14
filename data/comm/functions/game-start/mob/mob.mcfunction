execute as @e[team=red,scores={HP=1..},type=!minecraft:phantom,tag=!none-show] if entity @s[scores={red-size=..0}] run tp ~ 0 ~

team join red @e[type=minecraft:vex]
team join red @e[type=minecraft:slime,tag=!none-show]
team join red @e[type=minecraft:magma_cube]

execute as @e[team=!] store result score @s hurt run data get entity @s HurtTime
execute anchored eyes as @e[tag=!none-show] at @s if score @s hurt matches 7.. run particle minecraft:block redstone_block ^ ^ ^ 0.1 0 0.1 01 5
execute anchored feet as @e[tag=!none-show] at @s if score @s hurt matches 7.. run particle minecraft:block redstone_block ^ ^ ^ 0.1 0 0.1 01 5

# execute as @e[team=red,tag=!A,tag=!U,tag=!boss,tag=none-show] at @s run particle minecraft:squid_ink ~ ~0.2 ~ 0.2 0.7 0.2 0.1 100

execute as @e[team=red,tag=!A] if entity @s[type=!minecraft:zombie,type=!#minecraft:skeletons,type=!minecraft:drowned,type=!minecraft:zombie_villager,type=!minecraft:zombified_piglin,type=!minecraft:husk,type=!minecraft:phantom] run tag @s add A

execute as @e[team=red,tag=!A] run tag @s[tag=!U] add U

execute as @e[type=bee] if data entity @s {HasStung:1b} run data modify entity @s HasStung set value 0b
execute as @e[type=bee] if data entity @s {Anger: 0} run data modify entity @s Anger set value 2000000

execute as @e[team=red,tag=!boss,tag=!none-show] store result score @s HP run data get entity @s Health
execute as @e[team=red] if data entity @s Size store result score @s red-size run data get entity @s Size
execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=!minecraft:phantom] if entity @s[scores={red-size=0..1}] run tag @s add not-big
execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=!minecraft:phantom] if entity @s[scores={red-size=2..3}] run tag @s add common
execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=!minecraft:phantom] if entity @s[scores={red-size=4}] run tag @s add not-small
execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=!minecraft:phantom] if entity @s[scores={red-size=5..}] run tag @s add bigtype
execute as @e[team=red,scores={HP=1..},tag=!not-small,tag=!not-big,tag=!common,type=minecraft:phantom] if entity @s[scores={red-size=0}] run tag @s add not-big
execute as @e[team=red,scores={HP=1..},type=!minecraft:silverfish,type=!minecraft:spider,type=!minecraft:cave_spider,type=!minecraft:bee,type=!minecraft:endermite,type=!minecraft:phantom,type=!minecraft:vex,tag=!not-small] run tag @s add not-small
execute as @e[team=red,scores={HP=1..},type=!minecraft:elder_guardian,type=!minecraft:ghast,type=!minecraft:iron_golem,type=!minecraft:polar_bear,type=!minecraft:ravager,tag=!not-big] run tag @s add not-big
execute as @e[team=red,scores={HP=1..},tag=not-small,tag=not-big,tag=!common] run tag @s add common
execute as @e[team=red,scores={HP=1..},tag=bigtype,tag=!common] at @s run function comm:game-start/mob/showhealth/bigtype
execute as @e[team=red,scores={HP=1..},tag=not-small,tag=!common] at @s run function comm:game-start/mob/showhealth/notsmall
execute as @e[team=red,scores={HP=1..},tag=common] at @s run function comm:game-start/mob/showhealth/common
execute as @e[team=red,scores={HP=1..},tag=not-big,tag=!common] at @s run function comm:game-start/mob/showhealth/notbig





### loot ###
	execute as @a[scores={kill=1..}] at @s if predicate pred:10 run loot spawn ~ ~1 ~ loot playerheadtricks:emerald
	execute as @a[scores={kill=1..}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}

	### mend ###
		# execute at @e[type=minecraft:experience_orb] as @a[tag=mend,distance=..0] if score @s[gamemode=adventure] HP < @s max-hp run effect give @s minecraft:regeneration 1 2
		# execute as @a[tag=mend] if score @s[gamemode=adventure] HP < @s max-hp at @s as @e[type=minecraft:experience_orb,distance=..0] run kill @s
	############

	execute as @a[scores={kill=1..}] at @s run scoreboard players remove @s kill 1
############

### 몹 생성 ###

	execute as @e[tag=red-random] run scoreboard players add @s random 0

	execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] run function comm:game-start/mob/getnumred



	# execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
	# execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random

	# execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
	# execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random

	# execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
	# execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random

	# execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
	# execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random

	# execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
	# execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random

	# execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
	# execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random

	# execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
	# execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random

	# 소환
	# 1stage
	execute as @e[tag=red-random,scores={random=1}] at @s run summon minecraft:spider ~ ~ ~ {Team:"red"}
	execute as @e[tag=red-random,scores={random=2}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red"}
	execute as @e[tag=red-random,scores={random=3}] at @s run summon minecraft:skeleton ~ ~ ~ {Team:"red",Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}
	execute as @e[tag=red-random,scores={random=4}] at @s run summon minecraft:creeper ~ ~ ~ {Team:"red"}
	execute as @e[tag=red-random,scores={random=5}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["upgrade"]}
	execute as @e[tag=red-random,scores={random=6}] at @s run summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["upgrade"],Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}
	execute as @e[tag=red-random,scores={random=7}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["spawner"],ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],Attributes:[{Name:generic.followRange,Base:-9999}]}
	execute as @e[tag=red-random,scores={random=8}] at @s if entity @a[scores={stage=1}] run summon minecraft:bee ~ ~ ~ {Team:"red",Anger:2000000}
	# 2stage
	execute as @e[tag=red-random,scores={random=8}] at @s if entity @a[scores={stage=2}] run summon minecraft:phantom ~ ~ ~ {Team:"red"}
	execute as @e[tag=red-random,scores={random=9}] at @s run summon minecraft:phantom ~ ~ ~ {Team:"red"}
	execute as @e[tag=red-random,scores={random=10}] at @s run summon minecraft:silverfish ~ ~ ~ {Health:5f,Team:"red",Attributes:[{Name:generic.maxHealth,Base:5}]}
	execute as @e[tag=red-random,scores={random=11}] at @s run summon minecraft:slime ~ ~ ~
	execute as @e[tag=red-random,scores={random=12}] at @s run summon minecraft:cave_spider ~ ~ ~ {Team:"red"}
	execute as @e[tag=red-random,scores={random=13}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",IsBaby:1b}
	execute as @e[tag=red-random,scores={random=14}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["slime"],Passengers:[{id:"minecraft:item",Tags:["select","delay","slime-storage"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{storage:[{}]}}}],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}
	execute as @e[tag=red-random,scores={random=15}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["dragon"],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
	execute as @e[tag=red-random,scores={random=16}] at @s run summon minecraft:spider ~ ~ ~ {Team:"red",Passengers:[{id:"minecraft:skeleton",Team:"red",Health:10f,Attributes:[{Name:generic.maxHealth,Base:10}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}
	execute as @e[tag=red-random,scores={random=17}] at @s run summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["spawner"],Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}
	execute as @e[tag=red-random,scores={random=18}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["spawner","upgrade"],ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],Attributes:[{Name:generic.followRange,Base:-9999}]}
	execute as @e[tag=red-random,scores={random=19}] at @s run summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["spawner","upgrade"],Health:10f,ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.followRange,Base:-9999}]}
	execute as @e[tag=red-random,scores={random=20}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["slime","upgrade"],Passengers:[{id:"minecraft:item",Tags:["select","delay","slime-storage"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{storage:[{}]}}}],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}
	execute as @e[tag=red-random,scores={random=21}] at @s run summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["dragon","upgrade"],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}

	execute as @e[tag=red-random,scores={random=1..}] run kill @s

	# 업그래이드 좀비

	execute as @e[tag=upgrade,tag=!end-upgrade] run function comm:game-start/mob/upgrade/zom-ske

	# 스포너

	execute as @e[tag=spawner] at @s run function comm:game-start/mob/upgrade/spawner/basic

	# 슬라임

	execute as @e[tag=slime] at @s run function comm:game-start/mob/upgrade/slime/basic
	execute as @e[tag=slime-storage] at @s unless entity @e[team=red,tag=slime] run function comm:game-start/mob/upgrade/slime/now-spawn
	execute as @e[tag=slime-storage] at @s unless score @e[team=red,tag=slime,limit=1,sort=nearest] slime_id-S = @s slime_id-I run function comm:game-start/mob/upgrade/slime/now-spawn

	# summon minecraft:armor_stand ~ 71 ~ {Tags:["red-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
	# summon minecraft:spider ~ 71 ~ {Team:"red"}
	# summon minecraft:zombie ~ 71 ~ {Team:"red"}
	# summon minecraft:skeleton ~ 71 ~ {Team:"red",Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}
	# summon minecraft:skeleton ~ 71 ~ {Team:"red",Tags:["upgrade"],Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}
	# summon minecraft:creeper ~ 71 ~ {Team:"red"}
	# summon minecraft:zombie ~ 71 ~ {Team:"red",Tags:["upgrade"]}

	# summon minecraft:silverfish ~ 71 ~ {Health:5f,Tags:["red"],Attributes:[{Name:generic.maxHealth,Base:5}]}
	# summon minecraft:spider ~ 71 ~ {Team:"red",Passengers:[{id:"minecraft:skeleton",Team:"red",Health:10f,Attributes:[{Name:generic.maxHealth,Base:10}]}]}
	# summon minecraft:cave_spider ~ 71 ~ {Team:"red"}
	# summon slime ~ 71 ~
	# summon minecraft:zombie ~ 71 ~ {Team:"red",IsBaby:1b}
	# summon minecraft:zombie ~ 71 ~ {Team:"red",Tags:["dragon"],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}

	# 쓸만한 소리
	# playsound minecraft:entity.phantom.death master @a ~ ~ ~ 10 0

	# 벌 X
	# 좀벌래
	# 스파이더 조키
	# 동굴 거미
	# 슬라임
	# 슬라임 좀비
	# 아기좀비
	# 치킨 조키
	# 드래곤 머리 쓴 좀비
		# 스킬을 사용할 때 머리에 rotation 값을 저장해놓고 계속 부여

###########


execute as @e[tag=box-random] at @s run function comm:game-start/mob/box/summon
execute as @e[tag=boxhere,tag=locked] at @s run function comm:game-start/mob/box/testlock
execute at @e[tag=boxhere,tag=locked,scores={locked-box=1..}] as @e[type=item,nbt={Item: {id:"minecraft:emerald"}},limit=1,sort=nearest,distance=..1.2] at @s unless entity @e[tag=unlocking-chest] if data block ~ ~-0.1 ~ Lock run function comm:game-start/mob/box/removelock
#execute at @e[tag=unlocking-chest] run function comm:game-start/mob/box/showparticle
execute as @e[tag=boxhere] at @s if block ~ ~-2 ~ minecraft:redstone_lamp[lit=true] run function comm:game-start/mob/box/open


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
