
	gamerule disableElytraMovementCheck false
	gamerule doDaylightCycle false
	gamerule doFireTick false
	gamerule doMobSpawning false
	gamerule doWeatherCycle false
	gamerule mobGriefing false
	gamerule naturalRegeneration false
	gamerule randomTickSpeed 0
	gamerule commandBlockOutput false
	gamerule spawnRadius 0
	gamerule keepInventory false
	gamerule disableRaids false
	gamerule doMobLoot false
	gamerule doImmediateRespawn true
	gamerule doLimitedCrafting true
	gamerule announceAdvancements false
	gamerule maxEntityCramming 1000


#월드 스폰

	


###################

data merge storage minecraft:rd-123 {rd1:{},rd2:{},rd3:{}}
#data merge storage basic-weapon {rd1:{},rd2:{},rd3:{},nd1:{},nd2:{},nd3:{}}
scoreboard players set ready-player stage 0
scoreboard players set play-now stage 0
scoreboard players set time stage 0
team modify blue seeFriendlyInvisibles false

title @a times 0 60 0

scoreboard objectives add locked-box dummy

scoreboard objectives add nd1sneak-motion0 dummy
scoreboard objectives add nd1sneak-motion2 dummy
scoreboard objectives add rd3sneak-motion0 dummy
scoreboard objectives add rd3sneak-motion2 dummy

scoreboard objectives add spawner-hurt dummy
scoreboard objectives add spawner-motion0 dummy
scoreboard objectives add spawner-motion1 dummy
scoreboard objectives add spawner-motion2 dummy

scoreboard players add @a stage 0