
### tnt ###



		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[0] set from entity @e[type=!tnt,type=!arrow,tag=!tnt,type=!minecraft:trident,type=!minecraft:evoker_fangs,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,team=,distance=..0.9,limit=1,sort=nearest] Motion[0]
		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[1] set from entity @e[type=!tnt,type=!arrow,tag=!tnt,type=!minecraft:trident,type=!minecraft:evoker_fangs,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,team=,distance=..0.9,limit=1,sort=nearest] Motion[1]
		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[2] set from entity @e[type=!tnt,type=!arrow,tag=!tnt,type=!minecraft:trident,type=!minecraft:evoker_fangs,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,team=,distance=..0.9,limit=1,sort=nearest] Motion[2]
		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[0] set from entity @e[type=arrow,distance=..1.7,limit=1,sort=nearest] Motion[0]
		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[1] set from entity @e[type=arrow,distance=..1.7,limit=1,sort=nearest] Motion[1]
		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[2] set from entity @e[type=arrow,distance=..1.7,limit=1,sort=nearest] Motion[2]
		# execute as @e[type=tnt,scores={fuse=0..}] at @s as @e[type=arrow,distance=..1.7,limit=1,sort=nearest] run kill @s
		# execute as @e[type=tnt,scores={fuse=0..}] at @s as @e[type=arrow,distance=..1.7,limit=1,sort=nearest] run kill @s
		# execute as @e[type=tnt,scores={fuse=0..}] at @s as @e[type=arrow,distance=..1.7,limit=1,sort=nearest] run kill @s
		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[0] set from entity @e[type=trident,distance=..1.7,limit=1,sort=nearest] Motion[0]
		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[1] set from entity @e[type=trident,distance=..1.7,limit=1,sort=nearest] Motion[1]
		# execute as @e[type=tnt,scores={fuse=0..}] at @s run data modify entity @s Motion[2] set from entity @e[type=trident,distance=..1.7,limit=1,sort=nearest] Motion[2]

		# execute as @e[type=tnt,scores={fuse=0..}] store result score @s tnt0 run data get entity @s Pos[0] 100
		# execute as @e[type=tnt,scores={fuse=0..}] store result score @s tnt1 run data get entity @s Pos[0] 100
		# execute as @e[type=tnt,scores={fuse=0..}] store result score @s tnt2 run data get entity @s Pos[0] 100

		# execute at @e[type=tnt,scores={fuse=0..}] as @e[team=!,distance=..1] store result score @s tnt0 run data get entity @s Pos[0] 100
		# execute at @e[type=tnt,scores={fuse=0..}] as @e[team=!,distance=..1] store result score @s tnt1 run data get entity @s Pos[0] 100
		# execute at @e[type=tnt,scores={fuse=0..}] as @e[team=!,distance=..1] store result score @s tnt2 run data get entity @s Pos[0] 100

		# execute at @e[team=!] unless entity @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players reset @s tnt0
		# execute at @e[team=!] unless entity @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players reset @s tnt1
		# execute at @e[team=!] unless entity @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players reset @s tnt2


		# execute at @e[team=!,scores={tnt0=0..}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @p tnt0 -= @s tnt0
		# execute at @e[team=!,scores={tnt0=..0}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @p tnt0 -= @s tnt0

		# execute at @e[team=!,scores={tnt0=0..}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @s tnt0 = @p tnt0
		# execute at @e[team=!,scores={tnt0=..0}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @s tnt0 = @p tnt0
		# execute at @e[team=!] as @e[type=tnt,scores={fuse=0..},distance=..1] store result entity @s Motion[0] double -0.005 run scoreboard players get @s tnt0

		# execute at @e[team=!,scores={tnt1=0..}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @p tnt1 -= @s tnt1
		# execute at @e[team=!,scores={tnt1=..0}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @p tnt1 -= @s tnt1

		# execute at @e[team=!,scores={tnt1=0..}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @s tnt1 = @p tnt1
		# execute at @e[team=!,scores={tnt1=..0}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @s tnt1 = @p tnt1
		# execute at @e[team=!] as @e[type=tnt,scores={fuse=0..},distance=..1] store result entity @s Motion[1] double 0.008 run scoreboard players get @s tnt1

		# execute at @e[team=!,scores={tnt2=0..}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @p tnt2 -= @s tnt2
		# execute at @e[team=!,scores={tnt2=..0}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @p tnt2 -= @s tnt2

		# execute at @e[team=!,scores={tnt2=0..}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @s tnt2 = @p tnt2
		# execute at @e[team=!,scores={tnt2=..0}] as @e[type=tnt,scores={fuse=0..},distance=..1.2] run scoreboard players operation @s tnt2 = @p tnt2
		# execute at @e[team=!] as @e[type=tnt,scores={fuse=0..},distance=..1] store result entity @s Motion[2] double -0.005 run scoreboard players get @s tnt2
#

# tnt 소환

	# data merge entity @e[limit=1,type=minecraft:item,tag=select,scores={item-delay=0}] {PickupDelay:-1,Age:-32768}


###########


### potion ###

	execute as @s[scores={use-potion=1..}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 21 ~ container.1 air
	function comm:game-start/items/itemself
	execute as @s[scores={use-potion=1..}] run scoreboard players set @s use-potion 0

##############



