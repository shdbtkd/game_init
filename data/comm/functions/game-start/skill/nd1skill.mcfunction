
	#기본 공격

		execute if score @s mine-c matches ..0 if score @s mine-p matches ..0 if score @s nd1-emmer-remove matches 1.. run function comm:game-start/skill/attack/nd1
		execute if score @s mine-c matches 1.. if score @s nd1-emmer-remove matches 1.. run scoreboard players set @s nd1-emmer-remove 0
		execute if score @s mine-p matches 1.. if score @s nd1-emmer-remove matches 1.. run scoreboard players set @s nd1-emmer-remove 0
		execute if score @s emmer matches 1.. at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[3]
		execute if score @s emmer matches ..0 at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.0 air
		execute if score @s emmer matches 1.. unless data entity @s[nbt={SelectedItemSlot: 0}] SelectedItem at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s weapon.mainhand mine ~ 15 ~ minecraft:stick{drop_contents:true}

	########

