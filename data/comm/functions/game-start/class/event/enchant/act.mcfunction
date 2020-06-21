#execute if blocks ~2 ~2 ~2 ~-2 ~ ~-2 ~ 250 ~ all
# say 1
execute rotated 0 0 align xz positioned ~ 71 ~ run function comm:game-start/class/event/enchant/summon_anchore
execute rotated 90 0 align xz positioned ~ 71 ~ run function comm:game-start/class/event/enchant/summon_anchore
execute rotated 180 0 align xz positioned ~ 71 ~ run function comm:game-start/class/event/enchant/summon_anchore
execute rotated 270 0 align xz positioned ~ 71 ~ run function comm:game-start/class/event/enchant/summon_anchore

#execute as @e[tag=enchant_anchore] at @s unless blocks ~2 ~2 ~2 ~-2 ~ ~-2 ~ 245 ~ all run effect give @s minecraft:glowing
execute as @e[tag=enchant_anchore] at @s unless blocks ~2 ~2 ~2 ~-2 ~ ~-2 ~ 245 ~ all run kill @s
execute as @e[tag=enchant_anchore,limit=1,sort=random] at @s run function comm:game-start/class/event/enchant/type_setter
execute as @e[tag=enchant_anchore,limit=1,sort=random] at @s if predicate pred:30 run function comm:game-start/class/event/enchant/type_setter

kill @e[tag=enchant_anchore]