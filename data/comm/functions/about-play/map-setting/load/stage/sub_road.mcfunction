
kill @e[tag=tester]
function comm:about-play/map-setting/load/stage/summon_tester
execute if score count-event map_lod < min-event map_lod at @e[tag=center] at @e[tag=tester,sort=random,limit=1] run function comm:about-play/map-setting/load/stage/summon_event
execute if score count-event map_lod < min-event map_lod at @e[tag=center] at @e[tag=tester,sort=random,limit=1] run function comm:about-play/map-setting/load/stage/summon_event
execute if score count-event map_lod < min-event map_lod at @e[tag=center] at @e[tag=tester,sort=furthest,limit=1] run function comm:about-play/map-setting/load/stage/summon_event
execute if score count-event map_lod < min-event map_lod as @e[tag=map-all,tag=loader,tag=!event,scores={stage-road_count=..3},sort=random,limit=1] at @s run function comm:about-play/map-setting/load/stage/sub_road
