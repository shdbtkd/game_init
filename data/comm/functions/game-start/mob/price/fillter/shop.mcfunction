execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] at @s as @e[tag=shop-item,limit=1,sort=nearest] run data merge entity @s {PickupDelay:40s,Age:-32768}
execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] at @s as @e[tag=shop-item,limit=1,sort=nearest] run say 1

scoreboard players operation @p emerald -= @s price
execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] at @s run setblock ~ ~1 ~ air destroy
execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] at @s run kill @e[tag=shop-pos,limit=1,sort=nearest]
execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] at @s run kill @e[tag=child-frame,distance=..1]
execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] run kill @s

say 1
kill @s