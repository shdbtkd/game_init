#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------SUMMONER------------------#
setblock ~ ~ ~ chest
loot insert ~ ~ ~ loot playerheadtricks:uuidtest
summon minecraft:wolf ~ ~ ~ {Tags:["getuuid"]}
execute as @e[type=minecraft:wolf,limit=1,sort=nearest,tag=getuuid] run data modify entity @s OwnerUUID set from block ~ ~ ~ Items[0].tag.SkullOwner.Id
tag @e[type=minecraft:wolf,limit=1,sort=nearest,tag=getuuid] remove getuuid
setblock ~ ~ ~ air
#------------------------------------------#