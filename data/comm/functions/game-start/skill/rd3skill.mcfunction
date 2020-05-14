execute as @a[scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[tag=rd3,scores={rd3-emmer-remove=1..}] run function comm:game-start/skill/attack/rd3

execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches 1.. run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[2]
execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches ..0 run replaceitem block ~ 15 ~ container.0 air



### rd3 ###
#
#	data modify entity @e[tag=s-c-rd3,limit=1] Rotation[1] set value 0f
#
#	execute as @a[tag=rd3,scores={skill=1}] run xp add @s -3 levels
#
#	execute as @a[tag=rd3,scores={skill=1}] run tellraw @a ["",{"selector":"@a[tag=rd3]"},{"text":"(이)가 "},{"text":"마법","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"spacebar와 shift를 같이 누른 후 우클릭으로 시전","color":"gray"}]}},{"text":"을 사용니다!"}]
#
#	execute as @a[tag=rd3,scores={skill=1}] run summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["s-c-rd3"],Age:-2147483648}
#
#	execute anchored eyes as @a[tag=rd3,scores={skill=1}] at @s run tp @e[tag=s-c-rd3,limit=1,sort=nearest] @s
#
#
#	### 기능 ###
#		execute at @e[tag=s-c-rd3] as @e[team=red,distance=..5] run tag @s add skill-rd3
#
#		# Position BH
#		scoreboard objectives add pos dummy
#		execute store result score holeX pos run data get entity @e[tag=s-c-rd3,limit=1] Pos[0] 1000000
#		execute store result score holeY pos run data get entity @e[tag=s-c-rd3,limit=1] Pos[1] 1000000
#		execute store result score holeZ pos run data get entity @e[tag=s-c-rd3,limit=1] Pos[2] 1000000
#
#		# Position Entities
#		scoreboard objectives add posX dummy
#		scoreboard objectives add posY dummy
#		scoreboard objectives add posZ dummy
#		execute as @e[tag=skill-rd3] store result score @s posX run data get entity @s Pos[0] 1000000
#		execute as @e[tag=skill-rd3] store result score @s posY run data get entity @s Pos[1] 1000000
#		execute as @e[tag=skill-rd3] store result score @s posZ run data get entity @s Pos[2] 1000000
#
#		# Find distance
#		scoreboard players operation @e[tag=skill-rd3] posX -= holeX pos
#		scoreboard players operation @e[tag=skill-rd3] posY -= holeY pos
#		scoreboard players operation @e[tag=skill-rd3] posZ -= holeZ pos
#
#		# Correct for amplification
#		scoreboard objectives add int dummy
#		scoreboard players set negOne int -1
#		scoreboard players operation @e[tag=skill-rd3] posX *= negOne int
#		scoreboard players operation @e[tag=skill-rd3] posY *= negOne int
#		scoreboard players operation @e[tag=skill-rd3] posZ *= negOne int
#
#		# Set motion
#		scoreboard players set motionMult int 50
#		scoreboard players operation @e[tag=skill-rd3] posX /= motionMult int
#		scoreboard players operation @e[tag=skill-rd3] posY /= motionMult int
#		scoreboard players operation @e[tag=skill-rd3] posZ /= motionMult int
#		execute as @e[tag=skill-rd3] if score @a[tag=rd3,limit=1] skill matches 30.. store result entity @s Motion[0] double 0.000003 run scoreboard players get @s posX
#		execute as @e[tag=skill-rd3] if score @a[tag=rd3,limit=1] skill matches 30.. store result entity @s Motion[1] double 0.000003 run scoreboard players get @s posY
#		execute as @e[tag=skill-rd3] if score @a[tag=rd3,limit=1] skill matches 30.. store result entity @s Motion[2] double 0.000003 run scoreboard players get @s posZ
#	###########
#
#
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 1..3 run tp ^ ^0.25 ^1
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 4..7 run tp ^ ^0.125 ^0.5
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 8..12 run tp ^ ^0.0625 ^0.25
#
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 1 run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 1 run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 0.2 0
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 4..50 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 0
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 25..50 run particle minecraft:witch ~ ~ ~ 2 2 2 1 9
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 20 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 34 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 37 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 38 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 44 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 2
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 48..60 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.5 2
#
#
#	execute as @e[tag=s-c-rd3] at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 10
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 11..40 run particle minecraft:portal ~ ~ ~ 5 5 5 0.02 100
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 11..30 run particle minecraft:portal ~ ~ ~ 2 2 2 5 200
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 20..40 run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.01 10
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 11..25 run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 10 500
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 40..60 run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 1
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run particle minecraft:explosion ~ ~ ~ 0.7 0.7 0.7 0 5
#		#execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;0],FadeColors:[I;0]}]}}}}
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:0b,Fuse:0}
#	execute as @e[tag=skill-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run effect give @s[tag=U] minecraft:instant_health 1 1
#	execute as @e[tag=skill-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run effect give @s[tag=A] minecraft:instant_damage 1 1
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~
#	execute as @e[tag=s-c-rd3] at @s if score @a[tag=rd3,limit=1] skill matches 60 run playsound minecraft:entity.firework_rocket.twinkle_far master @a ~ ~ ~ 
#
#	execute as @a[tag=rd3,scores={skill=1..}] at @s run scoreboard players add @s skill 1
#
#
#	execute as @a[tag=rd3,scores={skill=..0}] run kill @e[tag=s-c-rd3]
#	execute as @a[tag=rd3,scores={skill=70..}] at @s run scoreboard players set @s skill 0
#	execute as @a[tag=rd3,scores={skill=70..}] at @s run scoreboard players set @s skill 0
#	execute as @a[tag=rd3,scores={skill=..0}] run tag @e remove skill-rd3
#
#	execute at @e[tag=s-c-rd3] as @e[team=blue,distance=..5] if score @a[tag=rd3,limit=1] skill matches 20.. run effect give @s minecraft:absorption 1 50
#
#