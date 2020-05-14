

# execute as @e[tag=Jack,tag=boss] if score now-move boss matches ..250 run scoreboard players add now-move boss 1

# execute as @e[tag=Jack,tag=boss] if score now-move boss matches ..250 run scoreboard players reset pos-z
# execute as @e[tag=Jack,tag=boss] if score now-move boss matches ..250 run scoreboard players reset pos-y
# execute as @e[tag=Jack,tag=boss] if score now-move boss matches ..250 run scoreboard players reset pos-z
# execute as @e[tag=Jack,tag=boss] if score now-move boss matches ..250 run scoreboard players reset facing-z
# execute as @e[tag=Jack,tag=boss] if score now-move boss matches ..250 run scoreboard players reset facing-y
# execute as @e[tag=Jack,tag=boss] if score now-move boss matches ..250 run scoreboard players reset facing-z

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] store result score pos-x boss run data get entity @s Pos[0] 100
# # execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] store result score pos-y boss run data get entity @s Pos[1] 100
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] store result score pos-z boss run data get entity @s Pos[2] 100

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] as @p store result score facing-x boss run data get entity @s Pos[0] 100
# # execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] as @p store result score facing-y boss run data get entity @s Pos[1] 100
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] as @p store result score facing-z boss run data get entity @s Pos[2] 100

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] run scoreboard players operation pos-x boss -= facing-x boss
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] run scoreboard players operation pos-y boss -= facing-y boss
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] run scoreboard players operation pos-z boss -= facing-z boss

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250 unless entity @a[distance=..5] run particle minecraft:explosion_emitter ~ ~-1 ~ 1 0 1 0 1
# # execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250 unless entity @a[distance=..5] run summon minecraft:creeper ~ ~-2 ~ {ExplosionRadius:0b,Fuse:0}
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250 unless entity @a[distance=..5] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 20 2
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250 unless entity @a[distance=..5] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 200 2 1
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250 unless entity @a[distance=..5] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 200 2 1
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250 unless entity @a[distance=..5] store result entity @s Motion[0] double -0.002 run scoreboard players get pos-x boss
# # execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] store result entity @s Motion[1] double -0.01 run scoreboard players get pos-y boss
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250 unless entity @a[distance=..5] run data modify entity @s Motion[1] set value 1.5d
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250 unless entity @a[distance=..5] store result entity @s Motion[2] double -0.002 run scoreboard players get pos-z boss

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..5] if data entity @s {OnGround:0b} run scoreboard players add now-move boss 1
# # execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250..270 unless entity @a[distance=..5] if data entity @s {OnGround:0b} run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 30
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250..270 unless entity @a[distance=..5] if data entity @s {OnGround:0b} run particle dust 0 0.000 0.000 1 ~ ~ ~ 0.2 0.1 0.2 1 20

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. unless entity @a[distance=..0] if data entity @s {OnGround:0b} run data modify entity @s Motion[1] set value -2.5d
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. unless entity @a[distance=..0] if data entity @s {OnGround:0b} run effect give @e[tag=boss] minecraft:jump_boost 1 255 true
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. unless entity @a[distance=..0] if data entity @s {OnGround:0b} run effect give @e[tag=boss] minecraft:strength 1 0 true

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} run effect clear @e[tag=boss] minecraft:jump_boost
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} run effect clear @e[tag=boss] minecraft:strength
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} run particle minecraft:explosion_emitter ~ ~-1 ~ 1 0 1 0 10
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} run particle minecraft:large_smoke ~ ~ ~ 0 0.5 0 0.3 100
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} run particle minecraft:lava ~ ~ ~ 1.5 0 1.5 10 100
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} run summon minecraft:creeper ~ ~-2 ~ {ExplosionRadius:0b,Fuse:0}

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.5,0.1,0.0],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.5,0.2,0.4],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.0,0.1,0.6],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.0,0.01,0.0],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[-0.5,0.1,0.0],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[-0.5,0.2,-0.4],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.0,0.1,-0.6],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
# # execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 270.. unless entity @a[distance=..5] if data entity @s {OnGround:1b} run scoreboard players set now-move boss 240
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 251.. if data entity @s {OnGround:1b} run scoreboard players set now-move boss 140

# execute as @e[tag=Jack,tag=boss] if data entity @s {OnGround:1b} run scoreboard players add run boss 1

# execute as @e[tag=Jack,tag=boss] if score run boss matches 61.. run effect give @s minecraft:speed 1

# execute as @e[tag=Jack,tag=boss] if score run boss matches 151.. run effect give @s minecraft:speed 1 2
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 151..250 run particle minecraft:flame ~ ~0.7 ~ 0.3 0.1 0.3 0 3
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 151..250 run particle minecraft:block minecraft:brown_concrete ~ ~ ~ 0.1 0 0.1 0 50
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 151 run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 200 2 1
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 151 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 166 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 170 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 190 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 200 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 220 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 230 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
# execute as @e[tag=Jack,tag=boss] at @s if score run boss matches 235 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0

# execute as @e[tag=Jack,tag=boss] if score run boss matches 250.. run effect clear @s minecraft:speed
# execute as @e[tag=Jack,tag=boss] if score run boss matches 250.. run effect give @s minecraft:slowness 1 3

# execute as @e[tag=Jack,tag=boss] if score run boss matches 250 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# # execute as @e[tag=Jack,tag=boss] if score run boss matches 260 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# execute as @e[tag=Jack,tag=boss] if score run boss matches 270 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# # execute as @e[tag=Jack,tag=boss] if score run boss matches 280 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# execute as @e[tag=Jack,tag=boss] if score run boss matches 290 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# # execute as @e[tag=Jack,tag=boss] if score run boss matches 300 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# # execute as @e[tag=Jack,tag=boss] if score run boss matches 310 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# # execute as @e[tag=Jack,tag=boss] if score run boss matches 320 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2

# execute as @e[tag=Jack,tag=boss] if score run boss matches 300.. run scoreboard players set run boss 0

# # execute as @e[tag=Jack,tag=boss] at @s if score now-move boss matches 250.. unless entity @a[distance=..3] run scoreboard players set now-move boss 0

# # execute store result bossbar minecraft:jack-o max run data get entity @e[tag=Jack-O,tag=boss,limit=1] Attributes[0].Base
# # execute store result bossbar minecraft:jack-o value run data get entity @e[tag=Jack-O,tag=boss,limit=1] Health

# # bossbar add jack-o {"text":"Jack-O","color":"red","bold":true}
# # bossbar set minecraft:jack-o color red
# # bossbar set minecraft:jack-o players @a
# # bossbar remove minecraft:jack-o


# execute if entity @e[tag=Jack,tag=boss] store result score Jack-max boss run data get entity @e[tag=boss,tag=Jack,limit=1] Attributes[0].Base
# execute if entity @e[tag=O,tag=boss] store result score O-max boss run data get entity @e[tag=boss,tag=O,limit=1] Attributes[0].Base

# execute store result score Jack-now boss run data get entity @e[tag=boss,tag=Jack,limit=1] Health
# execute store result score O-now boss run data get entity @e[tag=boss,tag=O,limit=1] Health

# execute if entity @e[tag=O,tag=boss] if entity @e[tag=Jack,tag=boss] store result score Jack-O-max boss run scoreboard players operation Jack-max boss += O-max boss
# execute store result score Jack-O-now boss run scoreboard players operation Jack-now boss += O-now boss

# execute if entity @e[tag=Jack,tag=boss] store result bossbar minecraft:jack-o max run scoreboard players get Jack-O-max boss
# execute if entity @e[tag=Jack,tag=boss] store result bossbar minecraft:jack-o value run scoreboard players get Jack-O-now boss

# execute if entity @e[tag=O,tag=boss] store result bossbar minecraft:jack-o max run scoreboard players get Jack-O-max boss
# execute if entity @e[tag=O,tag=boss] store result bossbar minecraft:jack-o value run scoreboard players get Jack-O-now boss



execute as @e[tag=Jack,tag=boss] if score now-move boss-Jack-O matches ..250 run scoreboard players add now-move boss-Jack-O 1

execute as @e[tag=Jack,tag=boss] if score now-move boss-Jack-O matches ..250 run scoreboard players reset pos-z boss-Jack-O
execute as @e[tag=Jack,tag=boss] if score now-move boss-Jack-O matches ..250 run scoreboard players reset pos-y boss-Jack-O
execute as @e[tag=Jack,tag=boss] if score now-move boss-Jack-O matches ..250 run scoreboard players reset pos-z boss-Jack-O
execute as @e[tag=Jack,tag=boss] if score now-move boss-Jack-O matches ..250 run scoreboard players reset facing-z boss-Jack-O
execute as @e[tag=Jack,tag=boss] if score now-move boss-Jack-O matches ..250 run scoreboard players reset facing-y boss-Jack-O
execute as @e[tag=Jack,tag=boss] if score now-move boss-Jack-O matches ..250 run scoreboard players reset facing-z boss-Jack-O

execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] store result score pos-x boss-Jack-O run data get entity @s Pos[0] 100
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] store result score pos-y boss-Jack-O run data get entity @s Pos[1] 100
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] store result score pos-z boss-Jack-O run data get entity @s Pos[2] 100

execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] as @p store result score facing-x boss-Jack-O run data get entity @s Pos[0] 100
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] as @p store result score facing-y boss-Jack-O run data get entity @s Pos[1] 100
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] as @p store result score facing-z boss-Jack-O run data get entity @s Pos[2] 100

execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] run scoreboard players operation pos-x boss-Jack-O -= facing-x boss-Jack-O
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] run scoreboard players operation pos-y boss-Jack-O -= facing-y boss-Jack-O
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] run scoreboard players operation pos-z boss-Jack-O -= facing-z boss-Jack-O

execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250 unless entity @a[distance=..5] run particle minecraft:explosion_emitter ~ ~-1 ~ 1 0 1 0 1
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250 unless entity @a[distance=..5] run summon minecraft:creeper ~ ~-2 ~ {ExplosionRadius:0b,Fuse:0}
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250 unless entity @a[distance=..5] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 20 2
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250 unless entity @a[distance=..5] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 200 2 1
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250 unless entity @a[distance=..5] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 200 2 1
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250 unless entity @a[distance=..5] store result entity @s Motion[0] double -0.002 run scoreboard players get pos-x boss-Jack-O
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] store result entity @s Motion[1] double -0.01 run scoreboard players get pos-y boss
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250 unless entity @a[distance=..5] run data modify entity @s Motion[1] set value 1.5d
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250 unless entity @a[distance=..5] store result entity @s Motion[2] double -0.002 run scoreboard players get pos-z boss-Jack-O

execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..5] if data entity @s {OnGround:0b} run scoreboard players add now-move boss-Jack-O 1
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250..270 unless entity @a[distance=..5] if data entity @s {OnGround:0b} run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 30
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250..270 unless entity @a[distance=..5] if data entity @s {OnGround:0b} run particle dust 0 0.000 0.000 1 ~ ~ ~ 0.2 0.1 0.2 1 20

execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. unless entity @a[distance=..0] if data entity @s {OnGround:0b} run data modify entity @s Motion[1] set value -2.5d
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. unless entity @a[distance=..0] if data entity @s {OnGround:0b} run effect give @e[tag=boss] minecraft:jump_boost 1 255 true
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. unless entity @a[distance=..0] if data entity @s {OnGround:0b} run effect give @e[tag=boss] minecraft:strength 1 0 true

execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} run effect clear @e[tag=boss] minecraft:jump_boost
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} run effect clear @e[tag=boss] minecraft:strength
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} run particle minecraft:explosion_emitter ~ ~-1 ~ 1 0 1 0 10
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} run particle minecraft:large_smoke ~ ~ ~ 0 0.5 0 0.3 100
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} run particle minecraft:lava ~ ~ ~ 1.5 0 1.5 10 100
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} run summon minecraft:creeper ~ ~-2 ~ {ExplosionRadius:0b,Fuse:0}

execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.5,0.1,0.0],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.5,0.2,0.4],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.0,0.1,0.6],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.0,0.01,0.0],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[-0.5,0.1,0.0],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[-0.5,0.2,-0.4],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. if data entity @s {OnGround:1b} if predicate pred:20 run summon minecraft:potion ~ ~1 ~ {Glowing:1b,Team:"red",Motion:[0.0,0.1,-0.6],Tags:["jack-jump"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5177344,CustomPotionEffects:[{Id:19b,Amplifier:10b,Duration:10,ShowParticles:0b}]}}}
# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 270.. unless entity @a[distance=..5] if data entity @s {OnGround:1b} run scoreboard players set now-move boss-Jack-O 240
execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 251.. if data entity @s {OnGround:1b} run scoreboard players set now-move boss-Jack-O 140

execute as @e[tag=Jack,tag=boss] if data entity @s {OnGround:1b} run scoreboard players add now-run boss-Jack-O 1

execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 61.. run effect give @s minecraft:speed 1

execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 151.. run effect give @s minecraft:speed 1 2
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 151..250 run particle minecraft:flame ~ ~0.7 ~ 0.3 0.1 0.3 0 3
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 151..250 run particle minecraft:block minecraft:brown_concrete ~ ~ ~ 0.1 0 0.1 0 50
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 151 run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 200 2 1
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 151 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 166 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 170 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 190 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 200 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 220 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 230 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0
execute as @e[tag=Jack,tag=boss] at @s if score now-run boss-Jack-O matches 235 run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 5 0

execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 250.. run effect clear @s minecraft:speed
execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 250.. run effect give @s minecraft:slowness 1 3

execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 250 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 260 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 270 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 280 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 290 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 300 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 310 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2
# execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 320 run playsound minecraft:entity.player.breath master @a ~ ~ ~ 10 2

execute as @e[tag=Jack,tag=boss] if score now-run boss-Jack-O matches 300.. run scoreboard players set now-run boss-Jack-O 0

# execute as @e[tag=Jack,tag=boss] at @s if score now-move boss-Jack-O matches 250.. unless entity @a[distance=..3] run scoreboard players set now-move boss-Jack-O 0

# execute store result bossbar minecraft:jack-o max run data get entity @e[tag=Jack-O,tag=boss,limit=1] Attributes[0].Base
# execute store result bossbar minecraft:jack-o value run data get entity @e[tag=Jack-O,tag=boss,limit=1] Health

# bossbar add jack-o {"text":"Jack-O","color":"red","bold":true}
# bossbar set minecraft:jack-o color red
# bossbar set minecraft:jack-o players @a
# bossbar remove minecraft:jack-o

execute if entity @e[tag=O,tag=boss] if entity @e[tag=Jack,tag=boss] run bossbar set minecraft:jack-o players @a

execute if entity @e[tag=Jack,tag=boss] store result score Jack-max boss-Jack-O run data get entity @e[tag=boss,tag=Jack,limit=1] Attributes[0].Base
execute if entity @e[tag=O,tag=boss] store result score O-max boss-Jack-O run data get entity @e[tag=boss,tag=O,limit=1] Attributes[0].Base

execute store result score Jack-now boss-Jack-O run data get entity @e[tag=boss,tag=Jack,limit=1] Health
execute store result score O-now boss-Jack-O run data get entity @e[tag=boss,tag=O,limit=1] Health

execute if entity @e[tag=O,tag=boss] if entity @e[tag=Jack,tag=boss] store result score Jack-O-max boss-Jack-O run scoreboard players operation Jack-max boss-Jack-O += O-max boss-Jack-O
execute store result score Jack-O-now boss-Jack-O run scoreboard players operation Jack-now boss-Jack-O += O-now boss-Jack-O

execute if entity @e[tag=Jack,tag=boss] store result bossbar minecraft:jack-o max run scoreboard players get Jack-O-max boss-Jack-O
execute if entity @e[tag=Jack,tag=boss] store result bossbar minecraft:jack-o value run scoreboard players get Jack-O-now boss-Jack-O

execute if entity @e[tag=O,tag=boss] store result bossbar minecraft:jack-o max run scoreboard players get Jack-O-max boss-Jack-O
execute if entity @e[tag=O,tag=boss] store result bossbar minecraft:jack-o value run scoreboard players get Jack-O-now boss-Jack-O

execute unless entity @e[tag=boss,tag=Jack] unless entity @e[tag=boss,tag=O] run bossbar set minecraft:jack-o value 0




