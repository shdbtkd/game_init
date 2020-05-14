

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




### 스테이지 ###
	team add stage
	team join stage 스테이지:

	execute if score @a[limit=1] stage matches 0 run team modify stage suffix {"text":" none","color":"green","bold":"true"}

	execute if score @a[limit=1] stage matches 1 run team modify stage suffix {"text":" Tutorial","color":"gold","bold":"true"}

	execute if score @a[limit=1] stage matches 2 run team modify stage suffix {"text":" Desert","color":"gold","bold":"true"}
	execute if score @a[limit=1] stage matches 3 run team modify stage suffix {"text":" Overworld","color":"gold","bold":"true"}

	execute if score @a[limit=1] stage matches 4 run team modify stage suffix {"text":" Desert II","color":"gold","bold":"true"}
	execute if score @a[limit=1] stage matches 5 run team modify stage suffix {"text":" Overworld II","color":"gold","bold":"true"}

	execute if score @a[limit=1] stage matches 6 run team modify stage suffix {"text":" Dungeon","color":"gold","bold":"true"}
	execute if score @a[limit=1] stage matches 7 run team modify stage suffix {"text":" Cave","color":"gold","bold":"true"}

	execute if score @a[limit=1] stage matches 8 run team modify stage suffix {"text":" Dungeon II","color":"gold","bold":"true"}
	execute if score @a[limit=1] stage matches 9 run team modify stage suffix {"text":" Cave II","color":"gold","bold":"true"}
	
	execute if score @a[limit=1] stage matches 10 run team modify stage suffix {"text":" Glacier","color":"gold","bold":"true"}
	execute if score @a[limit=1] stage matches 11 run team modify stage suffix {"text":" Ocean","color":"gold","bold":"true"}
	
	execute if score @a[limit=1] stage matches 12 run team modify stage suffix {"text":" Glacier II","color":"gold","bold":"true"}
	execute if score @a[limit=1] stage matches 13 run team modify stage suffix {"text":" Ocean II","color":"gold","bold":"true"}

	execute if score @a[limit=1] stage matches 14 run team modify stage suffix {"text":" Mansion","color":"gold","bold":"true"}
	execute if score @a[limit=1] stage matches 15 run team modify stage suffix {"text":" Nether","color":"gold","bold":"true"}

	execute if score @a[limit=1] stage matches 16 run team modify stage suffix {"text":" Ender","color":"gold","bold":"true"}
	execute if score @a[limit=1] stage matches 17 run team modify stage suffix {"text":" Wither","color":"gold","bold":"true"}
	
#############



### 지도 ###
	team add box-t
	team add box-m
	team add box-b

	team modify box-t displayName {"text":"box-t","bold":"true"}
	team modify box-m displayName {"text":"box-m","bold":"true"}
	team modify box-m color gold
	team modify box-b displayName {"text":"box-b","bold":"true"}

	scoreboard players set ▨ out 7
	scoreboard players set ▩ out 6
	scoreboard players set ▧ out 5

	team join box-t ▨
	team join box-m ▩
	team join box-b ▧

	execute if score @a[limit=1] stage matches ..0 run team modify box-t prefix {"text":"     ▩ ▩ ","color":"white"}
	execute if score @a[limit=1] stage matches ..0 run team modify box-t suffix {"text":" ▩ ▩ ","color":"white"}

	execute if score @a[limit=1] stage matches ..0 run team modify box-m prefix {"text":"     ▩ ▩ ","color":"white"}
	execute if score @a[limit=1] stage matches ..0 run team modify box-m suffix {"text":" ▩ ▩ ","color":"white"}

	execute if score @a[limit=1] stage matches ..0 run team modify box-b prefix {"text":"     ▩ ▩ ","color":"white"}
	execute if score @a[limit=1] stage matches ..0 run team modify box-b suffix {"text":" ▩ ▩ ","color":"white"}
###########



### 스테이지 이름 ###

	execute if score @p stage matches 0 run scoreboard objectives modify out displayname {"text":"game is not strated","bold":"true","color":"green"}

	execute if score @p stage matches 1 run scoreboard objectives modify out displayname {"text":" |||| tutorial |||| ","bold":"true","color":"green"}

	execute if score @p stage matches 2 run scoreboard objectives modify out displayname {"text":" |||| STAGE [1] |||| ","bold":"true","color":"green"}
	execute if score @p stage matches 3 run scoreboard objectives modify out displayname {"text":" |||| STAGE [1] |||| ","bold":"true","color":"green"}

	execute if score @p stage matches 4 run scoreboard objectives modify out displayname {"text":" |||| STAGE [2] |||| ","bold":"true","color":"green"}
	execute if score @p stage matches 5 run scoreboard objectives modify out displayname {"text":" |||| STAGE [2] |||| ","bold":"true","color":"green"}

	execute if score @p stage matches 6 run scoreboard objectives modify out displayname {"text":" |||| STAGE [3] |||| ","bold":"true","color":"green"}
	execute if score @p stage matches 7 run scoreboard objectives modify out displayname {"text":" |||| STAGE [3] |||| ","bold":"true","color":"green"}

	execute if score @p stage matches 8 run scoreboard objectives modify out displayname {"text":" |||| STAGE [4] |||| ","bold":"true","color":"green"}
	execute if score @p stage matches 9 run scoreboard objectives modify out displayname {"text":" |||| STAGE [4] |||| ","bold":"true","color":"green"}

	execute if score @p stage matches 10 run scoreboard objectives modify out displayname {"text":" |||| STAGE [5] |||| ","bold":"true","color":"green"}
	execute if score @p stage matches 11 run scoreboard objectives modify out displayname {"text":" |||| STAGE [5] |||| ","bold":"true","color":"green"}

	execute if score @p stage matches 12 run scoreboard objectives modify out displayname {"text":" |||| STAGE [6] |||| ","bold":"true","color":"green"}
	execute if score @p stage matches 13 run scoreboard objectives modify out displayname {"text":" |||| STAGE [6] |||| ","bold":"true","color":"green"}

	execute if score @p stage matches 14 run scoreboard objectives modify out displayname {"text":" |||| STAGE [7] |||| ","bold":"true","color":"green"}
	execute if score @p stage matches 15 run scoreboard objectives modify out displayname {"text":" |||| STAGE [7] |||| ","bold":"true","color":"green"}

	execute if score @p stage matches 16 run scoreboard objectives modify out displayname {"text":" |||| STAGE [8] |||| ","bold":"true","color":"green"}
	execute if score @p stage matches 17 run scoreboard objectives modify out displayname {"text":" |||| STAGE [8] |||| ","bold":"true","color":"green"}

##################


### 카운트 ###
	team add count-player
	team join count-player 죽은사람:
############


############


###  ###

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
### 시작 ###
	# spreadplayers 0.0 -816.0 1 1 true @a


	# 플래이

		execute if score play-now stage matches 1.. at @a[tag=play-now] as @e[tag=map-all,limit=1,sort=nearest] if entity @s[tag=!event,tag=!center,tag=!boss] run tag @s add now-play

		# 시간
		execute if entity @e[tag=now-play,tag=!complete] if score time stage matches ..100 run scoreboard players add time stage 1

		# 시작
		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60 run summon armor_stand ~-0.5 69.5 ~-0.5 {Tags:["close-add"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
		execute as @e[tag=now-play,tag=!complete] at @s if score player stage = play-now stage if score time stage matches ..59 run summon armor_stand ~-0.5 69.5 ~-0.5 {Tags:["close-add"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
		execute as @e[tag=now-play,tag=!complete] at @s if score player stage = play-now stage if score time stage matches ..59 run scoreboard players set time stage 61

		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 1.. run fill ~15 64 ~15 ~-16 64 ~-16 minecraft:redstone_block replace air
		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 as @e[tag=door-hori,scores={door=1..},limit=1,sort=nearest,distance=..27] at @s run summon armor_stand ~2 72 ~ {Tags:["player-teleporter"],Invisible:1b}
		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 as @e[tag=door-hori,scores={door=1..},limit=1,sort=nearest,distance=..27] at @s run summon armor_stand ~-2 72 ~ {Tags:["player-teleporter"],Invisible:1b}

		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 as @e[tag=door-vert,scores={door=1..},limit=1,sort=nearest,distance=..27] at @s run summon armor_stand ~ 72 ~2 {Tags:["player-teleporter"],Invisible:1b}
		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 as @e[tag=door-vert,scores={door=1..},limit=1,sort=nearest,distance=..27] at @s run summon armor_stand ~ 72 ~-2 {Tags:["player-teleporter"],Invisible:1b}
		execute as @e[tag=player-teleporter] at @s unless block ~ 68 ~ minecraft:red_terracotta run kill @s
		# execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 run summon armor_stand ~-10 72 ~-0.5 {Tags:["player-teleporter"],Invisible:1b}

		# execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 run summon armor_stand ~-0.5 72 ~10 {Tags:["player-teleporter"],Invisible:1b}
		# execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 run summon armor_stand ~-0.5 72 ~-10 {Tags:["player-teleporter"],Invisible:1b}

		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 if score player stage > out-player stage as @a[tag=!play-now,scores={stage=1..}] at @s at @e[tag=player-teleporter,sort=nearest] run tp ~ ~ ~
		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 if score player stage > out-player stage as @a[tag=!play-now,scores={stage=1..}] at @s anchored eyes at @s run tp @s ~ ~ ~ facing entity @e[team=red,limit=1,sort=nearest] eyes
		execute as @e[tag=now-play,tag=!complete] at @s if score time stage matches 60..62 run kill @e[tag=player-teleporter]
		execute as @a[gamemode=!spectator] at @s if score time stage matches 62 at @e[tag=close,limit=1,sort=nearest] run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 4 0
		execute as @a[gamemode=!spectator] at @s if score time stage matches 62 at @e[tag=close,limit=1,sort=nearest] run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 5 0
		execute as @a[gamemode=!spectator] at @s if score time stage matches 62 run schedule function comm:about-play/map-setting/sound/doorlocked 8t

		# 끝

		execute if score time stage matches 100.. if score red stage matches ..0 as @e[tag=now-play,tag=!complete,tag=!now-end] run tag @s add complete

		execute if score time stage matches 100.. if score red stage matches ..0 as @e[tag=now-play,tag=complete,tag=!now-end] at @s run tag @e[tag=close-add,limit=1,sort=nearest] add clear-add
		execute if score time stage matches 100.. if score red stage matches ..0 as @e[tag=now-play,tag=complete,tag=!now-end] at @s run tag @e[tag=close-add,limit=1,sort=nearest] remove close-add
		execute if score time stage matches 100.. if score red stage matches ..0 as @e[tag=now-play,tag=complete,tag=!now-end] run scoreboard players set time stage 102

		execute if score time stage matches 100.. if score red stage matches ..0 as @e[tag=now-play,tag=complete,tag=!now-end] at @s run function comm:about-play/map-setting/stage-complete

########### summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b}  effect give @e[tag=map-all,limit=1,sort=nearest] minecraft:glowing

# fill ~15 64 ~15 ~-16 64 ~-16
