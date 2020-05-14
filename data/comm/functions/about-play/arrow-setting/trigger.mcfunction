

### 활성화 ###
	scoreboard players enable @a help
	scoreboard players enable @a none
	scoreboard players enable @a map
	scoreboard players enable @a stat
	scoreboard players enable @a class
	scoreboard players enable @a item
	scoreboard players enable @a start
############

### help ###
	execute as @a[scores={help=1}] run tellraw @s ["",{"text":"\n----------","color":"gray"},{"text":" [ "},{"text":"Helps","bold":true,"color":"light_purple"},{"text":" ] "},{"text":"----------\n","color":"gray"}]
	execute as @a[scores={help=1}] run scoreboard players set @s help 0
############

### none ###
	execute as @a[scores={none=1}] run tellraw @s ["",{"text":"\n["},{"text":" ! ","bold":true,"color":"aqua"},{"text":"]"},{"text":" 이제부터 인벤토리 정보가","color":"gray"},{"text":" [None] ","bold":true,"color":"gold"},{"text":"으로 표시 됩니다\n","color":"gray"}]
	execute as @a[scores={none=1}] run scoreboard players set @s map 0
	execute as @a[scores={none=1}] run scoreboard players set @s class 0
	execute as @a[scores={none=1}] run scoreboard players set @s stat 0
	execute as @a[scores={none=1}] run scoreboard players set @s item 0
	execute as @a[scores={none=1}] run scoreboard players set @s none 2

	execute at @e[tag=modify-head] as @a[scores={none=2..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s inventory.0 mine ~ 23 ~ stick{drop_contents:true}
############

### map ###
	execute as @a[scores={map=1}] run tellraw @s ["",{"text":"\n["},{"text":" ! ","bold":true,"color":"aqua"},{"text":"]"},{"text":" 이제부터 인벤토리 정보가","color":"gray"},{"text":" [Map] ","bold":true,"color":"gold"},{"text":"으로 표시 됩니다\n","color":"gray"}]
	execute as @a[scores={map=1}] run scoreboard players set @s none 0
	execute as @a[scores={map=1}] run scoreboard players set @s class 0
	execute as @a[scores={map=1}] run scoreboard players set @s stat 0
	execute as @a[scores={map=1}] run scoreboard players set @s item 0
	execute as @a[scores={map=1}] run scoreboard players set @s map 2
############

### stat ###
	execute as @a[scores={stat=1}] run tellraw @s ["",{"text":"\n["},{"text":" ! ","bold":true,"color":"aqua"},{"text":"]"},{"text":" 이제부터 인벤토리 정보가","color":"gray"},{"text":" [stat] ","bold":true,"color":"gold"},{"text":"으로 표시 됩니다\n","color":"gray"}]
	execute as @a[scores={stat=1}] run scoreboard players set @s map 0
	execute as @a[scores={stat=1}] run scoreboard players set @s class 0
	execute as @a[scores={stat=1}] run scoreboard players set @s none 0
	execute as @a[scores={stat=1}] run scoreboard players set @s item 0
	execute as @a[scores={stat=1}] run scoreboard players set @s stat 2
############


### class ###
	execute as @a[scores={class=1}] run tellraw @s ["",{"text":"\n["},{"text":" ! ","bold":true,"color":"aqua"},{"text":"]"},{"text":" 이제부터 인벤토리 정보가","color":"gray"},{"text":" [class] ","bold":true,"color":"gold"},{"text":"으로 표시 됩니다\n","color":"gray"}]
	execute as @a[scores={class=1}] run scoreboard players set @s map 0
	execute as @a[scores={class=1}] run scoreboard players set @s none 0
	execute as @a[scores={class=1}] run scoreboard players set @s stat 0
	execute as @a[scores={class=1}] run scoreboard players set @s item 0
	execute as @a[scores={class=1}] run scoreboard players set @s class 2
############


### item ###
	execute as @a[scores={item=1}] run tellraw @s ["",{"text":"\n["},{"text":" ! ","bold":true,"color":"aqua"},{"text":"]"},{"text":" 이제부터 인벤토리 정보가","color":"gray"},{"text":" [item] ","bold":true,"color":"gold"},{"text":"으로 표시 됩니다\n","color":"gray"}]
	execute as @a[scores={item=1}] run scoreboard players set @s map 0
	execute as @a[scores={item=1}] run scoreboard players set @s none 0
	execute as @a[scores={item=1}] run scoreboard players set @s stat 0
	execute as @a[scores={item=1}] run scoreboard players set @s class 0
	execute as @a[scores={item=1}] run scoreboard players set @s item 2
############

### start ###

	execute as @a[scores={start=1..}] run tellraw @a ["",{"text":"     "},{"text":"[게임시작]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/tag @s add ready"}},{"text":"     "},{"text":"[돌아가기]","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/tp @s 0 16 0"}}]
	execute as @a[scores={start=1..}] run scoreboard players set @s start 0
#############


### 아이템  ###

	execute at @e[tag=modify-head] as @a[scores={item=2..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s inventory.0 mine ~ 12 ~ minecraft:stick{drop_contents:true}
	execute at @e[tag=modify-head] as @a[scores={map=2..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s inventory.0 mine ~ 17 ~ minecraft:stick{drop_contents:true}
	execute at @e[tag=modify-head] as @a[scores={stat=2..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s inventory.0 mine ~ 19 ~ minecraft:stick{drop_contents:true}

#############