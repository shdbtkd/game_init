summon minecraft:armor_stand ~ ~ ~ {Tags:["event","loader","map-all"],NoGravity:1b}
function comm:about-play/map-setting/load/generic_count
tellraw @a {"score":{"name":"count-event","objective":"map_lod"}}