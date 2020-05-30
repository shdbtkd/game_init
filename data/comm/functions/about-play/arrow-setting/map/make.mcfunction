execute at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 17 ~ Items set from block 10 12 -33 Items

execute positioned ~ ~ ~48 run function comm:about-play/arrow-setting/map/test/top
execute positioned ~48 ~ ~ run function comm:about-play/arrow-setting/map/test/left
execute positioned ~-48 ~ ~ run function comm:about-play/arrow-setting/map/test/right
execute positioned ~ ~ ~-48 run function comm:about-play/arrow-setting/map/test/bottom

execute at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.13 minecraft:white_stained_glass_pane{CustomModelData:1,display:{Name:'{"text":""}'}}
execute at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data remove block ~ 17 ~ Items[{ tag: { CustomModelData:0 } }]

#execute store result block 10 12 -29 Items[{ Slot: 13b }].tag.CustomModelData int 1 run scoreboard players get @s stage

# data modify block -280 4 89 Items[0].tag.display.Lore append from entity @s SelectedItem.tag.display.Name