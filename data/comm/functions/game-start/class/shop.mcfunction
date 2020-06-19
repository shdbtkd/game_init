
execute if score @s emerald matches 1..64 unless data block ~ ~21 ~ Items[{ Slot: 6b, id: "minecraft:emerald", tag:{display:{Name:'{"text":"에메랄드","color":"green","italic":false}'}} }] run replaceitem block ~ 21 ~ container.6 minecraft:emerald{display:{Name:'{"text":"에메랄드","color":"green","italic":false}'}} 1
execute if score @s emerald matches 1..64 store result block ~ 21 ~ Items[{ Slot: 6b, id: "minecraft:emerald", tag:{display:{Name:'{"text":"에메랄드","color":"green","italic":false}'}} }].Count double 1 run scoreboard players get @s emerald
execute if score @s emerald matches 65.. run replaceitem block ~ 21 ~ container.6 minecraft:emerald{display:{Name:'{"text":"에메랄드","color":"green","italic":false}'}} 64
execute if score @s drop-emerald matches 1.. run function comm:game-start/class/remove-emerald
execute if score @s emerald matches 0 run replaceitem block ~ 21 ~ container.6 air

execute if score @s undying matches 1.. unless entity @s[nbt={Inventory:[{Slot: 1b, id: "minecraft:totem_of_undying"}]}] run replaceitem block ~ 21 ~ container.0 minecraft:totem_of_undying
#execute if score @s undying matches 1.. unless data block ~ ~21 ~ Items[{ Slot: 0b, id: "minecraft:totem_of_undying"}] run replaceitem block ~ 21 ~ container.0 minecraft:totem_of_undying
execute if score @s undying matches 1..10 store result block ~ 21 ~ Items[{ Slot: 0b, id: "minecraft:totem_of_undying"}].tag.CustomModelData int 1 run scoreboard players get @s undying
execute if score @s undying matches 10.. run replaceitem block ~ 21 ~ container.0 minecraft:totem_of_undying{CustomModelData: 11}
execute if score @s D_undying matches 1.. run function comm:game-start/class/remove-undying
execute if score @s undying matches 0 run replaceitem block ~ 21 ~ container.0 air

execute as @s[scores={p-tnt=..0},nbt={Inventory:[{Slot: 2b, id: "minecraft:tnt"}]}] run replaceitem block ~ 21 ~ container.1 minecraft:air
execute as @s[scores={p-tnt=1..}] unless data block ~ ~21 ~ Items[{ Slot: 1b, id: "minecraft:tnt", tag:{display:{Name:'{"text":"TNT","color":"yellow","italic":false}'}, display_item:1b} }] run replaceitem block ~ 21 ~ container.1 minecraft:tnt{display:{Name:'{"text":"TNT","color":"yellow","italic":false}'}}
execute as @s[scores={p-tnt=1..}] store result block ~ 21 ~ Items[{ Slot: 1b, id: "minecraft:tnt", tag:{display:{Name:'{"text":"TNT","color":"yellow","italic":false}'}, display_item:1b} }].Count double 1 run scoreboard players get @s p-tnt

execute as @s[scores={emmer=0}] run replaceitem block ~ 21 ~ container.7 air
execute as @s[scores={emmer=1..}] unless data block ~ ~21 ~ Items[{ Slot: 7b, id: "minecraft:arrow", tag:{display:{Name:'{"text":"ammo","color":"light_purple","bold":true,"italic":false}'}, ammo:1b, display_item:1b} }] run replaceitem block ~ 21 ~ container.7 minecraft:arrow{display:{Name:'{"text":"ammo","color":"light_purple","bold":true,"italic":false}'},ammo:1b}
execute as @s[scores={emmer=1..}] store result block ~ 21 ~ Items[{ Slot: 7b, id: "minecraft:arrow", tag:{display:{Name:'{"text":"ammo","color":"light_purple","bold":true,"italic":false}'}, ammo:1b, display_item:1b} }].Count double 1 run scoreboard players get @s emmer

execute as @s[scores={drop-potion=1..}] run replaceitem block ~ 21 ~ container.2 minecraft:air
execute as @s[scores={drop-potion=1..}] run scoreboard players set @s drop-potion 0

