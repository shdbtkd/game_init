# --------------------------------------- #
#   execute this command at every ticks
# --------------------------------------- #

execute as @a run function comm:about-play/arrow-setting/inventory/checker

execute as @e[tag=price] at @s run function comm:game-start/mob/price/basic

execute as @a[scores={hurt=0}] at @s align xz if data entity @s {OnGround: 1b} if block ~ ~ ~ #minecraft:can_death if block ~ ~1 ~ #minecraft:air_block unless block ~ ~-1 ~ #minecraft:none_hitbox-block run spawnpoint @s ~ ~ ~

### 인텝토리 ###
function comm:game-start/skill/skill

# execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:about-play/arrow-setting/hotbar
execute as @a if score @s inven_tab-type matches 1.. run function comm:about-play/arrow-setting/inventory/clear
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:game-start/class/shop
##############

function comm:game-start/class/class
function comm:game-start/class/event_actor

function comm:game-start/items/items-main

function comm:game-start/mob/basic
function comm:game-start/class/out
execute if score start map_lod matches 20.. run function comm:game-start/class/gameover

function comm:last
