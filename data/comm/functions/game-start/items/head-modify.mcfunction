clear @s
data remove block ~ 27 ~ Items
replaceitem block ~ 27 ~ container.3 stone_button
#data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.HideFlags set value 34

data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.head_item set value 1b

data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 1, Operation: 0, UUID: [I;-1303136102,1894469080,-1621841755,1370004418 ], Slot:"head" }
data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 1, Operation: 0, UUID: [I;909635418,616844120,-1993741716,-1188665181 ], Slot:"head" }
data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 1, Operation: 0, UUID: [I;-594036029,1468550163,-1899959435,-517546335 ], Slot:"head" }
data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.armor", Name: "generic.armor", Amount: 1, Operation: 0, UUID: [I;1545729333,-756920710,-1224609192,-1032845728 ], Slot:"head" }
data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 1, Operation: 0, UUID: [I;-1427211275,683623019,-2034777082,739450430 ], Slot:"head" }

#execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index unless data block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[0] run data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 1, Operation: 0, UUID: [I;-1303136102,1894469080,-1621841755,1370004418 ], Slot:"head" }
#execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index unless data block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[1] run data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 1, Operation: 0, UUID: [I;909635418,616844120,-1993741716,-1188665181 ], Slot:"head" }
#execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index unless data block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[2] run data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 1, Operation: 0, UUID: [I;-594036029,1468550163,-1899959435,-517546335 ], Slot:"head" }
#execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index unless data block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[3] run data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.armor", Name: "generic.armor", Amount: 1, Operation: 0, UUID: [I;1545729333,-756920710,-1224609192,-1032845728 ], Slot:"head" }
#execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index unless data block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[4] run data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers append value { AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 1, Operation: 0, UUID: [I;-1427211275,683623019,-2034777082,739450430 ], Slot:"head" }

say head modify
# give @p minecraft:acacia_boat{AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:280606,UUIDMost:678220,Slot:"head"}]} 1
# give @p minecraft:acacia_boat{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:1,Operation:0,UUIDLeast:280606,UUIDMost:678220,Slot:"head"}]} 1
# give @p minecraft:acacia_boat{AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:1,Operation:0,UUIDLeast:280606,UUIDMost:678220,Slot:"head"}]} 1

function comm:game-start/items/attribute/set
function comm:game-start/skill/lootarmor