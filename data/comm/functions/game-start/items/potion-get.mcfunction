
scoreboard players set @s count-itemplayer 10

execute as @p at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 21 ~ container.1 potion
execute as @p at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 21 ~ Items[{ Slot: 1b }] merge from entity @e[type=item,scores={count-itemplayer=10},limit=1] Item
data merge entity @s {PickupDelay:0,Age:-32768}

execute as @p run function comm:game-start/items/itemself