tag @s add active-event
# 30%           chest
execute if entity @s[scores={event-type=1..3}] at @s run function comm:game-start/class/event/chest/act
# 30% // 60     shop
execute if entity @s[scores={event-type=4..6}] at @s run function comm:game-start/class/event/shop/act
# 20% // 70     enchant
execute if entity @s[scores={event-type=7..9}] at @s run function comm:game-start/class/event/enchant/act
# ||||||| 따로 빼야함
# vvvvvvv
# 20% // 90     boss
#execute if entity @s[scores={event-type=9}] at @s run function comm:game-start/class/event/boss/act
# 10% // 100    challenge
#execute if entity @s[scores={event-type=10}] at @s run function comm:game-start/class/event/challenge/act
# 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 1 run kill @e[limit=6,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 1 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 2 run kill @e[limit=4,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 2 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 2 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 2 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 3 run kill @e[limit=3,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 3 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 3 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 3 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 3 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 4 run kill @e[limit=2,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 4 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 4 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 4 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 4 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 4 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 5 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 5 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 5 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 5 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 5 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 5 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 5 if predicate pred:75 run kill @e[limit=1,sort=random,tag=item-random]
# 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 6 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 6 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 6 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 6 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 6 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 6 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s if score player stage matches 6 if predicate pred:75 run kill @e[limit=1,sort=random,tag=item-random]
# 
# execute as @e[tag=active-event,tag=!end-active-event,scores={event-type=1}] at @s run tag @s add end-active-event
# 
# execute as @e[tag=item-random] run scoreboard players add @s item-random 0
# 
# 
# 