### 팀세팅 ###

	team add blue {"text":"player","bold":"true"}
	team modify blue color light_purple
	team modify blue collisionRule pushOtherTeams
	team modify blue friendlyFire false
	team modify blue seeFriendlyInvisibles true
	team join blue @a

	team add red {"text":"mob","bold":"true"}

	team modify blue prefix {"text":"","bold":"true","color":"white"}
	team modify blue suffix {"text":"","bold":"true","color":"white"}
############


### 그래이 ###
	team add gray
	team modify gray color dark_gray
	
	team modify gray prefix {"text":"-------","color":"dark_gray"}
	team modify gray suffix {"text":"-------","color":"dark_gray"}
############


### 스코어 ###

	team join gray --*--
	team join gray -***-
	team join stage 스테이지:

	scoreboard players set ----- out 1
	scoreboard players set 죽은사람: out 3
	scoreboard players set --*-- out 4

	scoreboard players set 스테이지: out 8
	scoreboard players set -***- out 9
	scoreboard players reset @a[team=blue] out
############