#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------SUMMONER------------------#
summon zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{}}]}
loot spawn ~ ~ ~ loot playerheadtricks:uuidtest
data modify entity @e[type=zombie,limit=1,sort=nearest,distance=0] ArmorItems[3].tag set from entity @e[type=item,distance=0,limit=1,sort=nearest] Item.tag
kill @e[type=item,distance=0,limit=1]
#------------------------------------------#