execute if entity @s[tag=!locked] if score @p stage matches 1.. run loot spawn ~ ~ ~ loot playerheadtricks:group/box_1stage
execute if entity @s[tag=!locked] if score @p stage matches 2.. run loot spawn ~ ~ ~ loot playerheadtricks:group/box_2stage

execute if entity @s[tag=locked] if score @p stage matches 1.. run loot spawn ~ ~ ~ loot playerheadtricks:group/box_1stage

setblock ~ ~ ~ air destroy
tp @s ~ -10 ~
kill @s

# loot spawn ~ ~ ~ loot playerheadtricks:emerald-1
# execute if predicate pred:20 run loot spawn ~ ~ ~ loot playerheadtricks:emerald
# execute if predicate pred:20 run summon minecraft:item ~ ~ ~ {Tags:["delay"],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"치유의 물약","color":"white","bold":true,"italic":false}'},item:1b,potion:1b,showname:1b,Potion:"minecraft:healing"}}}
# execute if predicate pred:20 run summon item ~ ~ ~ {Item:{id:"minecraft:tnt",Count:1b}}