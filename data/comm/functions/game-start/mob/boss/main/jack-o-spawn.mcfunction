scoreboard players add spawn boss-Jack-O 1

execute if score spawn boss-Jack-O matches 1 run effect give @a minecraft:slowness 3 10 true
execute if score spawn boss-Jack-O matches 1 run effect give @a minecraft:jump_boost 3 250 true
execute if score spawn boss-Jack-O matches 1 run summon minecraft:armor_stand 38.0 150 -1013.0 {Invisible:1b,Tags:["Jack-O-spawner"],Small:1b}

execute if data entity @e[tag=Jack-O-spawner,limit=1] {OnGround:0b} at @e[tag=Jack-O-spawner,limit=1] run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;0],FadeColors:[I;16578551]}]}}}}
execute if entity @e[tag=Jack-O-spawner,limit=1] as @a at @s run tp @s ~ ~ ~ facing entity @e[tag=Jack-O-spawner,limit=1]

execute as @e[tag=Jack-O-spawner,limit=1] if data entity @s {OnGround:1b} if score spawn boss-Jack-O matches 60.. at @s run summon minecraft:husk ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"red",Health:150f,Tags:["boss","Jack"],Passengers:[{id:"minecraft:zombie",CustomNameVisible:0b,Team:"red",Health:70f,IsBaby:1b,Tags:["O","boss"],CustomName:'{"text":"O","color":"dark_red","bold":true,"italic":false}',HandItems:[{id:"minecraft:iron_hoe",Count:1b},{id:"minecraft:iron_hoe",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:jack_o_lantern",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:70}]}],CustomName:'{"text":"Jack","color":"dark_red","bold":true,"italic":false}',ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5188105}}},{id:"minecraft:carved_pumpkin",Count:1b}],Attributes:[{Name:generic.maxHealth,Base:150},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.27},{Name:generic.armor,Base:13},{Name:generic.attackKnockback,Base:4}]}
execute as @e[tag=Jack-O-spawner,limit=1] if data entity @s {OnGround:1b} if score spawn boss-Jack-O matches 60.. at @s run particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 1 5
execute as @e[tag=Jack-O-spawner,limit=1] if data entity @s {OnGround:1b} if score spawn boss-Jack-O matches 60.. at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 0.5 0.1 0.2 200
execute as @e[tag=Jack-O-spawner,limit=1] if data entity @s {OnGround:1b} if score spawn boss-Jack-O matches 60.. at @s run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 200 2 1
execute as @e[tag=Jack-O-spawner,limit=1] if data entity @s {OnGround:1b} if score spawn boss-Jack-O matches 60.. at @s run setblock ~ ~ ~ air
execute if data entity @e[tag=Jack-O-spawner,limit=1] {OnGround:1b} if score spawn boss-Jack-O matches 60.. run kill @e[tag=Jack-O-spawner]

# scoreboard players add spawn boss-Jack-O 1

# tp @s ~ ~ ~ facing entity @e[tag=boss,limit=1]

# execute if entity @p[gamemode=adventure,distance=..12] run function comm:game-start/mob/boss/main/jack-o-spawn
# function comm:game-start/mob/boss/main/jack-o