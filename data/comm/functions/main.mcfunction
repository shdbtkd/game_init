
execute as @a[scores={hurt=0}] at @s if data entity @s {OnGround: 1b} if block ~ ~ ~ #minecraft:can_death if block ~ ~1 ~ #minecraft:air_block unless block ~ ~-1 ~ #minecraft:none_hitbox-block run spawnpoint @s ~ ~ ~

### 인텝토리 ###
function comm:game-start/skill/skill
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:about-play/arrow-setting/hotbar
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:game-start/class/shop
##############

#function comm:about-play/map-setting/stage
function comm:about-play/map-setting/boss-enter


function comm:game-start/class/class
function comm:game-start/class/item

function comm:game-start/items/items-main

function comm:game-start/mob/basic
function comm:game-start/mob/boss/event/1stage-a
function comm:game-start/class/out
execute if score start map_lod matches 20.. run function comm:game-start/class/gameover

function comm:last
