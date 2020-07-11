# execute store result score @s golden_sword run data get entity @s Motion[1] 100
# execute if score @s golden_sword matches ..-9 run function comm:game-start/skill/jewelry_item/golden_sword/act
# execute if score @s golden_sword matches ..-9 run scoreboard players add @s result-att_dmg 30
# 
# function comm:game-start/items/attribute/set
# execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:game-start/skill/lootarmor