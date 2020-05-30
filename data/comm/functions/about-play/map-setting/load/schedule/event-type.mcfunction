loot insert 0 12 -26 loot playerheadtricks:event-type
execute as @e[tag=event,sort=random,limit=1,scores={event-type=..0}] store result score @s event-type run data get block 0 12 -26 Items[].Count
data remove block 0 12 -26 Items
execute if entity @e[tag=event,scores={event-type=..0}] run scoreboard players set start map_lod 10
execute unless entity @e[tag=event,scores={event-type=..0}] run scoreboard players set start map_lod 13