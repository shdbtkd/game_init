setblock ~ 63 ~ chest
execute as @p run loot insert ~ 63 ~ loot playerheadtricks:uuidtest
data modify entity @s OwnerUUID set from block ~ 63 ~ Items[0].tag.SkullOwner.Id
tag @s remove getuuid
setblock ~ 63 ~ air