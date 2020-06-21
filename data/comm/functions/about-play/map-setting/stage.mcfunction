

### 오너 UUID 감지 ###
	# execute as @e[x=-1,y=52,z=-994,dx=1,dy=1,dz=1,type=minecraft:arrow] run say 1

	# execute if score ready-player stage = player stage if entity @a[scores={stage=0}]

	# execute if score ready-player stage = player stage if entity @a[scores={stage=0}] as @a[tag=rd1] run data modify storage minecraft:uuid rd1Most set from entity @s UUIDMost
	# execute if score ready-player stage = player stage if entity @a[scores={stage=0}] as @a[tag=rd1] run data modify storage minecraft:uuid rd1Least set from entity @s UUIDLeast

	# execute if score ready-player stage = player stage if entity @a[scores={stage=0}] as @a[tag=rd2] run data modify storage minecraft:uuid rd2Most set from entity @s UUIDMost
	# execute if score ready-player stage = player stage if entity @a[scores={stage=0}] as @a[tag=rd2] run data modify storage minecraft:uuid rd2Least set from entity @s UUIDLeast

	# execute if score ready-player stage = player stage if entity @a[scores={stage=0}] as @a[tag=rd3] run data modify storage minecraft:uuid rd3Most set from entity @s UUIDMost
	# execute if score ready-player stage = player stage if entity @a[scores={stage=0}] as @a[tag=rd3] run data modify storage minecraft:uuid rd3Least set from entity @s UUIDLeast
####################



### rd3 오너 ###
	# data remove storage minecraft:rd-123 rd3.Air
	# data remove storage minecraft:rd-123 rd3.NoGravity
	# data remove storage minecraft:rd-123 rd3.Pos
	# data remove storage minecraft:rd-123 rd3.UUIDLeast
	# data remove storage minecraft:rd-123 rd3.UUIDMost
	# data remove storage minecraft:rd-123 rd3.pickup
	# data remove storage minecraft:rd-123 rd3.Tags
	# data remove storage minecraft:rd-123 rd3.crit
	# data remove storage minecraft:rd-123 rd3.SoundEvent
	# data remove storage minecraft:rd-123 rd3.FallDistance
	# data remove storage minecraft:rd-123 rd3.inGround
	# data remove storage minecraft:rd-123 rd3.shake
	# data remove storage minecraft:rd-123 rd3.life
	# data remove storage minecraft:rd-123 rd3.OnGround
	# data remove storage minecraft:rd-123 rd3.Fire
	# data remove storage minecraft:rd-123 rd3.ShotFromCrossbow
	# data remove storage minecraft:rd-123 rd3.damage
	# data remove storage minecraft:rd-123 rd3.Motion
	# data remove storage minecraft:rd-123 rd3.PierceLevel
	# data remove storage minecraft:rd-123 rd3.Dimension
	# data remove storage minecraft:rd-123 rd3.Rotation
###############


### 게임시작 ###





execute at @e[tag=clear-add-large] as @e[tag=door-hori,distance=..22] run tag @s add clear
execute at @e[tag=clear-add-large] as @e[tag=door-vert,distance=..22] run tag @s add clear
execute at @e[tag=clear-add-large] as @e[tag=door-hori,distance=..22] run tag @s remove close
execute at @e[tag=clear-add-large] as @e[tag=door-vert,distance=..22] run tag @s remove close
execute at @e[tag=close-add-large] as @e[tag=door-hori,distance=..22] run tag @s add close
execute at @e[tag=close-add-large] as @e[tag=door-vert,distance=..22] run tag @s add close

execute at @e[tag=clear-add] as @e[tag=door-hori,distance=..16] run tag @s add clear
execute at @e[tag=clear-add] as @e[tag=door-vert,distance=..16] run tag @s add clear
execute at @e[tag=clear-add] as @e[tag=door-hori,distance=..16] run tag @s remove close
execute at @e[tag=clear-add] as @e[tag=door-vert,distance=..16] run tag @s remove close
execute at @e[tag=close-add] as @e[tag=door-hori,distance=..16] run tag @s add close
execute at @e[tag=close-add] as @e[tag=door-vert,distance=..16] run tag @s add close

execute as @e[tag=door-vert,tag=clear,tag=!close] at @s run fill ~1 ~ ~ ~-2 ~3 ~ air destroy
execute as @e[tag=door-vert,tag=clear,tag=close] at @s run fill ~1 ~ ~ ~-2 ~3 ~ minecraft:polished_andesite
execute as @e[tag=door-hori,tag=clear,tag=!close] at @s run fill ~ ~ ~1 ~ ~3 ~-2 air destroy
execute as @e[tag=door-hori,tag=clear,tag=close] at @s run fill ~ ~ ~1 ~ ~3 ~-2 minecraft:polished_andesite

execute as @e[tag=door-vert] at @s if score @s door = player stage run tag @s add clear
execute as @e[tag=door-hori] at @s if score @s door = player stage run tag @s add clear
# execute as @e[tag=door-vert] at @s if score @s door = player stage run tag @s remove open
# execute as @e[tag=door-hori] at @s if score @s door = player stage run tag @s remove open

# execute as @e[tag=door-vert] at @s if score @s door > player stage run tag @s add open
# execute as @e[tag=door-hori] at @s if score @s door > player stage run tag @s add open

execute as @e[tag=map-all,tag=clear] at @s 

execute if score play-now stage matches 1.. at @a[tag=play-now] as @e[tag=map-all,limit=1,sort=nearest] if entity @s[tag=!event,tag=!center] run tag @s add now-play

execute as @e[tag=red-boss] run scoreboard players set result boss-now_health 0
execute as @e[tag=red-boss] run function comm:game-start/mob/boss/main/generic/set-value
execute if entity @e[tag=now-play,tag=!complete] if score time stage matches ..100 run scoreboard players add time stage 1
execute as @e[tag=now-play,tag=!complete] if score time stage matches ..60 at @s run function comm:about-play/map-setting/play/lock
execute as @e[tag=now-play,tag=!complete] if score time stage matches 62 at @s run function comm:about-play/map-setting/play/teleport
execute as @e[tag=now-play,tag=!complete] if score time stage matches 62 at @s run function comm:about-play/map-setting/play/sound
execute as @e[tag=now-play,tag=!complete] if score time stage matches 100.. at @s run function comm:about-play/map-setting/play/complete
