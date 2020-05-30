
execute if score time stage matches 100.. if score red stage matches ..0 as @s[tag=now-play,tag=!complete,tag=!now-end] run tag @s add complete
execute if score time stage matches 100.. if score red stage matches ..0 as @s[tag=now-play,tag=complete,tag=!now-end] run scoreboard players set @s room_type 3

execute if score time stage matches 100.. if score red stage matches ..0 as @s[tag=now-play,tag=complete,tag=!now-end,tag=!boss] at @s run tag @e[tag=close-add,limit=1,sort=nearest] add clear-add
execute if score time stage matches 100.. if score red stage matches ..0 as @s[tag=now-play,tag=complete,tag=!now-end,tag=boss] at @s run tag @e[tag=close-add-large,limit=1,sort=nearest] add clear-add-large
execute if score time stage matches 100.. if score red stage matches ..0 as @s[tag=now-play,tag=complete,tag=!now-end,tag=!boss] at @s run tag @e[tag=close-add,limit=1,sort=nearest] remove close-add
execute if score time stage matches 100.. if score red stage matches ..0 as @s[tag=now-play,tag=complete,tag=!now-end,tag=boss] at @s run tag @e[tag=close-add-large,limit=1,sort=nearest] remove close-add-large
execute if score time stage matches 100.. if score red stage matches ..0 as @s[tag=now-play,tag=complete,tag=!now-end] run scoreboard players set time stage 102

execute if score time stage matches 100.. if score red stage matches ..0 as @s[tag=now-play,tag=complete,tag=!now-end,tag=!boss] at @s run function comm:about-play/map-setting/stage-complete
execute if score time stage matches 100.. if score red stage matches ..0 unless entity @e[tag=red-boss] as @s[tag=now-play,tag=complete,tag=!now-end,tag=boss] at @s run function comm:about-play/map-setting/boss-complete
