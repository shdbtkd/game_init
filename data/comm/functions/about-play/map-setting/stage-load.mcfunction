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
	execute if score start map_lod matches 1 at @e[tag=center] as @e[tag=tester,sort=furthest,limit=1] at @s run function comm:about-play/map-setting/load/stage/summon_loader
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
	execute if score start map_lod matches 1 as @e[tag=map-all,tag=!center,scores={stage-road_count=..3},sort=random,limit=1] at @s run function comm:about-play/map-setting/load/stage/sub_road
	execute if score start map_lod matches 1 run function comm:about-play/map-setting/load/generic_count
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	execute if score start map_lod matches 1 as @e[tag=map-all,tag=!event,scores={stage-road_count=..3}] at @s run function comm:about-play/map-setting/load/stage/summon_tester
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_event
	execute if score start map_lod matches 1 at @e[tag=tester,sort=random,limit=1] if predicate pred:30 run function comm:about-play/map-setting/load/stage/summon_event
	execute if score start map_lod matches 1 run kill @e[tag=tester]
	#			event
	#			boss, hide
	execute if score start map_lod matches 1 as @e[tag=map-all,tag=!event,scores={stage-road_count=..3}] at @s run function comm:about-play/map-setting/load/stage/summon_tester
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
	
	#---------- tester ----------#
	#			어디에서? 특정 조건을 만족하지못하면 여기로 돌아옴
	#			tester, time 스코어 초기화
	

	# execute if score start map_lod matches 2 run kill @e[tag=tester]
	# execute if score start map_lod matches 1..4 run scoreboard players set time map_lod 0
	#			tester 소환
	# execute if score start map_lod matches 2 at @e[tag=loader] if block ~ ~-1 ~48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~48 {Tags:["tester"]}
	# execute if score start map_lod matches 2 at @e[tag=loader] if block ~ ~-1 ~-48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~-48 {Tags:["tester"]}
	# execute if score start map_lod matches 2 at @e[tag=loader] if block ~48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~48 ~ ~ {Tags:["tester"]}
	# execute if score start map_lod matches 2 at @e[tag=loader] if block ~-48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~-48 ~ ~ {Tags:["tester"]}
	#			center tester 소환
	# execute if score start map_lod matches 2 as @e[tag=center] at @s if score @s stage-road_count matches ..2 if block ~ ~-1 ~48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~48 {Tags:["tester"]}
	# execute if score start map_lod matches 2 as @e[tag=center] at @s if score @s stage-road_count matches ..2 if block ~ ~-1 ~-48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~-48 {Tags:["tester"]}
	# execute if score start map_lod matches 2 as @e[tag=center] at @s if score @s stage-road_count matches ..2 if block ~48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~48 ~ ~ {Tags:["tester"]}
	# execute if score start map_lod matches 2 as @e[tag=center] at @s if score @s stage-road_count matches ..2 if block ~-48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~-48 ~ ~ {Tags:["tester"]}
	#---------- tester ----------#

	# execute if score start map_lod matches 2 run scoreboard players set start map_lod 3

	#---------- loader ----------#
	#			loader 소환
	# execute if score start map_lod matches 3 if score count-loader map_lod <= max-battle map_lod at @e[tag=map-all] as @e[tag=tester,sort=random,limit=1] at @s if score count-loader map_lod < min-battle map_lod if predicate pred:75 run summon minecraft:armor_stand ~ ~ ~ {Tags:["loader","map-all"],NoGravity:1b}
	# execute if score start map_lod matches 1.. at @e[tag=loader] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete
	# execute if score start map_lod matches 1.. at @e[tag=loader] as @e[tag=tester,distance=..0] run kill @s

	# execute if score start map_lod matches 3 if score count-loader map_lod <= max-battle map_lod at @e[tag=map-all] as @e[tag=tester,sort=furthest,limit=1] at @s if score count-loader map_lod < min-battle map_lod if predicate pred:loot run summon minecraft:armor_stand ~ ~ ~ {Tags:["loader","map-all"],NoGravity:1b}
	# execute if score start map_lod matches 1.. at @e[tag=loader] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete
	# execute if score start map_lod matches 1.. at @e[tag=loader] as @e[tag=tester,distance=..0] run kill @s

	# execute if score start map_lod matches 3 if score count-loader map_lod <= max-battle map_lod at @e[tag=map-all] as @e[tag=tester,sort=furthest,limit=1] at @s if score count-loader map_lod < min-battle map_lod if predicate pred:loot run summon minecraft:armor_stand ~ ~ ~ {Tags:["loader","map-all"],NoGravity:1b}
	# execute if score start map_lod matches 1.. at @e[tag=loader] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete
	# execute if score start map_lod matches 1.. at @e[tag=loader] as @e[tag=tester,distance=..0] run kill @s

	# execute if score start map_lod matches 3 at @e[tag=map-all] as @e[tag=tester,sort=furthest,limit=1] at @s if predicate pred:loot run summon minecraft:armor_stand ~ ~ ~ {Tags:["loader","map-all"],NoGravity:1b}
	# execute if score start map_lod matches 1.. at @e[tag=loader] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete
	# execute if score start map_lod matches 1.. at @e[tag=loader] as @e[tag=tester,distance=..0] run kill @s

	# execute if score start map_lod matches 3 at @e[tag=map-all] as @e[tag=tester,sort=furthest,limit=1] at @s if predicate pred:10 run summon minecraft:armor_stand ~ ~ ~ {Tags:["loader","map-all"],NoGravity:1b}
	# execute if score start map_lod matches 1.. at @e[tag=loader] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete
	# execute if score start map_lod matches 1.. at @e[tag=loader] as @e[tag=tester,distance=..0] run kill @s

	# execute if score start map_lod matches 3 at @e[tag=map-all] as @e[tag=tester,sort=furthest,limit=1] at @s if predicate pred:10 run summon minecraft:armor_stand ~ ~ ~ {Tags:["loader","map-all"],NoGravity:1b}
	# execute if score start map_lod matches 1.. at @e[tag=loader] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete
	# execute if score start map_lod matches 1.. at @e[tag=loader] as @e[tag=tester,distance=..0] run kill @s
	# execute if score start map_lod matches 1.. at @e[tag=boss] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete
	#---------- loader ----------#
	# execute if score start map_lod matches 3 run scoreboard players set start map_lod 4

	#---------- start 4 ----------


	# 기존의 event_room 생성
	# execute if score start map_lod matches 6 if score count map_lod matches 5.. as @e[tag=loader,tag=!event,sort=random,limit=1] at @s run tag @s add event
	# execute if score start map_lod matches 6 if score count map_lod matches 8.. as @e[tag=loader,tag=!event,sort=random,limit=1] at @s run tag @s add event
	# execute if score start map_lod matches 6 if score count map_lod matches 13.. as @e[tag=loader,tag=!event,sort=random,limit=1] at @s if predicate pred:75 run tag @s add event
	# execute if score start map_lod matches 6 if score count map_lod matches 16.. as @e[tag=loader,tag=!event,sort=random,limit=1] at @s if predicate pred:50 run tag @s add event
	# execute if score start map_lod matches 6 if score count map_lod matches 19.. as @e[tag=loader,tag=!event,sort=random,limit=1] at @s if predicate pred:50 run tag @s add event


	# execute if score start map_lod matches 6 if score count map_lod matches 10.. as @e[tag=loader,tag=!event,tag=!big,sort=random,limit=1] at @s run tag @s add big
	# execute if score start map_lod matches 6 if score count map_lod matches 10.. as @e[tag=loader,tag=!event,tag=!big,sort=random,limit=1] at @s run tag @s add big
	# execute if score start map_lod matches 6 if score count map_lod matches 14.. as @e[tag=loader,tag=!event,tag=!big,sort=random,limit=1] at @s run tag @s add big
	# execute if score start map_lod matches 6 if score count map_lod matches 14.. as @e[tag=loader,tag=!event,tag=!big,sort=random,limit=1] at @s if predicate pred:50 run tag @s add big
	# execute if score start map_lod matches 6 if score count map_lod matches 18.. as @e[tag=loader,tag=!event,tag=!big,sort=random,limit=1] at @s if predicate pred:50 run tag @s add big
	# execute if score start map_lod matches 6 if score count map_lod matches 18.. as @e[tag=loader,tag=!event,tag=!big,sort=random,limit=1] at @s if predicate pred:50 run tag @s add big

	#execute if score start map_lod matches 6 as @e[tag=event] at @s run tag @s remove loader
	#execute if score start map_lod matches 6 as @e[tag=event] at @s run tp ~ ~2 ~


	execute if score start map_lod matches 7 run scoreboard players set time map_lod 0

	

	# execute if score start map_lod matches 7 as @e[tag=map-all] at @s run function comm:about-play/map-setting/load/base-set

	execute if score start map_lod matches 7 run scoreboard players set start map_lod 8

	#-393 71 1186


###########


### 쩐투 ###

	### 기본틀_1stage ### 
	#----# 주석 풀어야함 #----#
		# execute if score start map_lod matches 8 if score @p stage matches 1 as @e[tag=center] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"1stage-lobby",posY:1,mode:"LOAD"}
		# execute if score start map_lod matches 8 if score @p stage matches 2 as @e[tag=center] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"2stage-lobby",posY:1,mode:"LOAD"}
		# execute if score start map_lod matches 8 if score @p stage matches 1.. as @e[tag=center] at @s run setblock ~-16 62 ~-16 minecraft:redstone_block

		# execute if score start map_lod matches 8 if score @p stage matches 1 as @e[tag=map-all] at @s[tag=!big] if block ~ ~-1 ~48 minecraft:gray_concrete run setblock ~-16 61 ~16 minecraft:structure_block{name:"1stage-road-vert",posY:1,mode:"LOAD"}
		# execute if score start map_lod matches 8 if score @p stage matches 2 as @e[tag=map-all] at @s[tag=!big] if block ~ ~-1 ~48 minecraft:gray_concrete run setblock ~-16 61 ~16 minecraft:structure_block{name:"2stage-road-vert",posY:1,mode:"LOAD"}
		# execute if score start map_lod matches 8 if score @p stage matches 1.. as @e[tag=map-all] at @s[tag=!big] if block ~ ~-1 ~48 minecraft:gray_concrete run setblock ~-16 62 ~16 minecraft:redstone_block

		# execute if score start map_lod matches 8 if score @p stage matches 1 as @e[tag=map-all] at @s[tag=!big] if block ~48 ~-1 ~ minecraft:gray_concrete run setblock ~16 61 ~-16 minecraft:structure_block{name:"1stage-road-hori",posY:1,mode:"LOAD"}
		# execute if score start map_lod matches 8 if score @p stage matches 2 as @e[tag=map-all] at @s[tag=!big] if block ~48 ~-1 ~ minecraft:gray_concrete run setblock ~16 61 ~-16 minecraft:structure_block{name:"2stage-road-hori",posY:1,mode:"LOAD"}
		# execute if score start map_lod matches 8 if score @p stage matches 1.. as @e[tag=map-all] at @s[tag=!big] if block ~48 ~-1 ~ minecraft:gray_concrete run setblock ~16 62 ~-16 minecraft:redstone_block
	#----# 주석 풀어야함 #----#
	###################

	#----# 주석 풀어야함 #----#
	# execute if score start map_lod matches 8 run scoreboard players add time map_lod 1

	# execute if score start map_lod matches 8 if score time map_lod matches 20.. run scoreboard players set start map_lod 9
	#----# 주석 풀어야함 #----#
###########


### 스태이지 로드 ###

	### 선텍 ###

		# summon minecraft:armor_stand -14 2 1 {Tags:["stage-selecter","host"]}

		execute if score start map_lod matches 9 if score count-loader map_lod = count-end-load map_lod run scoreboard players set start map_lod 11
		execute if score start map_lod matches 9 unless score count-loader map_lod = count-end-load map_lod run scoreboard players set start map_lod 10

		# execute if score start map_lod matches 10 run tag @e[tag=stage-selecter,tag=!end,sort=random,limit=1] add load

		# execute as @e[tag=stage-selecter,tag=load,tag=!end] store result score stage-load-num random run data get entity @e[tag=stage-selecter,tag=load,tag=!end,limit=1] Pos[2]
		# tag @e[tag=stage-selecter,tag=!end,tag=load] add end

			### 1stage ###

				#execute if score start map_lod matches 10 if score @p stage matches 1.. run tag @e[type=minecraft:armor_stand,tag=loader,tag=!event,tag=!loaded,sort=random,limit=1] add selected

				### 진짜 선텍 ###

				# 1stage]
				
				execute if score start map_lod matches 10 as @e[tag=loader,tag=!event,tag=!loaded,sort=random,limit=1] at @s run function comm:about-play/map-setting/load/generic_stage-type-filter
				# execute if score start map_lod matches 10 as @e[tag=loader,tag=event,tag=!end-event,sort=random,limit=1] at @s run function comm:about-play/map-setting/load/event-set
					
				###########

				#execute if score start map_lod matches 10 as @e[tag=selected,tag=!loaded] at @s run setblock ~-16 62 ~-16 minecraft:redstone_block

				# execute if score start map_lod matches 10 as @e[tag=selected,tag=!loaded] at @s run tag @s add loaded

				execute if score start map_lod matches 10 run scoreboard players set start map_lod 9
			##############
	#############
##################

### 이벤트 ###

	### 1stage ###

		# 상자방
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=event,tag=!end-event,limit=1,sort=random] at @s run tag @s add chest-event
		# 1스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1 as @e[tag=chest-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"1stage-event",posY:1,mode:"LOAD"}
		# 2스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 2 as @e[tag=chest-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"2stage-event",posY:1,mode:"LOAD"}
		# 3스테이지
		# 4스테이지
		# 5스테이지
		# 6스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=chest-event,limit=1] at @s run tag @s add end-event

		# 보스전
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=event,tag=!end-event,limit=1,sort=random] at @s if predicate pred:50 run tag @s add boss-event
		# 1스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1 as @e[tag=boss-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"1stage-event-boss",posY:1,mode:"LOAD"}
		# 2스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 2 as @e[tag=boss-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"2stage-event-boss",posY:1,mode:"LOAD"}
		# 3스테이지
		# 4스테이지
		# 5스테이지
		# 6스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=boss-event,limit=1] at @s run tag @s add end-event

		# 상점
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=event,tag=!end-event,limit=1,sort=random] at @s if predicate pred:50 run tag @s add shop-event
		# 1스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1 as @e[tag=shop-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"1stage-event",posY:1,mode:"LOAD"}
		# 2스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 2 as @e[tag=shop-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"2stage-event",posY:1,mode:"LOAD"}
		# 3스테이지
		# 4스테이지
		# 5스테이지
		# 6스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=shop-event,limit=1] at @s run tag @s add end-event

		# 인챈트
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=event,tag=!end-event,limit=1,sort=random] at @s run tag @s add enchan-event
		# 1스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1 as @e[tag=enchan-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"1stage-event",posY:1,mode:"LOAD"}
		# 2스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 2 as @e[tag=enchan-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"2stage-event",posY:1,mode:"LOAD"}
		# 3스테이지
		# 4스테이지
		# 5스테이지
		# 6스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=enchan-event,limit=1] at @s run tag @s add end-event

		# 상자방
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=event,tag=!end-event,limit=1,sort=random] at @s run tag @s add chest-event
		# 1스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1 as @e[tag=chest-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"1stage-event",posY:1,mode:"LOAD"}
		# 2스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 2 as @e[tag=chest-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"2stage-event",posY:1,mode:"LOAD"}
		# 3스테이지
		# 4스테이지
		# 5스테이지
		# 6스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=chest-event,limit=1] at @s run tag @s add end-event

		# 상자방
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=event,tag=!end-event,limit=1,sort=random] at @s run tag @s add chest-event
		# 1스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1 as @e[tag=chest-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"1stage-event",posY:1,mode:"LOAD"}
		# 2스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 2 as @e[tag=chest-event,limit=1] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"2stage-event",posY:1,mode:"LOAD"}
		# 3스테이지
		# 4스테이지
		# 5스테이지
		# 6스테이지
#		execute if score start map_lod matches 11 if score @a[limit=1] stage matches 1.. as @e[tag=chest-event,limit=1] at @s run tag @s add end-event
	##############

#	execute if score start map_lod matches 11 unless entity @e[tag=event,tag=!end-event] run scoreboard players set start map_lod 12
#############

### 보스 ###

	execute if score start map_lod matches 12 as @e[tag=event] at @s run setblock ~-16 62 ~-16 minecraft:redstone_block

	execute if score start map_lod matches 12 if score @p stage matches 1 as @e[tag=boss] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"1stage-boss",posY:1,mode:"LOAD"}
	execute if score start map_lod matches 12 if score @p stage matches 2 as @e[tag=boss] at @s run setblock ~-16 61 ~-16 minecraft:structure_block{name:"2stage-event",posY:1,mode:"LOAD"}
	# execute if score start map_lod matches 11 as @e[tag=boss] at @s run fill ~1 71 ~14 ~-2 74 ~14 nether_portal
	# execute if score start map_lod matches 11 as @e[tag=boss] at @s run fill ~1 71 ~-15 ~-2 74 ~-15 nether_portal
	# execute if score start map_lod matches 11 as @e[tag=boss] at @s run fill ~14 71 ~1 ~14 74 ~-2 nether_portal[axis=z]
	# execute if score start map_lod matches 11 as @e[tag=boss] at @s run fill ~-15 71 ~1 ~-15 74 ~-2 nether_portal[axis=z]

	execute if score start map_lod matches 12 as @e[tag=boss] at @s run setblock ~-16 62 ~-16 minecraft:redstone_block
	execute if score start map_lod matches 12 as @e[tag=boss] at @s run fill ~1 71 ~14 ~-2 74 ~14 nether_portal
	execute if score start map_lod matches 12 as @e[tag=boss] at @s run fill ~1 71 ~-15 ~-2 74 ~-15 nether_portal
	execute if score start map_lod matches 12 as @e[tag=boss] at @s run fill ~14 71 ~1 ~14 74 ~-2 nether_portal[axis=z]
	execute if score start map_lod matches 12 as @e[tag=boss] at @s run fill ~-15 71 ~1 ~-15 74 ~-2 nether_portal[axis=z]

	#execute if score start map_lod matches 12 at @e[tag=boss,type=armor_stand,limit=1] run setworldspawn ~ ~ ~
	execute if score start map_lod matches 12 run scoreboard players set start map_lod 13
###########

### 문열기 ###

	execute if score start map_lod matches 13 as @e[tag=map-all,tag=!big] at @s if block ~ ~-1 ~48 minecraft:gray_concrete run summon armor_stand ~-.5 71 ~15 {Tags:["door-vert"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all] at @s if block ~ ~-1 ~-48 minecraft:gray_concrete run summon armor_stand ~-.5 71 ~-16 {Tags:["door-vert"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all,tag=!big] at @s if block ~48 ~-1 ~ minecraft:gray_concrete run summon armor_stand ~15 71 ~-0.5 {Tags:["door-hori"],Invisible:1b,Invulnerable:1b,Small:1b}
	execute if score start map_lod matches 13 as @e[tag=map-all] at @s if block ~-48 ~-1 ~ minecraft:gray_concrete run summon armor_stand ~-16 71 ~-0.5 {Tags:["door-hori"],Invisible:1b,Invulnerable:1b,Small:1b}

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
	execute if score start map_lod matches 13 as @e[tag=map-all] at @s if entity @s unless block ~ ~-1 ~48 gray_concrete run fill ~1 71 ~14 ~-2 74 ~14 minecraft:nether_brick_fence[east= true,west= true] keep
	execute if score start map_lod matches 13 as @e[tag=map-all] at @s if entity @s unless block ~ ~-1 ~-48 gray_concrete run fill ~1 71 ~-15 ~-2 74 ~-15 minecraft:nether_brick_fence[east= true,west= true] keep
	execute if score start map_lod matches 13 as @e[tag=map-all] at @s if entity @s unless block ~48 ~-1 ~ gray_concrete run fill ~14 71 ~1 ~14 74 ~-2 minecraft:nether_brick_fence[south= true,north= true] keep
	execute if score start map_lod matches 13 as @e[tag=map-all] at @s if entity @s unless block ~-48 ~-1 ~ gray_concrete run fill ~-15 71 ~1 ~-15 74 ~-2 minecraft:nether_brick_fence[south= true,north= true] keep
	execute if score start map_lod matches 13 run scoreboard players set start map_lod 14

	execute if score start map_lod matches 14 run spreadplayers 0.0 -816.0 2 1 true @a
	execute if score start map_lod matches 14 run title @a[gamemode=!spectator] times 0 10 0
	execute if score start map_lod matches 14 run title @a[gamemode=!spectator] title {"text":""}
	execute if score start map_lod matches 14 run scoreboard players set start map_lod 15
############

### 이벤트 생성 ###


################




