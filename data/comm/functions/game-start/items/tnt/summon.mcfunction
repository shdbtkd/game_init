scoreboard players remove @s p-tnt 1
function comm:game-start/items/itemself
scoreboard players remove @s d-tnt 1

tag @e[type=item,nbt={Item: {id: "minecraft:tnt"}},limit=1,sort=nearest] add summon-tnt
execute as @e[tag=summon-tnt] at @s run function comm:game-start/items/tnt/fuse

execute anchored eyes as @s at @s run summon minecraft:tnt ^ ^ ^ {Tags:["boom","default"],Glowing:1b,Fuse:50,CustomNameVisible:0b,CustomName:'{"text":"TNT"}'}
execute anchored eyes as @s at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 5 0
execute anchored eyes as @s at @s run playsound minecraft:entity.ender_eye.launch master @a ~ ~ ~ 2 0