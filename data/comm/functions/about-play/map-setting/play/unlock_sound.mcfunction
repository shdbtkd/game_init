execute as @a[gamemode=!spectator] at @s at @e[tag=close,limit=1,sort=nearest] run playsound minecraft:block.grindstone.use block @s ~ ~ ~ 4 0
execute as @a at @s run playsound minecraft:block.chest.locked block @s ~ ~ ~ 2 0 1
#execute as @a[gamemode=!spectator] at @s at @e[tag=close,limit=1,sort=nearest] run playsound minecraft:entity.player.attack.knockback block @a ~ ~ ~ 5 0
# execute as @a[gamemode=!spectator] at @s run schedule function comm:about-play/map-setting/sound/doorlocked 8t
