
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



	execute if score @p stage matches 2 run scoreboard players set price-add price 0
	execute if score @p stage matches 3 run scoreboard players set price-add price 0

	execute if score @p stage matches 4 run scoreboard players set price-add price 2
	execute if score @p stage matches 5 run scoreboard players set price-add price 2

	execute if score @p stage matches 6 run scoreboard players set price-add price 3
	execute if score @p stage matches 7 run scoreboard players set price-add price 3

	execute if score @p stage matches 8 run scoreboard players set price-add price 6
	execute if score @p stage matches 9 run scoreboard players set price-add price 6

	execute if score @p stage matches 10 run scoreboard players set price-add price 8
	execute if score @p stage matches 11 run scoreboard players set price-add price 8

	execute if score @p stage matches 12 run scoreboard players set price-add price 9
	execute if score @p stage matches 13 run scoreboard players set price-add price 9

	execute if score @p stage matches 14 run scoreboard players set price-add price 13
	execute if score @p stage matches 15 run scoreboard players set price-add price 13

	execute if score @p stage matches 16 run scoreboard players set price-add price 14
	execute if score @p stage matches 17 run scoreboard players set price-add price 14

##################

#
execute as @e[tag=map-all] if entity @s[tag=loader,tag=!event] run scoreboard players set @s room_type 2

execute as @e[tag=map-all] if entity @s[tag=boss] run scoreboard players set @s room_type 4
execute as @e[tag=map-all] if entity @s[tag=loader,tag=event,scores={event-type=1..3}] run scoreboard players set @s room_type 5
execute as @e[tag=map-all] if entity @s[tag=loader,tag=event,scores={event-type=4..6}] run scoreboard players set @s room_type 6
execute as @e[tag=map-all] if entity @s[tag=loader,tag=event,scores={event-type=7..9}] run scoreboard players set @s room_type 7
execute as @e[tag=map-all] if entity @s[tag=loader,tag=event_boss] run scoreboard players set @s room_type 8
execute as @e[tag=map-all] if entity @s[tag=loader,tag=challenge] run scoreboard players set @s room_type 9
execute as @e[tag=map-all] if entity @s[tag=hide] run scoreboard players set @s room_type 10
execute as @e[tag=map-all] if entity @s[tag=center] run scoreboard players set @s room_type 11
