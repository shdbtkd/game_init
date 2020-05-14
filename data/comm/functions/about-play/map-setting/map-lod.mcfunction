
#

	#lodder-arena 소환

	execute as @e[tag=lodder-arena,scores={map_lod=0}] at @s run scoreboard players add @s map_lod 1

	execute as @e[tag=lodder-arena,scores={map_lod=1}] at @s run summon minecraft:armor_stand ~ ~3 ~ {Tags:["lodder-final"],NoGravity:1b}

	execute as @e[tag=lodder-final] at @s run fill ~ ~-4 ~ ~ ~-4 ~ minecraft:gray_concrete replace minecraft:red_concrete

	execute as @e[tag=lodder-boss] at @s run fill ~ ~-4 ~ ~ ~-4 ~ minecraft:gray_concrete replace minecraft:red_concrete



		
		#lodder-arena-south 소환

		execute as @e[tag=lodder-arena,scores={map_lod=1}] at @s if block ~ ~-1 ~48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~48 {Tags:["lodder-arena-south"],NoGravity:1b}

		execute as @e[tag=lodder-arena-south] at @s run scoreboard players add @e[tag=lodder-arena-south] map_lod 0


			#tp-lodder 소환

			execute as @e[tag=lodder-arena-south,scores={map_lod=..3}] at @s if block ~ ~-1 ~48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~48 {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-south,scores={map_lod=..3}] at @s if block ~ ~-1 ~-48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~-48 {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-south,scores={map_lod=..3}] at @s if block ~48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~48 ~ ~ {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-south,scores={map_lod=..3}] at @s if block ~-48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~-48 ~ ~ {Tags:["tp-lodder"],NoGravity:1b}


			execute as @e[tag=lodder-arena-south,scores={map_lod=..2}] at @s run summon minecraft:armor_stand ~ ~3 ~ {Tags:["lodder-final"],NoGravity:1b}

			tp @e[tag=lodder-arena-south,scores={map_lod=..2}] @e[tag=tp-lodder,limit=1,sort=random]


			execute as @e[tag=lodder-arena-south,scores={map_lod=..2}] at @s run scoreboard players add @e[tag=lodder-arena-south] map_lod 1

			


				#lodder-boss 소환

				tp @e[tag=lodder-arena-south,scores={map_lod=3}] @e[tag=tp-lodder,limit=1,sort=random]

				execute as @e[tag=lodder-arena-south,scores={map_lod=3}] at @s run summon minecraft:armor_stand ~ ~3 ~ {Tags:["lodder-boss"],NoGravity:1b}

				kill @e[tag=tp-lodder]

				kill @e[tag=lodder-arena-south,scores={map_lod=3}]









execute as @e[tag=lodder-final] at @s run fill ~ ~-4 ~ ~ ~-4 ~ minecraft:gray_concrete replace minecraft:red_concrete






		#lodder-arena-east 소환

		execute as @e[tag=lodder-arena,scores={map_lod=1}] at @s if block ~48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~48 ~ ~ {Tags:["lodder-arena-east"],NoGravity:1b}

		execute as @e[tag=lodder-arena-east] at @s run scoreboard players add @e[tag=lodder-arena-east] map_lod 0


			#tp-lodder 소환

			execute as @e[tag=lodder-arena-east,scores={map_lod=..2}] at @s if block ~ ~-1 ~48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~48 {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-east,scores={map_lod=..2}] at @s if block ~ ~-1 ~-48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~-48 {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-east,scores={map_lod=..2}] at @s if block ~48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~48 ~ ~ {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-east,scores={map_lod=..2}] at @s if block ~-48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~-48 ~ ~ {Tags:["tp-lodder"],NoGravity:1b}


			execute as @e[tag=lodder-arena-east,scores={map_lod=..2}] at @s run summon minecraft:armor_stand ~ ~3 ~ {Tags:["lodder-final"],NoGravity:1b}

			tp @e[tag=lodder-arena-east,scores={map_lod=..2}] @e[tag=tp-lodder,limit=1,sort=random]

			kill @e[tag=tp-lodder]

			execute as @e[tag=lodder-arena-east,scores={map_lod=..2}] at @s run scoreboard players add @e[tag=lodder-arena-east] map_lod 1

			kill @e[tag=lodder-arena-east,scores={map_lod=3}]






execute as @e[tag=lodder-final] at @s run fill ~ ~-4 ~ ~ ~-4 ~ minecraft:gray_concrete replace minecraft:red_concrete







		#lodder-arena-west 소환

		execute as @e[tag=lodder-arena,scores={map_lod=1}] at @s if block ~-48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~-48 ~ ~ {Tags:["lodder-arena-west"],NoGravity:1b}

		execute as @e[tag=lodder-arena-west] at @s run scoreboard players add @e[tag=lodder-arena-west] map_lod 0


			#tp-lodder 소환

			execute as @e[tag=lodder-arena-west,scores={map_lod=..2}] at @s if block ~ ~-1 ~48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~48 {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-west,scores={map_lod=..2}] at @s if block ~ ~-1 ~-48 minecraft:red_concrete run summon minecraft:armor_stand ~ ~ ~-48 {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-west,scores={map_lod=..2}] at @s if block ~48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~48 ~ ~ {Tags:["tp-lodder"],NoGravity:1b}

			execute as @e[tag=lodder-arena-west,scores={map_lod=..2}] at @s if block ~-48 ~-1 ~ minecraft:red_concrete run summon minecraft:armor_stand ~-48 ~ ~ {Tags:["tp-lodder"],NoGravity:1b}


			execute as @e[tag=lodder-arena-west,scores={map_lod=..2}] at @s run summon minecraft:armor_stand ~ ~3 ~ {Tags:["lodder-final"],NoGravity:1b}

			tp @e[tag=lodder-arena-west,scores={map_lod=..2}] @e[tag=tp-lodder,limit=1,sort=random]

			kill @e[tag=tp-lodder]

			execute as @e[tag=lodder-arena-west,scores={map_lod=..2}] at @s run scoreboard players add @e[tag=lodder-arena-west] map_lod 1

			kill @e[tag=lodder-arena-west,scores={map_lod=3}]







execute as @e[tag=lodder-final] at @s run fill ~ ~-4 ~ ~ ~-4 ~ minecraft:gray_concrete replace minecraft:red_concrete






		execute as @e[tag=lodder-arena,scores={map_lod=1}] at @s run scoreboard players set @s map_lod 2

		execute as @e[tag=lodder-arena,scores={map_lod=2}] at @s run scoreboard players set @s map_lod 3

		kill @e[tag=lodder-arena]





















