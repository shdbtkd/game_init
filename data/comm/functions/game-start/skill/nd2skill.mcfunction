
execute as @s[scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd2-emmer-remove=1..}] run function comm:game-start/skill/attack/nd2
#execute as @a[tag=nd2,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd2-emmer-remove=1..}] run function comm:game-start/skill/attack/rd1

execute if entity @e[tag=nd2trident] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.0 air
execute if entity @e[tag=nd2trident] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s[scores={emmer=..0}] class-index run replaceitem block ~ 15 ~ container.0 air
execute unless entity @e[tag=nd2trident] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s[scores={emmer=1..}] class-index run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[4]
execute if score R_tri D_tri matches 200.. at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s[scores={emmer=1..}] class-index run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[4]

execute as @a[tag=nd2] unless entity @s[nbt={Inventory:[{Slot: 0b, id: "minecraft:air"}]}] run scoreboard players add R_tri D_tri 1
execute as @a[tag=nd2] if entity @s[nbt={Inventory:[{Slot: 0b, id: "minecraft:trident"}]}] run scoreboard players set R_tri D_tri 0
execute as @a[tag=nd2,scores={emmer=..0}] at @s if entity @s if entity @s[nbt={Inventory:[{Slot: 0b, id: "minecraft:trident"}]}] run scoreboard players add G_tri D_tri 1
execute as @a[tag=nd2,scores={emmer=1..}] at @s if entity @s if score G_tri D_tri matches 1.. run scoreboard players set G_tri D_tri 0
# 
# execute as @a[tag=nd2,scores={mine-p=..0}] at @s[scores={mine-c=..0}] if score @s[scores={nd2-emmer-remove=1..}] skill matches 1.. run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 5 2
# execute as @a[tag=nd2,scores={mine-p=..0}] at @s[scores={mine-c=..0}] if score @s[scores={nd2-emmer-remove=1..}] skill matches 1.. run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 5 1
# execute as @a[tag=nd2,scores={mine-p=..0}] at @s[scores={mine-c=..0}] if score @s[scores={nd2-emmer-remove=1..}] skill matches 1.. run particle minecraft:smoke ~ ~1 ~ 0 0.5 0 0.1 50
# 
# execute as @a[tag=nd2,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd2-emmer-remove=1..}] run function comm:game-start/skill/lootself

execute as @a[tag=nd2,scores={D_tri=1..}] as @s if entity @s run scoreboard players set @s D_tri 0

execute as @e[type=minecraft:trident,tag=lightning-trident] if data entity @s {DealtDamage: 1b} at @s run function comm:game-start/skill/sneak/nd2-summon