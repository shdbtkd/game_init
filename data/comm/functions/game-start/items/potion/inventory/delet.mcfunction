execute if data entity @s Inventory[{ Slot: 0b, tag: {potion:1b} }] run function comm:game-start/items/itemself
execute if data entity @s Inventory[{ Slot: 1b, tag: {potion:1b} }] run function comm:game-start/items/itemself
execute if data entity @s Inventory[{ Slot: 2b, tag: {potion:1b} }] run function comm:game-start/items/itemself
#execute if data entity @s Inventory[{ Slot: 3b, tag: {potion:1b} }] run function comm:game-start/items/itemself
execute if data entity @s Inventory[{ Slot: 4b, tag: {potion:1b} }] run function comm:game-start/items/itemself
execute if data entity @s Inventory[{ Slot: 5b, tag: {potion:1b} }] run function comm:game-start/items/itemself
execute if data entity @s Inventory[{ Slot: 6b, tag: {potion:1b} }] run function comm:game-start/items/itemself
execute if data entity @s Inventory[{ Slot: 7b, tag: {potion:1b} }] run function comm:game-start/items/itemself
execute if data entity @s Inventory[{ Slot: 8b, tag: {potion:1b} }] run function comm:game-start/items/itemself
execute if score @s pickup-potion matches 1.. unless data entity @s Inventory[{ Slot: 3b, tag: {potion:1b} }] run function comm:game-start/items/potion/inventory/delet