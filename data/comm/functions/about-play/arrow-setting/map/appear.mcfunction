execute at @e[tag=map-all,limit=1,sort=nearest] as @e[tag=map-all,tag=!not-appear,distance=..50] run tag @s add appear
#function comm:about-play/arrow-setting/map/testfortmap
execute at @s at @e[tag=map-all,limit=1,sort=nearest] run function comm:about-play/arrow-setting/map/make

execute as @s[scores={inven_tab-info=1}] at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace block ~ 21 ~ container.7 mine ~ 17 ~ stick{drop_contents:true}
execute as @s[scores={inven_tab-info=1}] at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s inventory.0 mine ~ 17 ~ stick{drop_contents:true}
