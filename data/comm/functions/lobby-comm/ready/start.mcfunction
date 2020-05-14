execute as @a if entity @s[tag=ready,tag=!ready-end] run function comm:lobby-comm/ready/show-start
execute as @a if entity @s[tag=backlobby,tag=!backlobby-end] run function comm:lobby-comm/ready/show-back
#               준비실에 사람이 1명 이상                    준비실에 있는 사람의 수와 접속중인 사람의 수가 같음             게임을 시작하지 않음
execute if score ready-player stage matches 1.. if score ready-player stage = player-all stage if entity @a[scores={stage=0}] if score next stage matches 0 run scoreboard players set next stage 1
execute if score ready-player stage matches 1.. if score ready-player stage = player-all stage if entity @a[scores={stage=0}] if score next stage matches 1 as @a run function comm:lobby-comm/ready/showready
execute if score ready-player stage matches 1.. if score ready-player stage = player-all stage if entity @a[scores={stage=0}] if score next stage matches 1 run scoreboard players set next stage 2

execute if score ready-player stage matches 1.. if score ready-player stage = player stage if score go-player stage = player stage if score next stage matches 2 run function comm:lobby-comm/ready/setstart

execute if score start map_lod matches 1..14 run function comm:about-play/map-setting/stage-load

#
# ready 태그 추가하구
# 게임 시작하게 만들기
#
#
# ready player = 준비실 안에 있는 플래이어
# go player = 게임시작을 누른 플레이어
#
#
#
#
#
#
#