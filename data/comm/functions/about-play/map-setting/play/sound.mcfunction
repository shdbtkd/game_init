execute as @a[gamemode=!spectator] at @s at @e[tag=close,limit=1,sort=nearest] run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 4 0
execute as @a[gamemode=!spectator] at @s at @e[tag=close,limit=1,sort=nearest] run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 5 0
execute as @a[gamemode=!spectator] at @s run schedule function comm:about-play/map-setting/sound/doorlocked 8t
