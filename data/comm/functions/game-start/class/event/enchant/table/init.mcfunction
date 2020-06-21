#
#   아머스텐드에 셜커
#
#
#
#
#
#
#
#execute unless entity @a[distance=3.8..,tag=table_user] run tag @a[limit=1,sort=nearest] add table_user
#execute as @a[distance=3.8..10,tag=table_user] run tag @s remove table_user
#
#function comm:game-start/class/event/enchant/table/notice/init

#execute if data entity @s Items[{ Slot: 10b }] run say 1
execute unless data entity @s Items[{ Slot: 10b }] run function comm:game-start/class/event/enchant/table/remove
execute if data entity @s Items[{ Slot: 10b }] run function comm:game-start/class/event/enchant/table/filter
execute as @a if data entity @s Inventory[].tag.enchant-select_trigger at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:game-start/class/event/enchant/table/act/checker