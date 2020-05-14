




execute at @e[tag=out-rd1] as @a[distance=..1.5,scores={sneak=1..},gamemode=!spectator] run scoreboard players add rd1 s 1
execute at @e[tag=out-rd2] as @a[distance=..1.5,scores={sneak=1..},gamemode=!spectator] run scoreboard players add rd2 s 1
execute at @e[tag=out-rd3] as @a[distance=..1.5,scores={sneak=1..},gamemode=!spectator] run scoreboard players add rd3 s 1

execute at @e[tag=out-nd1] as @a[distance=..1.5,scores={sneak=1..},gamemode=!spectator] run scoreboard players add nd1 s 1
execute at @e[tag=out-nd2] as @a[distance=..1.5,scores={sneak=1..},gamemode=!spectator] run scoreboard players add nd2 s 1
execute at @e[tag=out-nd3] as @a[distance=..1.5,scores={sneak=1..},gamemode=!spectator] run scoreboard players add nd3 s 1


execute as @a[scores={mine-p=1..}] run scoreboard players remove @s mine-p 1
execute as @a[scores={mine-c=1..}] run scoreboard players remove @s mine-c 1

execute as @a[scores={jump=1..}] if data entity @s {OnGround:1b} run scoreboard players set @s jump 0
execute as @a[scores={sneak=1..}] run scoreboard players remove @s sneak 1

execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 27 ~ container.0 stone
execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 27 ~ Items[0] set from block ~ 15 ~ Items[{ Slot: 5b }]
execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 27 ~ Items[0].Slot set value 0b
# execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s weapon.mainhand mine ~ 27 ~ minecraft:stick{drop_contents:true}

execute at @e[tag=modify-head] as @a[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches 1.. unless data entity @s[nbt={SelectedItemSlot: 0}] SelectedItem run loot replace entity @s weapon.mainhand mine ~ 15 ~ minecraft:stick{drop_contents:true}
execute at @e[tag=modify-head] as @a[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches ..0 if data entity @s[nbt={SelectedItemSlot: 0}] SelectedItem run loot replace entity @s weapon.mainhand mine ~ 15 ~ minecraft:stick{drop_contents:true}

execute if entity @a[scores={stage=..1}] if score boss stage matches ..0 run effect clear @a minecraft:poison

execute if entity @a[scores={stage=..0}] run data modify storage minecraft:armor.3 active[].Slot set value 5b
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:armor.2 basic[].Slot set value 4b
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:armor.1 basic[].Slot set value 3b
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:armor.0 basic[].Slot set value 2b

execute if entity @a[scores={stage=..0}] run data modify storage minecraft:offhand basic[].Slot set value 1b

execute if entity @a[scores={stage=0..}] run data modify storage minecraft:weapon active[].Slot set value 0b
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:weapon active[0] set from storage minecraft:weapon basic[0]
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:weapon active[1] set from storage minecraft:weapon basic[1]
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:weapon active[2] set from storage minecraft:weapon basic[2]
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:weapon active[3] set from storage minecraft:weapon basic[3]
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:weapon active[4] set from storage minecraft:weapon basic[4]
execute if entity @a[scores={stage=..0}] run data modify storage minecraft:weapon active[5] set from storage minecraft:weapon basic[5]

# execute as @a[scores={stage=1..}] at @s[scores={out=1..}] run replaceitem entity @s armor.head air
#execute as @a[scores={stage=1..}] unless data entity @s Inventory[{Slot:103b}] run function comm:game-start/skill/lootself