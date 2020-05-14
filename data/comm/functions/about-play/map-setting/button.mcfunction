
#맵 불러오기

	#버튼 1점 추가

	execute if block -2 52 -1007 minecraft:birch_button[powered=true] run scoreboard players add maplodder-armor map_lod 1


	#1점

	execute if score maplodder-armor map_lod matches 1 run tellraw @a ["",{"text":""}]
	execute if score maplodder-armor map_lod matches 1 run tellraw @a ["",{"text":"    맵을 불러오려면 한번 더 눌러라","bold":"true","color":"gold"}]
	execute if score maplodder-armor map_lod matches 1 run tellraw @a ["",{"text":""}]

	execute if score maplodder-armor map_lod matches 1 run scoreboard players set maplodder-armor map_lod 2


	#3점

	execute if score maplodder-armor map_lod matches 3 run summon minecraft:armor_stand 0 51 -960 {Tags:["lodder-arena"],NoGravity:1b}

	execute if score maplodder-armor map_lod matches 3 run scoreboard players add @e[tag=lodder-arena] map_lod 0
	
	execute if score maplodder-armor map_lod matches 3 run scoreboard players set maplodder-armor map_lod 4



#로비로 돌아가기

	#버튼 1점 추가

	execute if block 1 52 -1007 minecraft:birch_button[powered=true] run scoreboard players add maplodder-armor back-lobby 1


	#돌아가기

	execute unless score maplodder-armor back-lobby matches 0 run tp @a 0 16 0

	execute unless score maplodder-armor back-lobby matches 0 run scoreboard players set maplodder-armor back-lobby 0


#기본 버튼
	
	execute if block -2 52 -1007 minecraft:birch_button[powered=true] run setblock -2 52 -1007 minecraft:birch_button[facing=south] replace

	execute if block 1 52 -1007 minecraft:birch_button[powered=true] run setblock 1 52 -1007 minecraft:birch_button[facing=south] replace







#초기화

	execute if score maplodder-armor map_lod matches 10 run kill @e[tag=lodder-boss]

	execute if score maplodder-armor map_lod matches 10 run kill @e[tag=lodder-final]

	execute if score maplodder-armor map_lod matches 10 run fill -96 50 -816 96 50 -960 minecraft:red_concrete replace minecraft:gray_concrete

	execute if score maplodder-armor map_lod matches 10.. run scoreboard players reset maplodder-armor map_lod





	