#
#   아머스텐드에 셜커
#
#
#
#
#
#

execute unless entity @a[distance=3.8..,tag=table_user] run tag @a[limit=1,sort=nearest] add table_user
execute as @a[distance=3.8..10,tag=table_user] run tag @s remove table_user

function comm:game-start/class/event/enchant/table/notice/init