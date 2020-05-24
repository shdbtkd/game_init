### 가설 ###
	#
	#	가운데에 center 소환 (소환후 검정색으로 바꿈)
	#	가운데에 loader 소환
	#	
	#	loader 4방향 tester 소환 (무조건 빨간색 콘크리트 위에다가)
	#	center아래에 loader가 있으면 loader를 죽임
	#	100% 4개중에 1개 소환   (tag=loader)
	#	50%  4개중에 1개 더 소환 (tag=loader)
	#	50%  4개중에 1개 더 소환 (tag=loader)
	#	50%  4개중에 1개 더 소환 (tag=loader)
	#
	#
	#	loaderd와 가까운 tester죽임
	#
	#	loader 4방향 tester 소환 (무조건 빨간색 콘크리트 위에다가)
	#
	#
	#  문여는거
	#
	#	execute as @e[tag=checker] at @s run tag @a[distance=..5] add ready
	#	execute as @e[tag=checker] at @s run tag @a[distance=5..7] remove ready
	#
	#
	#	execute as @e[tag=checker] at @s store result score @s stage if entity @a[tag=ready,distance=..5]
	#
	#	@s = player 라면 부수기
	#
	#	가장 가까운 [loader] 에게 [clear] 태그가 없어야함 / 클리어하면 문이 사라짐
	#
	#
	#
	#---------- 2차 컨펌 ----------#
	#	아이작처럼 4개 다 열린방, 3개 열린방, 2개 열린방, 1개 열린 방 따로 디자인
	#		- 1stage 리 디자인
	#			- 어느 방향으로 돌려도 던전과 던전을 이어주는 길이 맞아 떨어져야함
	#
	#		- 맵 로딩 방법
	#			- 4개, 3개, 2개, 1개 방의 개수를 다 똑같이 해서 뒤에 수식어만 붙여서 로딩
	#			- 새로운 스코어 보드 추가
	#				( 통로갯수 새는거, 동 서 남 북 boolean )
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
###########

# 1~2stage = desert, mesa
#	- desert 		= stage 2	||| 1stage
#	- mesa 			= stage 3	||| 1stage
#	- desert II 	= stage 4	||| 2stage
#	- mesa II 		= stage 5	||| 2stage

# 3~4stage = dungeon, cave
#	- dungeon 		= stage 6	||| 3stage
#	- cave	 		= stage 7	||| 3stage
#	- dungeon II	= stage 8	||| 4stage
#	- cave II		= stage 9	||| 4stage

# 5~6stage = ice, water
#	- ice		 	= stage 10	||| 5stage
#	- water		 	= stage 11	||| 5stage
#	- ice II		= stage 10	||| 6stage
#	- water II		= stage 11	||| 6stage

# 7stage = mansion, nether
#	- mansion	 	= stage 12	||| 7stage
#	- nether	 	= stage 13	||| 7stage

# 8stage = end
#	- end		 	= stage 14	||| 8stage


### 카운트 ###

	
############


### 시작 ###
	# item selector
	
	
	# item selector

	

	# boss stage delet // 삭제해야함
	# execute if score start map_lod matches ..1 run setblock 32 61 -1024 minecraft:structure_block{name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
	# execute if score start map_lod matches ..1 run setblock 32 62 -1024 redstone_block

	# execute if score start map_lod matches ..1 run setblock 16 61 -1024 minecraft:structure_block{name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
	# execute if score start map_lod matches ..1 run setblock 16 62 -1024 redstone_block

	# execute if score start map_lod matches ..1 run setblock 32 61 -1040 minecraft:structure_block{name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
	# execute if score start map_lod matches ..1 run setblock 32 62 -1040 redstone_block

	# execute if score start map_lod matches ..1 run setblock 16 61 -1040 minecraft:structure_block{name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
	# execute if score start map_lod matches ..1 run setblock 16 62 -1040 redstone_block

	# execute if score start map_lod matches ..1 run setblock 16 60 -1040 minecraft:structure_block{name:"basic-air",posY:0,mode:"LOAD"}
	# execute if score start map_lod matches ..1 run setblock 16 61 -1040 redstone_block
	# boss stage delet // 삭제해야함

	# execute if score start map_lod matches ..1 as @e[tag=center] at @s run setblock ~-16 62 ~-16 minecraft:air
	# execute if score start map_lod matches ..1 as @e[tag=map-all] at @s[tag=!big] unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:air run setblock ~-16 62 ~16 minecraft:air
	# execute if score start map_lod matches ..1 as @e[tag=map-all] at @s[tag=!big] unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ air run setblock ~16 62 ~-16 minecraft:air

	


	execute if score start map_lod matches ..1 run function comm:about-play/map-setting/load/clear_stage
	execute if score start map_lod matches ..1 run function comm:about-play/map-setting/load/clear_stage
	execute if score start map_lod matches 1.. run function comm:about-play/map-setting/load/generic_count

	#---------- 시작 ----------#
	#			센터 소환
	execute if score start map_lod matches 1 run summon minecraft:armor_stand 0 51 -816 {Tags:["center","map-all"]}
	execute if score start map_lod matches 1 as @e[tag=center] run function comm:about-play/map-setting/load/stage/summon_tester
	#			센터 소환
	#			센터 주변에 확률적으로 loader 소환
	execute if score start map_lod matches 1 run function comm:about-play/map-setting/load/generic_count
	execute if score start map_lod matches 1 at @e[tag=center] as @e[tag=tester,sort=random,limit=1] at @s run function comm:about-play/map-setting/load/stage/summon_loader
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_loader
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_loader
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:loot run function comm:about-play/map-setting/load/stage/summon_loader
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	#			센터 주변에 확률적으로 loader 소환
	#			main road
	execute if score start map_lod matches 1 run function comm:about-play/map-setting/load/generic_count
	execute if score start map_lod matches 1 as @e[tag=loader,tag=!end-tester,sort=random,limit=1] at @s run function comm:about-play/map-setting/load/stage/main_road
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	#			main road
	#			more road
	execute if score start map_lod matches 1 run function comm:about-play/map-setting/load/generic_count
	execute if score start map_lod matches 1 as @e[tag=loader] at @s run function comm:about-play/map-setting/load/stage/summon_tester
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_loader
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_loader
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	#			more road
	#			event
	execute if score start map_lod matches 1 as @e[tag=map-all,tag=loader,tag=!event,scores={stage-road_count=..3}] at @s run function comm:about-play/map-setting/load/stage/summon_tester
	execute if score start map_lod matches 1 run function comm:about-play/map-setting/load/generic_count
	execute if score start map_lod matches 1 at @e[tag=center] as @e[tag=tester,sort=furthest,limit=1] at @s run function comm:about-play/map-setting/load/stage/summon_boss
	execute if score start map_lod matches 1 run function comm:about-play/map-setting/load/generic_count
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	execute if score start map_lod matches 1 as @e[tag=map-all,tag=loader,tag=!event,scores={stage-road_count=..3},sort=random,limit=1] at @s run function comm:about-play/map-setting/load/stage/sub_road
	execute if score start map_lod matches 1 run function comm:about-play/map-setting/load/generic_count
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	execute if score start map_lod matches 1 as @e[tag=map-all,tag=!event,tag=loader,scores={stage-road_count=..3}] at @s run function comm:about-play/map-setting/load/stage/summon_tester
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_event
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_event
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	#			event
	#			boss, hide
	execute if score start map_lod matches 1 as @e[tag=map-all,tag=!event,tag=!boss,scores={stage-road_count=..3}] at @s run function comm:about-play/map-setting/load/stage/summon_tester
	execute if score start map_lod matches 1 at @e[tag=center] as @e[tag=tester,sort=random,limit=1] at @s if predicate pred:50 run function comm:about-play/map-setting/load/stage/summon_hide
	execute if score start map_lod matches 1 at @e[tag=center] as @e[tag=tester,sort=random,limit=1] at @s if predicate pred:50 run function comm:about-play/map-setting/load/stage/summon_hide
	execute if score start map_lod matches 1 at @e[tag=center] as @e[tag=tester,sort=random,limit=1] at @s if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_hide
	execute if score start map_lod matches 1 at @e[tag=center] as @e[tag=tester,sort=random,limit=1] at @s if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_hide
	execute if score start map_lod matches 1 at @e[tag=center] as @e[tag=tester,sort=random,limit=1] at @s if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_hide
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	#			boss, hide
	#---------- 시작 ----------#

	
	execute if score start map_lod matches 1 run scoreboard players set start map_lod 2
	execute if score start map_lod matches 2 as @e[tag=map-all] at @s run function comm:about-play/map-setting/load/base-set

	execute if score start map_lod matches 2 run scoreboard players set start map_lod 3
	execute if score start map_lod matches 3 as @e[tag=loader,tag=!event,tag=!loaded,sort=random,limit=1] at @s run function comm:about-play/map-setting/load/generic_stage-type-filter
	execute if score start map_lod matches 3 run schedule function comm:about-play/map-setting/load/schedule/battle-return 10t
	execute if score start map_lod matches 3 run scoreboard players set start map_lod 4

	execute if score start map_lod matches 5 as @e[tag=loader,tag=event,tag=!end-event,sort=random,limit=1] at @s run function comm:about-play/map-setting/load/event-set
	execute if score start map_lod matches 5 run schedule function comm:about-play/map-setting/load/schedule/event-return 10t
	execute if score start map_lod matches 5 run scoreboard players set start map_lod 6

	execute if score start map_lod matches 7 run schedule function comm:about-play/map-setting/load/generic_boss-type-filter 10t
	execute if score start map_lod matches 7 run schedule function comm:about-play/map-setting/load/schedule/loading_other 20t
	execute if score start map_lod matches 7 run scoreboard players set start map_lod 8
	
	execute if score start map_lod matches 9 as @e[tag=event] run scoreboard players add @s event-type 0
	execute if score start map_lod matches 9 as @e[tag=event,sort=random,limit=1,scores={event-type=..0}] run scoreboard players set @s event-type 1
	execute if score start map_lod matches 9 run scoreboard players set start map_lod 10

	execute if score start map_lod matches 10 run schedule function comm:about-play/map-setting/load/schedule/event-type 2t
	execute if score start map_lod matches 10 run scoreboard players set start map_lod 11
	
### 문열기 ###

	execute if score start map_lod matches 13 as @e[tag=map-all,tag=!boss] at @s if block ~ ~-1 ~48 #minecraft:door_tracking run summon armor_stand ~-.5 71 ~15 {Tags:["door-vert"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all,tag=!boss] at @s if block ~ ~-1 ~-48 #minecraft:door_tracking run summon armor_stand ~-.5 71 ~-16 {Tags:["door-vert"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all,tag=!boss] at @s if block ~48 ~-1 ~ #minecraft:door_tracking run summon armor_stand ~15 71 ~-0.5 {Tags:["door-hori"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all,tag=!boss] at @s if block ~-48 ~-1 ~ #minecraft:door_tracking run summon armor_stand ~-16 71 ~-0.5 {Tags:["door-hori"],Invisible:1b,Invulnerable:1b,Small:1b}

	execute if score start map_lod matches 13 as @e[tag=map-all,tag=boss] at @s if block ~ ~-1 ~48 #minecraft:door_tracking run summon armor_stand ~-.5 71 ~21 {Tags:["door-vert"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all,tag=boss] at @s if block ~ ~-1 ~-48 #minecraft:door_tracking run summon armor_stand ~-.5 71 ~-22 {Tags:["door-vert"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all,tag=boss] at @s if block ~48 ~-1 ~ #minecraft:door_tracking run summon armor_stand ~21 71 ~-0.5 {Tags:["door-hori"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all,tag=boss] at @s if block ~-48 ~-1 ~ #minecraft:door_tracking run summon armor_stand ~-22 71 ~-0.5 {Tags:["door-hori"],Invisible:1b,Invulnerable:1b,Small:1b}

	### 문 없에기 ###

		# # 1stage
		# execute if score start map_lod matches 13 if entity @a[scores={stage=1}] as @e[tag=map-all,tag=!big] at @s if block ~ ~-1 ~48 minecraft:red_concrete run setblock ~-16 60 ~-16 minecraft:structure_block{name:"1stage-block-top",posX:11,posY:10,posZ:29,mode:"LOAD"}
		# execute if score start map_lod matches 13 if entity @a[scores={stage=1}] as @e[tag=map-all,tag=!big] at @s if block ~ ~-1 ~48 minecraft:red_concrete run setblock ~-16 60 ~-15 redstone_block

		# execute if score start map_lod matches 13 if entity @a[scores={stage=1}] as @e[tag=map-all] at @s if block ~-48 ~-1 ~ minecraft:red_concrete run setblock ~-16 59 ~-16 minecraft:structure_block{name:"1stage-block-right",posX:0,posY:11,posZ:11,mode:"LOAD"}
		# execute if score start map_lod matches 13 if entity @a[scores={stage=1}] as @e[tag=map-all] at @s if block ~-48 ~-1 ~ minecraft:red_concrete run setblock ~-16 59 ~-15 redstone_block

		# execute if score start map_lod matches 13 if entity @a[scores={stage=1}] as @e[tag=map-all] at @s if block ~ ~-1 ~-48 minecraft:red_concrete run setblock ~-16 58 ~-16 minecraft:structure_block{name:"1stage-block-bottom",posX:11,posY:12,posZ:0,mode:"LOAD"}
		# execute if score start map_lod matches 13 if entity @a[scores={stage=1}] as @e[tag=map-all] at @s if block ~ ~-1 ~-48 minecraft:red_concrete run setblock ~-16 58 ~-15 redstone_block

		# execute if score start map_lod matches 13 if entity @a[scores={stage=1}] as @e[tag=map-all,tag=!big] at @s if block ~48 ~-1 ~ minecraft:red_concrete run setblock ~-16 57 ~-16 minecraft:structure_block{name:"1stage-block-left",posX:29,posY:13,posZ:11,mode:"LOAD"}
		# execute if score start map_lod matches 13 if entity @a[scores={stage=1}] as @e[tag=map-all,tag=!big] at @s if block ~48 ~-1 ~ minecraft:red_concrete run setblock ~-16 57 ~-15 redstone_block



	execute if score start map_lod matches 13 as @e[tag=center] at @s run summon armor_stand ~-0.5 69.5 ~-0.5 {Tags:["clear-add"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
	execute if score start map_lod matches 13 as @e[tag=event,tag=!boss-event] at @s run summon armor_stand ~-0.5 69.5 ~-0.5 {Tags:["clear-add"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
	# execute if score start map_lod matches 13 as @e[tag=map-all] at @s if entity @s unless block ~ ~-1 ~48 gray_concrete run fill ~1 71 ~14 ~-2 74 ~14 minecraft:nether_brick_fence[east= true,west= true] keep
	# execute if score start map_lod matches 13 as @e[tag=map-all] at @s if entity @s unless block ~ ~-1 ~-48 gray_concrete run fill ~1 71 ~-15 ~-2 74 ~-15 minecraft:nether_brick_fence[east= true,west= true] keep
	# execute if score start map_lod matches 13 as @e[tag=map-all] at @s if entity @s unless block ~48 ~-1 ~ gray_concrete run fill ~14 71 ~1 ~14 74 ~-2 minecraft:nether_brick_fence[south= true,north= true] keep
	# execute if score start map_lod matches 13 as @e[tag=map-all] at @s if entity @s unless block ~-48 ~-1 ~ gray_concrete run fill ~-15 71 ~1 ~-15 74 ~-2 minecraft:nether_brick_fence[south= true,north= true] keep
	execute if score start map_lod matches 13 run scoreboard players set start map_lod 14

	execute if score start map_lod matches 14 run spreadplayers 0.0 -816.0 2 1 true @a
	execute if score start map_lod matches 14 run title @a[gamemode=!spectator] times 0 10 0
	execute if score start map_lod matches 14 run title @a[gamemode=!spectator] title {"text":""}
	execute if score start map_lod matches 14 run scoreboard players set start map_lod 15
############

### 이벤트 생성 ###


################




