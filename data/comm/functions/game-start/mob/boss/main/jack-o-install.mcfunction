scoreboard objectives add boss-Jack-O dummy
bossbar remove minecraft:jack-o
bossbar add jack-o {"text":"Jack-O","color":"red","bold":true}
bossbar set minecraft:jack-o color red
bossbar set minecraft:jack-o players @a
# summon minecraft:husk ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"red",Health:150f,Tags:["boss","Jack"],Passengers:[{id:"minecraft:zombie",CustomNameVisible:0b,Team:"red",Health:70f,IsBaby:1b,Tags:["O","boss"],CustomName:'{"text":"O","color":"dark_red","bold":true,"italic":false}',HandItems:[{id:"minecraft:iron_hoe",Count:1b},{id:"minecraft:iron_hoe",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:jack_o_lantern",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:70}]}],CustomName:'{"text":"Jack","color":"dark_red","bold":true,"italic":false}',ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5188105}}},{id:"minecraft:carved_pumpkin",Count:1b}],Attributes:[{Name:generic.maxHealth,Base:150},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.27},{Name:generic.armor,Base:13},{Name:generic.attackKnockback,Base:4}]}
scoreboard players set now-move boss-Jack-O 0
scoreboard players set now-run boss-Jack-O 0


spreadplayers 37.5 -1032 2 1 true @a

