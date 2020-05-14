#scoreboard players set @s item-index 0
data modify entity @s Item.tag.potion set value 1b
tag @s add delay 
# data merge entity @s {Motion:[0.0d, 1.0d, 0.0d]}
execute if predicate pred:30 run data modify entity @s Item.tag merge value {blind-effect:1b}
execute if data entity @s Item.tag{blind-effect:1b} run data modify entity @s Item.tag.display.Name set value '{"text":"???","color":"white","bold":true,"italic":false}'
execute if data entity @s Item.tag{blind-effect:1b} run data modify entity @s Item.tag.HideFlags set value 32
# execute if data entity @s Item.tag{blind-effect:1b} run data modify entity @s Item.tag.CustomPotionColor set value 0

execute if predicate pred:30 run data modify entity @s Item merge value {id: "minecraft:splash_potion"}
execute if predicate pred:30 run data modify entity @s Item merge value {id: "minecraft:lingering_potion"}