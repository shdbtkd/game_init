say im
execute if entity @s[tag=unstalled] run say pass_1
execute if entity @s[tag=unstalled] if entity @e[tag=grind_container,tag=enchant_setting] run function comm:game-start/class/event/enchant/table_installer
execute if entity @s[tag=unstalled] run say pass_2
execute if entity @s[tag=unstalled] if entity @e[tag=table_container,tag=enchant_setting] run function comm:game-start/class/event/enchant/grind_installer
execute if entity @s[tag=unstalled] run say pass_3

execute if entity @s[tag=unstalled] if predicate pred:50 run function comm:game-start/class/event/enchant/table_installer
execute if entity @s[tag=unstalled] run say pass_4
execute if entity @s[tag=unstalled] run function comm:game-start/class/event/enchant/grind_installer
execute if entity @s[tag=unstalled] run say pass_5

