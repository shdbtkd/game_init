loot spawn ~ ~ ~ loot playerheadtricks:shop/shop_1stage
execute at @s as @e[tag=shop-item,limit=1,sort=nearest] run data modify entity @s Item set from entity @e[distance=..1,limit=1,sort=nearest,nbt={Item: {tag: { shopitem: 1b } }}] Item
execute at @s as @e[tag=shop-item,limit=1,sort=nearest] run data merge entity @s {PickupDelay:-1,Age:-32768}
kill @e[tag=!shop-item,distance=..1,limit=1,sort=nearest,nbt={Item: {tag: { shopitem: 1b } }}]