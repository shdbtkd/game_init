function comm:about-play/map-setting/load/generic_count
execute if score count-end-load map_lod < count-loader map_lod run scoreboard players set start map_lod 3
execute if score count-end-load map_lod = count-loader map_lod run scoreboard players set start map_lod 5
say 1