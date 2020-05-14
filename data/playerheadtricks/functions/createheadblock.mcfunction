#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------SUMMONER------------------#

	execute as @s[tag=rd1] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["out-rd1"],Age:-2147483648}
	execute as @s[tag=rd2] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["out-rd2"],Age:-2147483648}
	execute as @s[tag=rd3] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["out-rd3"],Age:-2147483648}

	execute as @s[tag=nd1] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["out-nd1"],Age:-2147483648}
	execute as @s[tag=nd2] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["out-nd2"],Age:-2147483648}
	execute as @s[tag=nd3] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["out-nd3"],Age:-2147483648}

	# execute as @s[tag=rd1] at @s run spawnpoint @s ~ ~ ~
	# execute as @s[tag=rd2] at @s run spawnpoint @s ~ ~ ~
	# execute as @s[tag=rd3] at @s run spawnpoint @s ~ ~ ~
	# execute as @s[tag=nd1] at @s run spawnpoint @s ~ ~ ~
	# execute as @s[tag=nd2] at @s run spawnpoint @s ~ ~ ~
	# execute as @s[tag=nd3] at @s run spawnpoint @s ~ ~ ~

	execute unless block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~ #minecraft:stairs run function playerheadtricks:block_test/onbasic
	execute if block ~ ~ ~ #minecraft:stairs run function playerheadtricks:block_test/onstair
	execute if block ~ ~ ~ #minecraft:slabs run function playerheadtricks:block_test/onslab
	# execute if block ~ ~ ~ #minecraft:stairs run setblock ~ ~1 ~ player_head
	# execute if block ~ ~ ~ #minecraft:slabs run setblock ~ ~1 ~ player_head
	# execute unless block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~ #minecraft:stairs run setblock ~ ~1 ~ player_head

	loot spawn ~ ~ ~ loot playerheadtricks:uuidtest



	execute if block ~ ~ ~ #minecraft:stairs run data modify block ~ ~1 ~ SkullOwner set from entity @e[type=item,distance=0,limit=1,sort=nearest,nbt={Item:{id:"minecraft:player_head"}}] Item.tag.SkullOwner
	execute if block ~ ~ ~ #minecraft:slabs run data modify block ~ ~1 ~ SkullOwner set from entity @e[type=item,distance=0,limit=1,sort=nearest,nbt={Item:{id:"minecraft:player_head"}}] Item.tag.SkullOwner
	execute unless block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~ #minecraft:stairs run data modify block ~ ~ ~ SkullOwner set from entity @e[type=item,distance=0,limit=1,sort=nearest,nbt={Item:{id:"minecraft:player_head"}}] Item.tag.SkullOwner

	kill @e[type=item,distance=0,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head"}}]



	### 시선 ###
		# execute as @s[scores={rotation=146..168}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=15]
		# execute as @s[scores={rotation=123..146}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=14]
		# execute as @s[scores={rotation=101..123}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=13]
		# execute as @s[scores={rotation=78..101}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=12]

		# execute as @s[scores={rotation=56..78}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=11]
		# execute as @s[scores={rotation=33..56}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=10]
		# execute as @s[scores={rotation=11..33}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=9]
		# execute as @s[scores={rotation=-11..11}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=8]

		# execute as @s[scores={rotation=-33..-11}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=7]
		# execute as @s[scores={rotation=-56..-33}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=6]
		# execute as @s[scores={rotation=-78..-56}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=5]
		# execute as @s[scores={rotation=-101..-78}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=4]

		# execute as @s[scores={rotation=-123..-101}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=3]
		# execute as @s[scores={rotation=-146..-123}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=2]
		# execute as @s[scores={rotation=-168..-146}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=1]
		# execute as @s[scores={rotation=-168..168}] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ player_head[rotation=0]



		# execute as @s[scores={rotation=146..168}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=15]
		# execute as @s[scores={rotation=123..146}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=14]
		# execute as @s[scores={rotation=101..123}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=13]
		# execute as @s[scores={rotation=78..101}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=12]

		# execute as @s[scores={rotation=56..78}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=11]
		# execute as @s[scores={rotation=33..56}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=10]
		# execute as @s[scores={rotation=11..33}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=9]
		# execute as @s[scores={rotation=-11..11}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=8]

		# execute as @s[scores={rotation=-33..-11}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=7]
		# execute as @s[scores={rotation=-56..-33}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=6]
		# execute as @s[scores={rotation=-78..-56}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=5]
		# execute as @s[scores={rotation=-101..-78}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=4]

		# execute as @s[scores={rotation=-123..-101}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=3]
		# execute as @s[scores={rotation=-146..-123}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=2]
		# execute as @s[scores={rotation=-168..-146}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=1]
		# execute as @s[scores={rotation=-168..168}] if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ player_head[rotation=0]
	###########



#------------------------------------------#