summon minecraft:zombie ~ ~ ~ {Team:"red",IsBaby:1b,Tags:["slime-target"]}
execute if predicate pred:50 run summon minecraft:zombie ~ ~ ~ {Team:"red",IsBaby:1b,Tags:["slime-target"]}
execute if predicate pred:50 run summon minecraft:zombie ~ ~ ~ {Team:"red",IsBaby:1b,Tags:["slime-target"]}
execute as @e[tag=slime-target,distance=..2] run data modify entity @s {} merge from entity @e[tag=slime-storage,limit=1,sort=nearest] Item.tag.storage
kill @s