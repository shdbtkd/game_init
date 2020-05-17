
execute if score time stage matches 60 run summon armor_stand ~-0.5 69.5 ~-0.5 {Tags:["close-add"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if score player stage = play-now stage if score time stage matches ..59 run summon armor_stand ~-0.5 69.5 ~-0.5 {Tags:["close-add"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if score player stage = play-now stage if score time stage matches ..59 run scoreboard players set time stage 61
execute if score time stage matches 1.. if entity @s[tag=loader,tag=!boss] run fill ~15 64 ~15 ~-16 64 ~-16 minecraft:redstone_block replace air


# 끝
