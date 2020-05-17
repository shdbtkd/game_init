function comm:about-play/map-setting/load/stage/summon_tester
tag @s add end-tester
execute if score count-loader map_lod < min-battle map_lod at @e[tag=center] as @e[tag=tester,sort=random,limit=1] at @s run function comm:about-play/map-setting/load/stage/summon_loader
execute if score @p stage matches 5.. if score count-loader map_lod < min-battle map_lod at @e[tag=center] as @e[tag=tester,sort=furthest,limit=1] at @s if predicate pred:50 run function comm:about-play/map-setting/load/stage/summon_loader
execute if score @p stage matches 5.. if score count-loader map_lod < min-battle map_lod at @e[tag=center] as @e[tag=tester,sort=furthest,limit=1] at @s if predicate pred:loot run function comm:about-play/map-setting/load/stage/summon_loader
execute if score count-loader map_lod < min-battle map_lod at @s as @e[tag=loader,tag=!end-tester,sort=furthest,limit=1] at @s run function comm:about-play/map-setting/load/stage/main_road