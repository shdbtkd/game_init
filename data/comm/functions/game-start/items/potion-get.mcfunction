tag @s add pickup-potion
scoreboard players set @s count-itemplayer 10

execute as @p at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 21 ~ container.2 potion
execute as @p at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 21 ~ Items[{ Slot: 2b }] merge from entity @e[type=item,scores={count-itemplayer=10},limit=1] Item
#execute as @p at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 21 ~ Items[{ Slot: 2b }].Count set value 1b
execute as @p at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 21 ~ Items[{ Slot: 2b }].tag.inventory set value 1b
data merge entity @s {PickupDelay:0,Age:-32768}
tp @s @p[distance=..3,sort=nearest,gamemode=!spectator]
execute as @p run function comm:game-start/items/itemself

scoreboard players set @p pickup-potion 1
