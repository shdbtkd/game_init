
execute if entity @s[tag=unstalled] if entity @e[tag=grind_display,tag=enchant_setting] run function comm:game-start/class/event/enchant/table_installer
execute if entity @s[tag=unstalled] if entity @e[tag=table_display,tag=enchant_setting] run function comm:game-start/class/event/enchant/grind_installer

execute if entity @s[tag=unstalled] if predicate pred:50 run function comm:game-start/class/event/enchant/table_installer
execute if entity @s[tag=unstalled] run function comm:game-start/class/event/enchant/grind_installer

