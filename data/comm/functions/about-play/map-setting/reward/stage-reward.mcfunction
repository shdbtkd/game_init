summon minecraft:firework_rocket ~ ~2 ~ {LifeTime:18,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;3479244],FadeColors:[I;15550463]}]}}}}
summon minecraft:firework_rocket ~ ~2 ~ {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16730879],FadeColors:[I;16760333]}]}}}}

execute if predicate pred:30 run loot spawn ~ ~ ~ loot playerheadtricks:emerald/emerald
execute if predicate pred:50 run summon minecraft:experience_bottle ~ ~ ~ {Motion: [0.0d, 0.3d, 0.0d]}

execute if predicate pred:15 run loot spawn ~ ~ ~ loot playerheadtricks:potion/rewardpotion

kill @s