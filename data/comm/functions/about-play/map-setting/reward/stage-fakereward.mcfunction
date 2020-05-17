summon minecraft:firework_rocket ~ ~2 ~ {LifeTime:18,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;3479244],FadeColors:[I;15550463]}]}}}}
summon minecraft:firework_rocket ~ ~2 ~ {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16730879],FadeColors:[I;16760333]}]}}}}

summon minecraft:tnt ^ ^ ^ {Motion:[0.0,0.4,0.0],Glowing:1b,Fuse:40,CustomNameVisible:0b,CustomName:'{"text":"TNT"}',Tags:["boom","default"]}
execute at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 5 0
kill @s