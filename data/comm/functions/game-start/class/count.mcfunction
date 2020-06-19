#---------- mapload ----------#
execute as @a[gamemode=!spectator,tag=mapload] at @s at @e[tag=map-all,tag=!not-appear] at @e[distance=..0,tag=center] at @s run function comm:about-play/arrow-setting/map/appear
execute as @a[gamemode=!spectator,tag=!mapload] at @s if block ~ 65 ~ minecraft:purple_terracotta run function comm:about-play/arrow-setting/map/appear
execute as @a[gamemode=!spectator,tag=!mapload] at @s if block ~ 65 ~ minecraft:purple_terracotta run tag @s add mapload
execute as @a[gamemode=!spectator,tag=mapload] at @s unless block ~ 65 ~ minecraft:purple_terracotta run function comm:about-play/arrow-setting/map/appear
execute as @a[gamemode=!spectator,tag=mapload] at @s unless block ~ 65 ~ minecraft:purple_terracotta run tag @s remove mapload
#---------- mapload ----------#

#---------- play now ----------#
execute as @a[gamemode=!spectator] at @s if block ~ 67 ~ minecraft:black_terracotta run tag @s add play-now
execute as @a[gamemode=!spectator] at @s unless block ~ 67 ~ minecraft:black_terracotta run tag @s remove play-now
execute as @a[gamemode=spectator] run tag @s remove play-now
#---------- play now ----------#

#---------- event now ----------#
execute as @a[gamemode=!spectator] at @s if block ~ 66 ~ minecraft:white_terracotta run tag @s add event-now
execute as @a[gamemode=!spectator] at @s unless block ~ 66 ~ minecraft:white_terracotta run tag @s remove event-now
execute as @a[gamemode=spectator] run tag @s remove event-now
#---------- event now ----------#

#---------- count ----------#
#	player-all = 모든 블루팀
execute store result score player-all stage if entity @a[team=blue]
#	player = 죽지않은 사람의 수
execute as @a[team=blue] if score @s out matches 1.. run tag @s add dead
execute as @a[team=blue] unless score @s out matches 1.. run tag @s remove dead
execute store result score player stage if entity @a[team=blue,tag=!dead]
#	play-now = "play-now" 태그를 갖고 있는 사람의 수
execute store result score play-now stage if entity @a[tag=play-now]
#	out-player = "out"의 점수가 2보다 큰 사람 수
execute store result score out-player stage if entity @a[team=blue,scores={out=2}]
#	ready-player = 준비실에 있는 사람의 수
execute store result score ready-player stage if entity @a[x=-8,y=38,z=-823,dx=15,dy=15,dz=15]
#	go-player = "ready" 태그를 가지고 있는 사람의 수
execute store result score go-player stage if entity @a[tag=ready]
#	red = red팀의 수
execute store result score red stage if entity @e[team=red]
#	"ready" 태그 컨트롤
execute as @a[tag=ready] unless entity @s[x=-8,y=38,z=-823,dx=15,dy=15,dz=15] run tag @s remove ready-end
execute as @a[tag=ready] unless entity @s[x=-8,y=38,z=-823,dx=15,dy=15,dz=15] run tag @s remove ready
#	"backlobby" 태그 컨트롤
execute as @a[tag=backlobby,tag=backlobby-end] if entity @s[x=-8,y=38,z=-823,dx=15,dy=15,dz=15] run function comm:lobby-comm/ready/back-remove
#	문을 열려고 하는 사람 수
execute as @e[tag=door-vert] at @s unless score @s door = player stage store result score @s door if entity @a[gamemode=!spectator,distance=0..4]
execute as @e[tag=door-hori] at @s unless score @s door = player stage store result score @s door if entity @a[gamemode=!spectator,distance=0..4]

execute as @a[team=blue] unless score @s out matches 0.. store result score @s rotation run data get entity @s Rotation[0]

# execute store result score count-stage-armor random if entity @e[tag=stage-selecter]
# execute store result score count-end-armor random if entity @e[tag=stage-selecter,tag=end]
execute store result score count-summon-armor random if entity @e[tag=summon-selecter]
execute store result score end-item-armnor item-random if entity @e[tag=item-selecter,tag=load,tag=end]

execute as @e[tag=stage-selecter,tag=host] at @s unless score max-stage random <= count-stage-armor random run summon minecraft:armor_stand ~ ~ ~ {Tags:["stage-selecter"]}
execute as @e[tag=stage-selecter,tag=host] at @s unless score max-stage random <= count-stage-armor random run tp ^ ^ ^1

execute as @e[tag=summon-selecter,tag=host] at @s unless score max-summon random <= count-summon-armor random run summon minecraft:armor_stand ~ ~ ~ {Tags:["summon-selecter"]}
execute as @e[tag=summon-selecter,tag=host] at @s unless score max-summon random <= count-summon-armor random run tp ^ ^ ^1

###################
