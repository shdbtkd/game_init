# scoreboard players remove @s undying 1
execute if score @s emerald matches 1.. run function comm:game-start/class/lostitem/base/emerald
execute if score @s p-tnt matches 1.. run function comm:game-start/class/lostitem/base/tnt
execute if score @s undying matches 1.. run function comm:game-start/class/lostitem/base/undying

# execute if data entity @s Inventory[{ tag: { active:1b } }] run function comm:game-start/class/lostitem/active/all
# execute if data entity @s Inventory[{ tag: { active:1b } }] run function comm:game-start/class/lostitem/active/all