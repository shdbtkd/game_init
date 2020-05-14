scoreboard players set @s item-index 0
# data merge entity @s {Motion:[0.0d, 1.0d, 0.0d]}
execute if data entity @s Item.tag{item:1b,hero:1b} run data merge entity @s {Glowing:1b}
execute if data entity @s Item.tag{item:1b,hero:1b} run team join blue

execute if predicate pred:20 run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:vanishing_curse",lvl:1s}
execute if predicate pred:20 run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:binding_curse",lvl:1s}

execute if data entity @s Item.tag{item:1b,hero:1b} run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;8913151,15416319,16712610,12779775],FadeColors:[I;16777215]}]}}}}
execute if data entity @s Item.tag{item:1b,hero:0b} run