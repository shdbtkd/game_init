#execute if data entity @s Inventory[{ Slot: 6b, tag: { activeitem: 1b } }] run say 1
function comm:game-start/skill/active_item/generic/cooldown/set
execute if data entity @s Inventory[{ Slot: 6b, tag: { activeitem: 1b } }] if data entity @s Inventory[{ Slot: 6b, tag: { firework_rocket: 1b } }] run function comm:game-start/skill/active_item/firework_rocket/main