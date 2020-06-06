
execute store result score @s price run data get entity @s Item.tag.CustomModelData
execute if predicate pred:30 run scoreboard players add @s price 1
execute if predicate pred:30 run scoreboard players add @s price 1
execute if predicate pred:30 run scoreboard players add @s price 1
scoreboard players operation @s price += price-add price

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s price