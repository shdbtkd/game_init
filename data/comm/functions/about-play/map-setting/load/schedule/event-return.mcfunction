function comm:about-play/map-setting/load/generic_count
execute if score count-end-event map_lod < count-event map_lod run scoreboard players set start map_lod 5
execute if score count-end-event map_lod = count-event map_lod run scoreboard players set start map_lod 7