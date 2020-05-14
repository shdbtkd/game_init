
	#기본 공격

		execute as @a[tag=nd1,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd1-emmer-remove=1..}] run scoreboard players remove @s[scores={skill=..0}] emmer 1
		execute as @a[tag=nd1,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd1-emmer-remove=1..}] if score @s[level=1..] sneak matches 1.. run function comm:game-start/skill/sneak/nd1
		execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches 1.. run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[3]
		execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches ..0 run replaceitem block ~ 15 ~ container.0 air
		execute as @a[tag=nd1,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd1-emmer-remove=1..}] at @e[tag=modify-head] as @a[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches 1.. unless data entity @s[nbt={SelectedItemSlot: 0}] SelectedItem run loot replace entity @s weapon.mainhand mine ~ 15 ~ minecraft:stick{drop_contents:true}
		execute as @a[tag=nd1,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd1-emmer-remove=1..}] at @e[tag=modify-head] as @a[scores={stage=1..}] run function comm:game-start/items/itemself
		execute as @a[tag=nd1] as @s if entity @s[scores={nd1-emmer-remove=1..}] run scoreboard players set @s nd1-emmer-remove 0

	########

