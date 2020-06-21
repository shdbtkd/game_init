
execute unless data entity @s Items[{ Slot: 10b, id: "minecraft:enchanted_book" }] run function comm:game-start/class/event/enchant/table/remove
execute if data entity @s Items[{ Slot: 10b, id: "minecraft:enchanted_book" }] run function comm:game-start/class/event/enchant/table/main_set