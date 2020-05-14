


### rd1 ###

	execute as @a[tag=rd1,scores={skill=1}] at @s run playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 
	execute as @a[tag=rd1,scores={skill=1}] run tellraw @a ["",{"selector":"@a[tag=rd1]"},{"text":"(이)가 "},{"text":"케논","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"달리면서 shift를 누르면 기술을 준비","color":"gray"}]}},{"text":"으로 다른이의 머리를 조준 중입니다!"}]

	execute as @a[tag=rd1,scores={skill=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["c-rd1"],Age:-2147483648}

	execute as @a[tag=rd1,scores={skill=1}] run scoreboard players set @s skill 2

	execute as @a[tag=rd1,scores={skill=2..}] at @s run tp @e[tag=c-rd1] ^ ^ ^1


	execute store result score rd1-Pos[x] motion run data get entity @a[tag=rd1,scores={skill=0..},limit=1] Pos[0] 100
	execute store result score rd1-Pos[y] motion run data get entity @a[tag=rd1,scores={skill=0..},limit=1] Pos[1] 100
	execute store result score rd1-Pos[z] motion run data get entity @a[tag=rd1,scores={skill=0..},limit=1] Pos[2] 100

	execute store result score rd1-facing[x] motion run data get entity @e[tag=c-rd1,limit=1] Pos[0] 100
	execute store result score rd1-facing[y] motion run data get entity @e[tag=c-rd1,limit=1] Pos[1] 100
	execute store result score rd1-facing[z] motion run data get entity @e[tag=c-rd1,limit=1] Pos[2] 100


	scoreboard players operation rd1-MotionX motion = rd1-Pos[x] motion
	scoreboard players operation rd1-MotionX motion -= rd1-facing[x] motion

	scoreboard players operation rd1-MotionY motion = rd1-Pos[y] motion
	scoreboard players operation rd1-MotionY motion -= rd1-facing[y] motion

	scoreboard players operation rd1-MotionZ motion = rd1-Pos[z] motion
	scoreboard players operation rd1-MotionZ motion -= rd1-facing[z] motion


	execute at @a[tag=rd1] as @e[tag=skill-arrow,scores={NO_G_arrow=1..5}] store result entity @s Motion[0] double -0.07 run scoreboard players get rd1-MotionX motion
	execute at @a[tag=rd1] as @e[tag=skill-arrow,scores={NO_G_arrow=1..5}] store result entity @s Motion[1] double -0.07 run scoreboard players get rd1-MotionY motion
	execute at @a[tag=rd1] as @e[tag=skill-arrow,scores={NO_G_arrow=1..5}] store result entity @s Motion[2] double -0.07 run scoreboard players get rd1-MotionZ motion

	execute as @a[tag=rd1,scores={skill=3..}] run xp add @s -25

	execute at @a[tag=rd1,scores={skill=3..}] anchored eyes run summon minecraft:arrow ~ ~1.35 ~ {Tags:["skill-arrow"],NoGravity:1b,crit:1b,damage:4.0d,Team:"blue",OwnerUUIDLeast:0L,OwnerUUIDMost:0L}

	execute at @a[tag=rd1] as @e[tag=skill-arrow] run data modify entity @s OwnerUUIDMost set from entity @a[tag=rd1,limit=1] UUIDMost
	execute at @a[tag=rd1] as @e[tag=skill-arrow] run data modify entity @s OwnerUUIDLeast set from entity @a[tag=rd1,limit=1] UUIDLeast

	execute at @a[tag=rd1] as @e[tag=skill-arrow,distance=..2,scores={NO_G_arrow=1..5}] store result entity @s[scores={NO_G_arrow=1..5}] Motion[0] double -0.1 run scoreboard players get rd1-MotionX motion
	execute at @a[tag=rd1] as @e[tag=skill-arrow,distance=..2,scores={NO_G_arrow=1..5}] store result entity @s[scores={NO_G_arrow=1..5}] Motion[1] double -0.1 run scoreboard players get rd1-MotionY motion
	execute at @a[tag=rd1] as @e[tag=skill-arrow,distance=..2,scores={NO_G_arrow=1..5}] store result entity @s[scores={NO_G_arrow=1..5}] Motion[2] double -0.1 run scoreboard players get rd1-MotionZ motion

	execute as @a[tag=rd1,scores={skill=3..}] at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.6 2
	execute as @a[tag=rd1,scores={skill=3..}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 5 0
	#execute as @a[tag=rd1,scores={skill=3..}] at @s anchored eyes run summon minecraft:creeper ^ ^0.6 ^0.5 {ExplosionRadius:-1b,Fuse:0}
	execute as @a[tag=rd1,scores={skill=3..}] run execute at @s run particle minecraft:smoke ^ ^1.5 ^-.7 0.01 .01 .01 0.01 10
	execute as @a[tag=rd1,scores={skill=3..}] run execute at @s run particle minecraft:block minecraft:black_concrete_powder ^ ^1.2 ^0.5 0 0 0 0.07 10

	execute as @e[tag=skill-arrow,scores={NO_G_arrow=1..20}] at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.07 10

	execute as @a[tag=rd1,scores={skill=3..}] run execute at @s run particle minecraft:lava ^ ^1.2 ^0.5 0 0 0 0.001 2

	execute as @a[tag=rd1,scores={skill=3..}] run scoreboard players set @s skill 2

	#execute as @a[tag=rd1,scores={skill=2..}] run effect give @s minecraft:glowing 1 0 true
	execute as @a[tag=rd1,scores={skill=2..}] run effect give @s minecraft:slowness 1 6 true
	execute as @a[tag=rd1,scores={skill=2..}] run effect give @s minecraft:jump_boost 1 250 true

	execute as @a[tag=rd1,scores={skill=..0}] run kill @e[tag=c-rd1]



### nd1 ###

	#execute store result score nd1-rotate motion run data get entity @a[tag=nd1,limit=1] Rotation.[0]
	scoreboard players set nd1-rotate motion 0

	execute as @a[tag=nd1,scores={skill=1}] run xp add @s -2 levels

	execute as @a[tag=nd1,scores={skill=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["c-nd1"],Age:-2147483648}
	execute as @a[tag=nd1,scores={skill=1}] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 5
	execute as @a[tag=nd1,scores={skill=1}] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 5 0
	execute as @a[tag=nd1,scores={skill=1}] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 5 2
	#execute as @a[tag=nd1,scores={skill=1}] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.2 1
	# execute as @a[tag=nd1,scores={skill=1}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 0
	# execute as @a[tag=nd1,scores={skill=1}] at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0
	execute as @a[tag=nd1,scores={skill=1}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0

	execute as @e[tag=c-nd1,scores={skill=3}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5
	execute as @e[tag=c-nd1,scores={skill=5}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5
	execute as @e[tag=c-nd1,scores={skill=7}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5
	execute as @e[tag=c-nd1,scores={skill=9}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5
	execute as @e[tag=c-nd1,scores={skill=11}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5
	execute as @e[tag=c-nd1,scores={skill=13}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5
	execute as @e[tag=c-nd1,scores={skill=15}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5

	execute as @e[tag=c-nd1] at @s run scoreboard players add @s skill 1
	execute anchored eyes as @a[tag=nd1,scores={skill=1}] at @s run tp @e[tag=c-nd1,limit=1,sort=nearest] @s
	execute store result entity @e[tag=c-nd1,limit=1,scores={skill=..1}] Rotation.[1] float 0 run scoreboard players get nd1-rotate motion
	#execute anchored eyes as @a[tag=nd1] at @s run data modify entity @e[tag=c-nd1,limit=1,sort=nearest] Rotation[1] set value 0
	#execute as @a[tag=nd1,scores={skill=1..}] at @s run tp @e[tag=c-nd1,limit=1,sort=nearest] @s
	#execute anchored eyes as @a[tag=nd1] at @s run tp @e[tag=c-nd1,limit=1,sort=nearest,scores={skill=..1}] @s
	execute anchored eyes as @e[tag=c-nd1,scores={skill=1}] at @s run particle minecraft:explosion ^ ^ ^1 0 0 0 0 4
	execute as @e[tag=c-nd1,scores={skill=1..}] at @s run tp ^ ^ ^0.2
	execute as @e[tag=c-nd1,scores={skill=1..3}] at @s run tp ^ ^ ^0.2
	execute as @e[tag=c-nd1,scores={skill=1..5}] at @s run tp ^ ^ ^0.2
	execute as @e[tag=c-nd1,scores={skill=1..7}] at @s run tp ^ ^ ^0.2
	execute as @e[tag=c-nd1,scores={skill=1..9}] at @s run tp ^ ^ ^0.2
	execute as @e[tag=c-nd1,scores={skill=9..12}] at @s run tp ^ ^ ^0.2
	#execute as @e[tag=c-nd1,scores={skill=1..10}] at @s run tp ^ ^ ^0.1
	#data modify entity @e[tag=c-nd1,limit=1,scores={skill=..1}] Rotation[1] set value 0
	execute as @e[tag=c-nd1,scores={skill=15..}] at @s run kill @s

	### 효과 ###


		### 중앙 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^ ^1 ^0.6 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^ ^1 ^0.9 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^ ^1 ^0.3 0.07 0 0.07 0 2
		### 중앙 끝 ###



		### 왼쪽1 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.3 ^1 ^0.5 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.3 ^1 ^0.8 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.3 ^1 ^0.2 0.07 0 0.07 0 2
		### 왼쪽1 끝

		### 오른쪽1 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.3 ^1 ^0.5 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.3 ^1 ^0.8 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.3 ^1 ^0.2 0.07 0 0.07 0 2
		### 오른쪽1 끝 ###



		### 왼쪽2 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.6 ^1 ^0.4 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.6 ^1 ^0.7 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.6 ^1 ^0.1 0.07 0 0.07 0 2
		### 왼쪽2 끝 ###

		### 오른쪽2 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.6 ^1 ^0.4 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.6 ^1 ^0.7 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.6 ^1 ^0.1 0.07 0 0.07 0 2
		### 오른쪽2 끝 ###



		### 왼쪽3 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.9 ^1 ^0.3 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.9 ^1 ^0.5 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^0.9 ^1 ^0.1 0.07 0 0.07 0 2
		### 왼쪽3 끝 ###

		### 오른쪽3 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.9 ^1 ^0.3 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.9 ^1 ^0.5 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-0.9 ^1 ^0.1 0.07 0 0.07 0 2
		### 오른쪽3 끝 ###



		### 왼쪽4 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^1.2 ^1 ^0.1 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^1.2 ^1 ^0.3 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^1.2 ^1 ^-0.1 0.07 0 0.07 0 2
		### 왼쪽4 끝 ###

		### 오른쪽4 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-1.2 ^1 ^0.1 0.07 0 0.07 0 2

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-1.2 ^1 ^0.3 0.07 0 0.07 0 2
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-1.2 ^1 ^-0.1 0.07 0 0.07 0 2
		### 오른쪽4 끝 ###



		### 왼쪽5 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^1.4 ^1 ^-0.1 0.07 0 0.07 0 2
		### 왼쪽5 끝 ###

		### 오른쪽5 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-1.4 ^1 ^-0.1 0.07 0 0.07 0 2
		### 오른쪽5 끝 ###



		### 왼쪽6 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^1.55 ^1 ^-0.4 0.07 0 0.07 0 2
		### 왼쪽6 끝 ###

		### 오른쪽6 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:enchanted_hit ^-1.55 ^1 ^-0.4 0.07 0 0.07 0 2
		### 오른쪽6 끝 ###
	###########

	## 효과 ###


		### 중앙 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^ ^1 ^0.6 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^ ^1 ^0.9 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^ ^1 ^0.3 0.07 0 0.07 0 10
		### 중앙 끝 ###



		### 왼쪽1 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.3 ^1 ^0.5 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.3 ^1 ^0.8 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.3 ^1 ^0.2 0.07 0 0.07 0 10
		### 왼쪽1 끝

		### 오른쪽1 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.3 ^1 ^0.5 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.3 ^1 ^0.8 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.3 ^1 ^0.2 0.07 0 0.07 0 10
		### 오른쪽1 끝 ###



		### 왼쪽2 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.6 ^1 ^0.4 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.6 ^1 ^0.7 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.6 ^1 ^0.1 0.07 0 0.07 0 10
		### 왼쪽2 끝 ###

		### 오른쪽2 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.6 ^1 ^0.4 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.6 ^1 ^0.7 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.6 ^1 ^0.1 0.07 0 0.07 0 10
		### 오른쪽2 끝 ###



		### 왼쪽3 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.9 ^1 ^0.3 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.9 ^1 ^0.5 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^0.9 ^1 ^0.1 0.07 0 0.07 0 10
		### 왼쪽3 끝 ###

		### 오른쪽3 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.9 ^1 ^0.3 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.9 ^1 ^0.5 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-0.9 ^1 ^0.1 0.07 0 0.07 0 10
		### 오른쪽3 끝 ###



		### 왼쪽4 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^1.2 ^1 ^0.1 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^1.2 ^1 ^0.3 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^1.2 ^1 ^-0.1 0.07 0 0.07 0 10
		### 왼쪽4 끝 ###

		### 오른쪽4 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-1.2 ^1 ^0.1 0.07 0 0.07 0 10

		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-1.2 ^1 ^0.3 0.07 0 0.07 0 10
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-1.2 ^1 ^-0.1 0.07 0 0.07 0 10
		### 오른쪽4 끝 ###



		### 왼쪽5 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^1.4 ^1 ^-0.1 0.07 0 0.07 0 10
		### 왼쪽5 끝 ###

		### 오른쪽5 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-1.4 ^1 ^-0.1 0.07 0 0.07 0 10
		### 오른쪽5 끝 ###



		### 왼쪽6 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^1.55 ^1 ^-0.4 0.07 0 0.07 0 10
		### 왼쪽6 끝 ###

		### 오른쪽6 ###
		execute anchored eyes at @e[tag=c-nd1] run particle minecraft:dust 0.2 0.5 0.9 0.5 ^-1.55 ^1 ^-0.4 0.07 0 0.07 0 10
		### 오른쪽6 끝 ###
	###########

	### 모션 ###
		scoreboard players set nd1-MotionY motion 1

		execute if score @a[tag=nd1,limit=1] skill matches 1.. store result score nd1-Pos[x] motion run data get entity @a[tag=nd1,scores={skill=1..},limit=1] Pos[0] 100
		execute if score @a[tag=nd1,limit=1] skill matches 1.. store result score nd1-Pos[z] motion run data get entity @a[tag=nd1,scores={skill=1..},limit=1] Pos[2] 100

		execute if score @a[tag=nd1,limit=1] skill matches 1.. at @a[tag=nd1] as @e[tag=c-nd1,limit=1,sort=nearest,distance=..2] store result score nd1-facing[x] motion run data get entity @s Pos[0] 100
		execute if score @a[tag=nd1,limit=1] skill matches 1.. at @a[tag=nd1] as @e[tag=c-nd1,limit=1,sort=nearest,distance=..2] store result score nd1-facing[z] motion run data get entity @s Pos[2] 100


		scoreboard players operation nd1-MotionX motion = nd1-Pos[x] motion
		scoreboard players operation nd1-MotionX motion -= nd1-facing[x] motion

		#scoreboard players operation nd1-MotionY motion = nd1-Pos[y] motion
		#scoreboard players operation nd1-MotionY motion -= nd1-facing[y] motion

		scoreboard players operation nd1-MotionZ motion = nd1-Pos[z] motion
		scoreboard players operation nd1-MotionZ motion -= nd1-facing[z] motion

		execute if score @a[tag=nd1,limit=1] skill matches 1.. at @a[tag=nd1] as @e[tag=c-nd1,limit=1,sort=nearest,distance=..2] store result score @s nd1-motion-0 run scoreboard players get nd1-MotionX motion
		execute if score @a[tag=nd1,limit=1] skill matches 1.. at @a[tag=nd1] as @e[tag=c-nd1,limit=1,sort=nearest,distance=..2] store result score @s nd1-motion-2 run scoreboard players get nd1-MotionZ motion
	###########

	#execute at @e[tag=c-nd1] as @e[team=red,distance=..2] at @s run playsound minecraft:block.anvil.hit master @a ~ ~ ~ 10 2
	execute at @e[tag=c-nd1] as @e[team=red,distance=..2] run effect give @s[tag=U] minecraft:instant_health 1 1
	execute at @e[tag=c-nd1] as @e[team=red,distance=..2] run effect give @s[tag=A] minecraft:instant_damage 1 1
	execute at @e[tag=c-nd1] as @e[team=red,distance=..2] store result entity @s Motion[0] double -0.005 run scoreboard players get @e[tag=c-nd1,limit=1,sort=nearest] nd1-motion-0
	execute at @e[tag=c-nd1] as @e[team=red,distance=..2] store result entity @s Motion[1] double 0.15 run scoreboard players get nd1-MotionY motion
	execute at @e[tag=c-nd1] as @e[team=red,distance=..2] store result entity @s Motion[2] double -0.005 run scoreboard players get @e[tag=c-nd1,limit=1,sort=nearest] nd1-motion-2

	execute as @a[tag=nd1,scores={skill=1..}] run scoreboard players set @s skill 0


### nd2 ###

	execute as @a[tag=nd2,scores={skill=1..3}] at @s run particle minecraft:enchant ~ ~ ~ 0.5 1 0.5 0 10
	execute as @a[tag=nd2,scores={skill=1..3}] at @s run particle minecraft:smoke ~ ~1 ~ 1 0 1 0 1
	execute as @a[tag=nd2,scores={skill=1}] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 0
	execute as @a[tag=nd2,scores={skill=1}] run xp add @s -2 levels
	execute as @a[tag=nd2,scores={skill=1}] at @s run scoreboard players set @s skill 2
	execute if predicate pred:thunder run scoreboard players add thunder skill 1
	execute if predicate pred:thunder run scoreboard players set @a[tag=nd2,scores={skill=2}] skill 3

	# execute as @a[tag=nd2,scores={skill=1}] run effect give @s minecraft:fire_resistance 1 1 true
	execute as @a[tag=nd2,scores={skill=3}] at @s run summon minecraft:lightning_bolt ~ 60 ~
	execute as @a[tag=nd2,scores={skill=3}] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10
	execute as @a[tag=nd2,scores={skill=3}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0.5 0 0.1 1000
	execute as @a[tag=nd2,scores={skill=3}] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 0
	execute as @a[tag=nd2,scores={skill=3}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0
	execute as @a[tag=nd2,scores={skill=3}] at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 0
	execute as @a[tag=nd2,scores={skill=3}] run tellraw @a ["",{"selector":"@a[tag=nd2]"},{"text":"(이)가 "},{"text":"천둥","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"달리면서 shift를 눌러서 천둥을 불러옴","color":"gray"}]}},{"text":"을 불러냈습니다!"}]
	execute as @a[tag=nd2,scores={skill=3}] at @s run replaceitem entity @s hotbar.0 minecraft:trident{HideFlags:62,CanDestroy:["minecraft:pumpkin","minecraft:cobweb"],Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:999,Operation:0,UUIDLeast:868870,UUIDMost:941826,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9,Operation:0,UUIDLeast:113610,UUIDMost:880668,Slot:"mainhand"}],Enchantments:[{id:"minecraft:loyalty",lvl:1s},{id:"minecraft:channeling",lvl:1s}]}

	execute as @a[tag=nd2,scores={skill=3}] if predicate pred:thunder run scoreboard players set @s skill 4

	execute as @a[tag=nd2,scores={skill=3}] at @s run replaceitem entity @s hotbar.0 minecraft:trident{HideFlags:62,CanDestroy:["minecraft:pumpkin","minecraft:cobweb"],Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:999,Operation:0,UUIDLeast:868870,UUIDMost:941826,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9,Operation:0,UUIDLeast:113610,UUIDMost:880668,Slot:"mainhand"}],Enchantments:[{id:"minecraft:loyalty",lvl:1s}]}

	# 효과
	execute as @a[tag=nd2,scores={skill=3..},gamemode=!spectator] at @s if predicate pred:thunder run particle entity_effect ~ ~0.8 ~ 0.020 0.835 1.000 1 0
	# execute as @a[tag=nd2,scores={skill=1..}] at @s run particle entity_effect ~0.5 ~1 ~0.5 0.020 0.835 1.000 1 0
	# execute as @a[tag=nd2,scores={skill=1..}] at @s run particle entity_effect ~0.5 ~1 ~ 0.020 0.835 1.000 1 0
	# execute as @a[tag=nd2,scores={skill=1..}] at @s run particle entity_effect ~ ~1 ~0.5 0.020 0.835 1.000 1 0
	# execute as @a[tag=nd2,scores={skill=1..}] at @s run particle entity_effect ~-0.5 ~1 ~-0.5 0.020 0.835 1.000 1 0
	# execute as @a[tag=nd2,scores={skill=1..}] at @s run particle entity_effect ~-0.5 ~1 ~ 0.020 0.835 1.000 1 0
	# execute as @a[tag=nd2,scores={skill=1..}] at @s run particle entity_effect ~ ~1 ~-0.5 0.020 0.835 1.000 1 0
	execute as @a[tag=nd2,scores={skill=1..}] as @e[type=minecraft:trident] if predicate pred:thunder if data entity @s Trident.tag.Enchantments[{id: "minecraft:loyalty"}] at @s run particle minecraft:dust 0.2 0.5 0.9 0.5 ~ ~ ~ 0.07 0 0.07 0 50
	execute as @a[tag=nd2,scores={skill=1..}] as @e[type=minecraft:trident] if predicate pred:thunder if data entity @s Trident.tag.Enchantments[{id: "minecraft:loyalty"}] at @s run particle minecraft:dust 0.2 0.2 12 0.5 ~ ~ ~ 0.07 0 0.07 0 30
	execute as @a[tag=nd2,scores={skill=1..}] as @e[type=minecraft:trident] if predicate pred:thunder if data entity @s Trident.tag.Enchantments[{id: "minecraft:loyalty"}] at @s run effect give @s minecraft:glowing
	execute as @a[tag=nd2,scores={skill=1..}] as @e[type=minecraft:trident] if predicate pred:thunder if data entity @s Trident.tag.Enchantments[{id: "minecraft:loyalty"}] if data entity @s {inGround:1b,Trident:{}} at @s run scoreboard players add @s skill 1
	execute as @a[tag=nd2,scores={skill=1..}] as @e[type=minecraft:trident] if predicate pred:thunder if data entity @s Trident.tag.Enchantments[{id: "minecraft:loyalty"}] if data entity @s {inGround:1b,Trident:{}} at @s[scores={skill=1}] run summon minecraft:lightning_bolt ~ ~ ~


	# execute if predicate pred:thunder if score thunder skill matches 1200.. run scoreboard players set @a[tag=nd2] skill 0
	execute if predicate pred:thunder if score thunder skill matches 1200.. run weather clear
	execute unless predicate pred:thunder as @a[tag=nd2,scores={skill=4..}] run scoreboard players add thunder skill 1
	execute unless predicate pred:thunder if score thunder skill matches 1360.. run scoreboard players set @a[tag=nd2] skill 0
	execute unless predicate pred:thunder if score thunder skill matches 1360.. run scoreboard players set thunder skill 0
	# execute unless predicate pred:thunder run scoreboard players set thunder skill 0
	# execute unless predicate pred:thunder run scoreboard players set @a[tag=nd2] skill 0


### rd2 ##

	execute as @a[tag=rd2,scores={skill=1},level=3..] at @s[scores={stage=1..}] run tellraw @a ["",{"selector":"@a[tag=rd2]"},{"text":"(이)가 "},{"text":"관통 연사","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"달리면서 shift를 눌러 15발을 한번에 장전","color":"gray"}]}},{"text":"가 되는 화살을 한꺼번에 15개나 장전했습니다!"}]

	execute as @a[tag=rd2,scores={skill=1},level=3..] run xp add @s -3 levels

	execute as @a[tag=rd2,scores={skill=1..9}] at @s run playsound minecraft:entity.player.attack.nodamage master @s ~ ~ ~ 3 2
	execute as @a[tag=rd2,scores={skill=1..9}] at @s run playsound minecraft:item.armor.equip_chain master @s ~ ~ ~ 1 0
	execute as @a[tag=rd2,scores={skill=1..9}] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.07 30
	execute as @a[tag=rd2,scores={skill=1..9}] at @s run particle minecraft:portal ~ ~1 ~ 0 0.5 0 0.5 50


	execute as @a[tag=rd2,scores={skill=1..9}] at @s run scoreboard players add @s skill 1

	# {CustomPotionEffects: [{Id: 31b}]}
	# execute as @e[type=minecraft:arrow] if data entity @s CustomPotionEffects[{Id: 31b}] run say 1
	# execute as @e[type=minecraft:trident] if data entity @s Trident run say 1
	# Inventory[{Slot:-106b}].tag.Damage
	# execute as @e[type=minecraft:trident] if data entity @s Trident.tag.Enchantments[{id: "minecraft:loyalty"}] run say 1

	execute as @a[tag=rd2,scores={skill=9}] at @s run replaceitem entity @s hotbar.0 minecraft:crossbow{Unbreakable:1b,Enchantments:[{id:"minecraft:piercing",lvl:99s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:31b,Amplifier:1b,Duration:1,ShowParticles:0b}],CustomPotionColor:0}},{},{}],Charged:1b} 1

	execute at @a[tag=rd2,scores={skill=10}] as @e[type=minecraft:arrow,limit=1,scores={NO_G_arrow=1..5}] at @s if data entity @s CustomPotionEffects run data modify storage minecraft:rd-123 rd2 merge from entity @s

	execute as @e[type=minecraft:arrow,limit=1,scores={NO_G_arrow=1..5}] at @s if data entity @s CustomPotionEffects run scoreboard players set @a[tag=rd2,scores={skill=10}] skill 11

	data remove storage minecraft:rd-123 rd2.Pos

	data remove storage minecraft:rd-123 rd2.UUIDLeast

	data remove storage minecraft:rd-123 rd2.UUIDMost

	data remove storage minecraft:rd-123 rd2.Tags

	data remove storage minecraft:rd-123 rd2.pickup

	execute at @a[tag=rd2,scores={skill=10}] as @e[type=minecraft:arrow,limit=1] at @s if data entity @s CustomPotionEffects run tag @s add rd2-skill



	execute as @a[tag=rd2,scores={skill=11}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1
	execute as @a[tag=rd2,scores={skill=11}] run scoreboard players add @s emmer 1

	### 소환 ###

		execute as @a[tag=rd2,scores={skill=15}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=15}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=15}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=20}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=20}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=20}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=25}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=25}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=25}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1



		execute as @a[tag=rd2,scores={skill=27}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=27}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=27}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=29}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=29}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=29}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=31}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=31}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=31}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=33}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=33}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=33}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1



		execute as @a[tag=rd2,scores={skill=34}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=34}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=34}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=35}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=35}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=35}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=36}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=36}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=36}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=37}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=37}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=37}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=38}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=38}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=38}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=39}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=39}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=39}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1

		execute as @a[tag=rd2,scores={skill=40}] at @s run summon minecraft:arrow ~ ~1.5 ~ {Tags:["rd2-skill-copy"],pickup:0b,damage:0d}
		execute as @a[tag=rd2,scores={skill=40}] at @s run playsound minecraft:item.crossbow.shoot master @s ~ ~ ~
		execute as @a[tag=rd2,scores={skill=40}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1
	###########

	data modify entity @e[tag=rd2-skill-copy,scores={NO_G_arrow=1..5},limit=1] {} merge from storage minecraft:rd-123 rd2

	execute as @a[tag=rd2,scores={skill=11..}] at @s run scoreboard players add @a[tag=rd2] skill 1

	execute as @a[tag=rd2,scores={skill=50..}] at @s run scoreboard players set @a[tag=rd2] skill 0

	execute as @a[tag=rd2,scores={skill=1..10}] at @s run kill @e[tag=rd2-skill-copy]

	execute as @a[tag=rd2,scores={skill=1..10}] at @s run kill @e[tag=rd2-skill]


### nd3 ###

	# scoreboard players set nd3-MotionY motion 15


	execute as @a[tag=nd3,scores={skill=2}] run effect give @s minecraft:levitation 1 60 true
	# execute as @a[tag=nd3,scores={skill=2}] at @s run playsound minecraft:item.elytra.flying master @a ~ ~ ~ 1 2

	execute as @a[tag=nd3,scores={skill=2..}] unless data entity @s {OnGround:1b} run scoreboard players add @s skill 1
	execute as @a[tag=nd3,scores={skill=2..20}] at @s run particle minecraft:lava ~ ~ ~ 0.3 0.7 0.3 0 10

	execute as @a[tag=nd3,scores={skill=5}] run effect clear @s minecraft:levitation
	execute as @a[tag=nd3,scores={skill=17}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 5 2
	execute as @a[tag=nd3,scores={skill=20}] run effect give @s minecraft:levitation 1 150 true

	# execute as @a[tag=nd3,scores={skill=20..}] run scoreboard players set @s skill 0
	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} run effect clear @s minecraft:levitation
	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~-2 ~ 0.7
	# execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} at @s run summon minecraft:creeper ~ ~-2 ~ {ExplosionRadius:0b,Fuse:0}
	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0
	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} at @s run particle minecraft:explosion_emitter ~ ~-1 ~ 2 0 2 0 5
	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} at @s run particle minecraft:smoke ~ ~ ~ 0 0.5 0 0.5 200
	# execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} run stopsound @a master minecraft:item.elytra.flying

	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} at @s as @e[team=red,distance=..5] run data modify entity @s Motion[1] set value 1.0d
	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} at @s as @e[team=red,distance=..5] run effect give @s[tag=U] minecraft:instant_health 1 1
	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} at @s as @e[team=red,distance=..5] run effect give @s[tag=A] minecraft:instant_damage 1 1


	execute as @a[tag=nd3,scores={skill=20..}] unless data entity @s {OnGround:0b} run scoreboard players set @s skill 0

	# execute as @a[tag=nd3,scores={skill=2}] at @s[scores={stage=1..}] anchored eyes run summon minecraft:creeper ^ ^0.6 ^0.5 {ExplosionRadius:-1b,Fuse:0}

	# execute as @a[tag=nd3,scores={skill=2}] at @s[scores={stage=1..}] anchored eyes run summon minecraft:area_effect_cloud ~ ~ ~  {Duration:-1,WaitTime:-2147483648,Tags:["c-nd3"],Age:-2147483648}
	# execute anchored eyes as @a[tag=nd3,scores={skill=2}] at @s run tp @e[tag=c-nd3,limit=1,sort=nearest] @s
	# data modify entity @e[tag=c-nd3,limit=1] Rotation[1] set value 0f

	# execute anchored eyes as @a[tag=nd3,scores={skill=2}] at @s run playsound minecraft:item.trident.riptide_1 master @s ~ ~ ~ 1 1
	# execute anchored eyes as @a[tag=nd3,scores={skill=2}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.6 1
	# execute anchored eyes as @a[tag=nd3,scores={skill=2..}] at @s run playsound minecraft:block.anvil.break master @s ~ ~ ~ 10 1

	# execute as @e[tag=c-nd3] at @s run tp ^ ^ ^1
	# execute as @e[tag=c-nd3] at @s run particle minecraft:block minecraft:black_concrete_powder ~ ~ ~ 1 0 1 0 300 
	# execute as @e[tag=c-nd3] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0 5 

	# execute as @a[tag=nd3,scores={skill=2}] at @s[scores={stage=1..}] run effect give @s minecraft:levitation 1 150 true
	# execute as @a[tag=nd3,scores={skill=6..}] at @s[scores={stage=1..}] run effect clear @s minecraft:levitation

	# execute if score @a[tag=nd3,limit=1] skill matches 1.. at @e[tag=c-nd3] as @e[team=red,distance=..3] run data modify entity @s Motion[1] set value 1.0
	# execute if score @a[tag=nd3,limit=1] skill matches 1.. at @e[tag=c-nd3] as @e[team=red,distance=..3] run effect give @s[tag=A] minecraft:instant_damage 1 1
	# execute if score @a[tag=nd3,limit=1] skill matches 1.. at @e[tag=c-nd3] as @e[team=red,distance=..3] run effect give @s[tag=U] minecraft:instant_health 1 1


	# execute as @a[tag=nd3,scores={skill=2..}] run scoreboard players add @s skill 1

	# execute as @a[tag=nd3,scores={skill=8..}] run kill @e[tag=c-nd3]
	# execute as @a[tag=nd3,scores={skill=8..}] run scoreboard players set @s skill 0


### rd3 ###

	data modify entity @e[tag=s-c-rd3,limit=1] Rotation[1] set value 0f

	execute as @a[tag=rd3,scores={skill=1}] run xp add @s -3 levels

	execute as @a[tag=rd3,scores={skill=1}] run tellraw @a ["",{"selector":"@a[tag=rd3]"},{"text":"(이)가 "},{"text":"마법","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"spacebar와 shift를 같이 누른 후 우클릭으로 시전","color":"gray"}]}},{"text":"을 사용니다!"}]

	execute as @a[tag=rd3,scores={skill=1}] run summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["s-c-rd3"],Age:-2147483648}

	execute anchored eyes as @a[tag=rd3,scores={skill=1}] at @s run tp @e[tag=s-c-rd3,limit=1,sort=nearest] @s


	### 기능 ###
		execute at @e[tag=s-c-rd3] as @e[team=red,distance=..5] run tag @s add skill-rd3

		# Position BH
		scoreboard objectives add pos dummy
		execute store result score holeX pos run data get entity @e[tag=s-c-rd3,limit=1] Pos[0] 1000000
		execute store result score holeY pos run data get entity @e[tag=s-c-rd3,limit=1] Pos[1] 1000000
		execute store result score holeZ pos run data get entity @e[tag=s-c-rd3,limit=1] Pos[2] 1000000

		# Position Entities
		scoreboard objectives add posX dummy
		scoreboard objectives add posY dummy
		scoreboard objectives add posZ dummy
		execute as @e[tag=skill-rd3] store result score @s posX run data get entity @s Pos[0] 1000000
		execute as @e[tag=skill-rd3] store result score @s posY run data get entity @s Pos[1] 1000000
		execute as @e[tag=skill-rd3] store result score @s posZ run data get entity @s Pos[2] 1000000

		# Find distance
		scoreboard players operation @e[tag=skill-rd3] posX -= holeX pos
		scoreboard players operation @e[tag=skill-rd3] posY -= holeY pos
		scoreboard players operation @e[tag=skill-rd3] posZ -= holeZ pos

		# Correct for amplification
		scoreboard objectives add int dummy
		scoreboard players set negOne int -1
		scoreboard players operation @e[tag=skill-rd3] posX *= negOne int
		scoreboard players operation @e[tag=skill-rd3] posY *= negOne int
		scoreboard players operation @e[tag=skill-rd3] posZ *= negOne int

		# Set motion
		scoreboard players set motionMult int 50
		scoreboard players operation @e[tag=skill-rd3] posX /= motionMult int
		scoreboard players operation @e[tag=skill-rd3] posY /= motionMult int
		scoreboard players operation @e[tag=skill-rd3] posZ /= motionMult int
		execute as @e[tag=skill-rd3] if score @a[tag=rd3,limit=1] skill matches 30.. store result entity @s Motion[0] double 0.000003 run scoreboard players get @s posX
		execute as @e[tag=skill-rd3] if score @a[tag=rd3,limit=1] skill matches 30.. store result entity @s Motion[1] double 0.000003 run scoreboard players get @s posY
		execute as @e[tag=skill-rd3] if score @a[tag=rd3,limit=1] skill matches 30.. store result entity @s Motion[2] double 0.000003 run scoreboard players get @s posZ
	###########


	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 1..3 run tp ^ ^0.25 ^1
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 4..7 run tp ^ ^0.125 ^0.5
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 8..12 run tp ^ ^0.0625 ^0.25

	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 1 run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 1 run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 0.2 0
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 4..50 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 0
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 25..50 run particle minecraft:witch ~ ~ ~ 2 2 2 1 9
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 20 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 34 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 37 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 38 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 44 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 48..60 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.5 2


	execute as @e[tag=s-c-rd3] at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 10
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 11..40 run particle minecraft:portal ~ ~ ~ 5 5 5 0.02 100
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 11..30 run particle minecraft:portal ~ ~ ~ 2 2 2 5 200
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 20..40 run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.01 10
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 11..25 run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 10 500
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 40..60 run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 1
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run particle minecraft:explosion ~ ~ ~ 0.7 0.7 0.7 0 5
		#execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;0],FadeColors:[I;0]}]}}}}
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:0b,Fuse:0}
	execute as @e[tag=skill-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run effect give @s[tag=U] minecraft:instant_health 1 1
	execute as @e[tag=skill-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run effect give @s[tag=A] minecraft:instant_damage 1 1
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~
	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run playsound minecraft:entity.firework_rocket.twinkle_far master @a ~ ~ ~ 

	execute as @a[tag=rd3,scores={skill=1..}] at @s run scoreboard players add @s skill 1


	execute as @a[tag=rd3,scores={skill=..0}] run kill @e[tag=s-c-rd3]
	execute as @a[tag=rd3,scores={skill=70..}] at @s run scoreboard players set @s skill 0
	execute as @a[tag=rd3,scores={skill=70..}] at @s run scoreboard players set @s skill 0
	execute as @a[tag=rd3,scores={skill=..0}] run tag @e remove skill-rd3

	execute at @e[tag=s-c-rd3] as @e[team=blue,distance=..5] if score @a[tag=rd3,limit=1] skill matches 20.. run effect give @s minecraft:absorption 1 50



