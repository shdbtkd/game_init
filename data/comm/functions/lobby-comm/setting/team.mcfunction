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
	team add count-player
	team join count-player 죽은사람:

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

team add box-t
team add box-m
team add box-b

team modify box-t displayName {"text":"box-t","bold":"true"}
team modify box-m displayName {"text":"box-m","bold":"true"}
team modify box-m color gold
team modify box-b displayName {"text":"box-b","bold":"true"}

scoreboard players set ▨ out 7
scoreboard players set ▩ out 6
scoreboard players set ▧ out 5

team join box-t ▨
team join box-m ▩
team join box-b ▧

execute if score @a[limit=1] stage matches ..0 run team modify box-t prefix {"text":"     ▩ ▩ ","color":"white"}
execute if score @a[limit=1] stage matches ..0 run team modify box-t suffix {"text":" ▩ ▩ ","color":"white"}

execute if score @a[limit=1] stage matches ..0 run team modify box-m prefix {"text":"     ▩ ▩ ","color":"white"}
execute if score @a[limit=1] stage matches ..0 run team modify box-m suffix {"text":" ▩ ▩ ","color":"white"}

execute if score @a[limit=1] stage matches ..0 run team modify box-b prefix {"text":"     ▩ ▩ ","color":"white"}
execute if score @a[limit=1] stage matches ..0 run team modify box-b suffix {"text":" ▩ ▩ ","color":"white"}