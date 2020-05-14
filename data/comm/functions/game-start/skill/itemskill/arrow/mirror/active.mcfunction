
#   x, y축은 시야가 뒤쪽
#   z축은 시야가 앞쪽
#   ^^^ 이용해서 만들기

data modify entity @s inGround set value 0b

execute unless block ~0.2 ~ ~ air if score @s mirror-motion0 matches 0.. run function comm:game-start/skill/itemskill/arrow/mirror/minus-motion0
execute unless block ~0.2 ~ ~ air if score @s mirror-motion0 matches ..0 run function comm:game-start/skill/itemskill/arrow/mirror/plus-motion0
execute unless block ~-0.2 ~ ~ air if score @s mirror-motion0 matches 0.. run function comm:game-start/skill/itemskill/arrow/mirror/plus-motion0
execute unless block ~-0.2 ~ ~ air if score @s mirror-motion0 matches ..0 run function comm:game-start/skill/itemskill/arrow/mirror/minus-motion0

execute unless block ~ ~0.2 ~ air if score @s mirror-motion1 matches 0.. run function comm:game-start/skill/itemskill/arrow/mirror/minus-motion1
execute unless block ~ ~0.2 ~ air if score @s mirror-motion1 matches ..0 run function comm:game-start/skill/itemskill/arrow/mirror/plus-motion1
execute unless block ~ ~-0.2 ~ air if score @s mirror-motion1 matches 0.. run function comm:game-start/skill/itemskill/arrow/mirror/plus-motion1
execute unless block ~ ~-0.2 ~ air if score @s mirror-motion1 matches ..0 run function comm:game-start/skill/itemskill/arrow/mirror/minus-motion1

execute unless block ~ ~ ~0.2 air if score @s mirror-motion0 matches 0.. run function comm:game-start/skill/itemskill/arrow/mirror/minus-motion2
execute unless block ~ ~ ~0.2 air if score @s mirror-motion0 matches ..0 run function comm:game-start/skill/itemskill/arrow/mirror/plus-motion2
execute unless block ~ ~ ~-0.2 air if score @s mirror-motion0 matches 0.. run function comm:game-start/skill/itemskill/arrow/mirror/plus-motion2
execute unless block ~ ~ ~-0.2 air if score @s mirror-motion0 matches ..0 run function comm:game-start/skill/itemskill/arrow/mirror/minus-motion2


#execute unless block ~0.1 ~ ~ air if score @s mirror-motion0 matches 0.. run say comm:game-start/skill/itemskill/arrow/mirror/minus-motion0
#execute unless block ~0.1 ~ ~ air if score @s mirror-motion0 matches ..0 run say comm:game-start/skill/itemskill/arrow/mirror/plus-motion0
#execute unless block ~-0.1 ~ ~ air if score @s mirror-motion0 matches 0.. run say comm:game-start/skill/itemskill/arrow/mirror/plus-motion0
#execute unless block ~-0.1 ~ ~ air if score @s mirror-motion0 matches ..0 run say comm:game-start/skill/itemskill/arrow/mirror/minus-motion0

#execute unless block ~ ~0.1 ~ air if score @s mirror-motion1 matches 0.. run say comm:game-start/skill/itemskill/arrow/mirror/minus-motion1 111
#execute unless block ~ ~0.1 ~ air if score @s mirror-motion1 matches ..0 run say comm:game-start/skill/itemskill/arrow/mirror/plus-motion1
#execute unless block ~ ~-0.1 ~ air if score @s mirror-motion1 matches 0.. run say comm:game-start/skill/itemskill/arrow/mirror/plus-motion1
#execute unless block ~ ~-0.1 ~ air if score @s mirror-motion1 matches ..0 run say comm:game-start/skill/itemskill/arrow/mirror/minus-motion1 222

#execute unless block ~ ~ ~0.1 air if score @s mirror-motion0 matches 0.. run say comm:game-start/skill/itemskill/arrow/mirror/minus-motion2
#execute unless block ~ ~ ~0.1 air if score @s mirror-motion0 matches ..0 run say comm:game-start/skill/itemskill/arrow/mirror/plus-motion2
#execute unless block ~ ~ ~-0.1 air if score @s mirror-motion0 matches 0.. run say comm:game-start/skill/itemskill/arrow/mirror/plus-motion2
#execute unless block ~ ~ ~-0.1 air if score @s mirror-motion0 matches ..0 run say comm:game-start/skill/itemskill/arrow/mirror/minus-motion2

#execute as @s at @s run function comm:game-start/skill/itemskill/arrow/mirror/getmotion