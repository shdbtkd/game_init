execute as @a[scores={stage=1..}] at @s if block ~ ~ ~ minecraft:nether_portal run scoreboard players add boss stage 1
execute as @a[scores={stage=1..}] at @s if block ~ ~ ~ minecraft:nether_portal run tp @s 0.0 53 -1000.0

execute if score boss stage = player stage if score boss map_lod matches ..0 if score boss-type map_lod matches 1 if entity @a[scores={stage=1}] run setblock 16 60 -1040 minecraft:structure_block{name:"1stage-boss1-all",posY:1,mode:"LOAD"}
execute if score boss stage = player stage if score boss map_lod matches ..0 if score boss-type map_lod matches 2 if entity @a[scores={stage=1}] run setblock 16 60 -1040 minecraft:structure_block{name:"1stage-boss2-all",posY:1,mode:"LOAD"}
execute if score boss stage = player stage if score boss map_lod matches ..0 if score boss-type map_lod matches 3 if entity @a[scores={stage=1}] run setblock 16 60 -1040 minecraft:structure_block{name:"1stage-boss3-all",posY:1,mode:"LOAD"}
execute if score boss stage = player stage if score boss map_lod matches ..0 if score boss-type map_lod matches 4 if entity @a[scores={stage=1}] run setblock 16 60 -1040 minecraft:structure_block{name:"1stage-boss4-all",posY:1,mode:"LOAD"}
execute if score boss stage = player stage if score boss map_lod matches ..0 if score boss-type map_lod matches 5 if entity @a[scores={stage=1}] run setblock 16 60 -1040 minecraft:structure_block{name:"1stage-boss5-all",posY:1,mode:"LOAD"}

execute if score boss stage = player stage if score boss map_lod matches ..0 run setblock 16 61 -1040 redstone_block

# execute if score boss stage = player stage if score boss map_lod matches ..0 run setblock 16 60 -1040 redstone_block

execute if score boss stage = player stage if score boss map_lod matches ..0 run scoreboard players set boss map_lod 1


execute if score boss stage = player stage if score boss map_lod matches 1 run setblock 32 62 -1024 redstone_block
execute if score boss stage = player stage if score boss map_lod matches 1 run setblock 16 62 -1024 redstone_block

execute if score boss stage = player stage if score boss map_lod matches 1 run setblock 32 62 -1040 redstone_block
execute if score boss stage = player stage if score boss map_lod matches 1 run setblock 16 62 -1040 redstone_block

execute if score boss stage = player stage if score boss map_lod matches 1..20 run scoreboard players add boss map_lod 1

### Jack-O ###

	# execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run function comm:game-start/mob/boss/main/jack-o-install
	execute if score boss stage = player stage if score boss map_lod matches 21 at @a run playsound minecraft:ambient.cave master @a ~ ~ ~ 2 0


	execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run tellraw @a ["",{"text":"\n"}]
	execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run tellraw @a ["",{"text":"-------------|","color":"gray"},{"text":" boss ","bold":true,"color":"red"},{"text":"|-------------","color":"gray"}]
	# execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run tellraw @a ["",{"text":"\n"}]
	execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run tellraw @a ["",{"text":"             "},{"selector":"@a"}]
	execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run tellraw @a ["",{"text":"               "},{"text":"VS","bold":true,"color":"white"}]
	execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run tellraw @a ["",{"text":"             "},{"text":"Jack-O","bold":true,"color":"dark_red"}]
	# execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run tellraw @a ["",{"text":"\n"}]
	execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run tellraw @a ["",{"text":"---------------------------------","color":"gray"}]


	execute if score boss stage = player stage if score boss map_lod matches 21..150 if score boss-type map_lod matches 1 run scoreboard players add boss map_lod 1

	execute if score boss stage = player stage if score boss map_lod matches 121 if score boss-type map_lod matches 1 run function comm:game-start/mob/boss/main/jack-o-install


	execute if score boss stage = player stage if score boss map_lod matches 121 if score boss-type map_lod matches 1 run scoreboard players add boss map_lod 1

	execute if score boss stage = player stage if score boss map_lod matches 122 at @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.2 2
	execute if score boss stage = player stage if score boss map_lod matches 122 at @a run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0
	execute if score boss stage = player stage if score boss map_lod matches 131 at @a run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.2 2
	# execute if score boss stage = player stage if score boss map_lod matches 131 if score boss-type map_lod matches 1 at @a run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1
	execute if score boss stage = player stage if score boss map_lod matches 132 run particle minecraft:portal ~ ~ ~ 2 1 2 0.5 1000

	# execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run scoreboard players add @a title 1
	# execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run title @a times 0 100 0
	# execute if score boss stage = player stage if score boss map_lod matches 21 if score boss-type map_lod matches 1 run title @a title ["",{"text":"You","color":"light_purple"},{"text":"   VS   ","bold":true,"italic":true,"color":"black"},{"text":"Jack-O","bold":true,"color":"dark_red"}]

	# execute if score boss stage = player stage if score boss map_lod matches 21..40 if score boss-type map_lod matches 1 run scoreboard players add boss map_lod 1

	# spreadplayers 37.5 -1032 2 1 true @a
#########

