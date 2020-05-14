
execute as @a[gamemode=!spectator,scores={emmer-time=1..10}] run title @s subtitle {"text":"-","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=11..20}] run title @s subtitle {"text":"--","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=21..30}] run title @s subtitle {"text":"---","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=31..40}] run title @s subtitle {"text":"----","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=41..50}] run title @s subtitle {"text":"-----","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=51..60}] run title @s subtitle {"text":"------","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=61..70}] run title @s subtitle {"text":"-------","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=71..80}] run title @s subtitle {"text":"--------","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=81..90}] run title @s subtitle {"text":"---------","color":"gray"}
execute as @a[gamemode=!spectator,scores={emmer-time=91..100}] run title @s subtitle {"text":"----------","color":"gray"}

execute as @a[scores={emmer-time=1..},gamemode=!spectator] run title @a title {"text":""}
execute if score start map_lod matches 15..19 as @a[scores={emmer-time=..0},gamemode=!spectator] run title @s clear

execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=20}] run title @s[scores={emmer-time=15..}] subtitle {"text":"--","color":"green"}
execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=30}] run title @s[scores={emmer-time=25..}] subtitle {"text":"---","color":"green"}
execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=40}] run title @s[scores={emmer-time=35..}] subtitle {"text":"----","color":"green"}
execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=50}] run title @s[scores={emmer-time=45..}] subtitle {"text":"-----","color":"green"}
execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=60}] run title @s[scores={emmer-time=55..}] subtitle {"text":"------","color":"green"}
execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=70}] run title @s[scores={emmer-time=65..}] subtitle {"text":"-------","color":"green"}
execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=80}] run title @s[scores={emmer-time=75..}] subtitle {"text":"--------","color":"green"}
execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=90}] run title @s[scores={emmer-time=85..}] subtitle {"text":"---------","color":"green"}
execute as @a[gamemode=!spectator,scores={stage=1..}] at @s[scores={max-ammo-time=100}] run title @s[scores={emmer-time=95..}] subtitle {"text":"----------","color":"green"}

execute as @a at @s if entity @s[scores={stage=1..}] run scoreboard players add @s emmer 0
execute as @a[scores={stage=1..}] at @s if score @s max-ammo > @s emmer run scoreboard players add @s emmer-time 1
execute as @a[scores={stage=1..}] at @s if score @s max-ammo-time <= @s emmer-time run scoreboard players add @s emmer 1
execute as @a[scores={stage=1..}] at @s if score @s max-ammo-time <= @s emmer-time run scoreboard players set @s emmer-time 0

execute as @a if score @s max-ammo <= @s emmer run scoreboard players set @s emmer-time 0