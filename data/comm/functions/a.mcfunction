# --------------------------------------- #
#   execute this command at every ticks
# --------------------------------------- #

#
execute if score @p stage matches ..0 run function comm:lobby-comm/lobby
execute if score @p stage matches 1.. if score player-all stage matches 1.. run function comm:main
# 
function comm:lobby-comm/ready/count
function comm:game-start/items/preset/test
execute if score player stage matches 1.. run function comm:about-play/map-setting/stage
function comm:game-start/class/count
execute as @a at @s if entity @s[scores={stage=0..}] run effect give @s minecraft:saturation 1000000 0 true

execute if score started stage matches 0 run function comm:lobby-comm/ready/start

# execute if predicate pred:

# 238

#---------- used attribute modifiers ----------#
#
#           0-0-0-0-0 generic.boss-health_addition
#
#---------- used attribute modifiers ----------#

#---------- todo list ----------#
#
#           장신구, 액티브 조합 기능 만들기
#
#           상점의 종류 추가
#
#           가마솥
#           - 효과 증폭
#           - 시간 증폭
#           - 갯수 증폭
#
#           1, 2stage 너무 컨텐츠가 없는듯... 1stage로 줄일까..?
#
#           파밍에 메리트, 다양성이 없음
#           - 상점, 상자, 통 << 에서 장신구, 액티브 나옴
#           - 숨겨진 방
#           - 제단
#
#           중간 보스, 챌린지룸 // 기능 구현
#           - 보상은 액티브 아이템
#
#           포탈 열리는 기능
#
#           인첸트, 아이템 기부
#
#           소실저주, 귀속저주
#
#           비밀방
#           - 제단 히로빈
#           - 의식
#               - 사람의 머리, 보스 머리
#
#           제단 만들기
#           - 위더, 엔더
#           - 상호 작용 방법
#               - 종, 주민
#
#           지금 맵과 상호작용이 되는 것들, 또는 할 것 들
#           - 불을 물병으로 끌 수 있음
#           - 호박 부술수 있음
#           - 상자 열기
#
#           - 첼린지 룸
#           - 용암 폭포 지나가기
#           - 올라가기
#           - 머리 모아서 의식 치르기
#           - 제단에서 축복 받기 // 이벤트 방
#
#---------- todo list ----------#

# A Hat in Time Music - Welcome to Mafia Town OST Extended
# A Hat in Time OST - Welcome to Mafia Town (Remix)
# Duet Musette
# A Hat in Time - Trainwreck of Electro Swing (Remix - OST)
# Staple Stable
# Ride of the Valkyries by Wagner
# 19 Death note Theme
# Gas Pedal
# A Hat in Time OST  - So, Whats The Plan
# TipToes
# Road to Moscow
# Temptation March
# Family Tradition
# Kool Kats
# Laid Back Guitars
# Accordion
# Carny's Dance
# Wagon Wheel - Electronic
# 
# 
# Kevin MacLeod의 Duet Musette은(는) Creative Commons Attribution 라이선스(https://creativecommons.org/licenses/... 따라 라이선스가 부여됩니다. 
# 
# 출처: http://incompetech.com/music/royalty-... 
# 
# 아티스트: http://incompetech.com/
# 
# Audionautix의 Temptation March은(는) Creative Commons Attribution 라이선스(https://creativecommons.org/licenses/... 따라 라이선스가 부여됩니다. 
# 
# 아티스트: http://audionautix.com/
# Kevin MacLeod의 Kool Kats은(는) Creative Commons Attribution 라이선스(https://creativecommons.org/licenses/... 따라 라이선스가 부여됩니다.
# 출처: http://incompetech.com/music/royalty-...
# 아티스트: http://incompetech.com/
# Kevin MacLeod의 Laid Back Guitars은(는) Creative Commons Attribution 라이선스(https://creativecommons.org/licenses/... 따라 라이선스가 부여됩니다. 
# 
# 출처: http://incompetech.com/music/royalty-... 
# 
# 아티스트: http://incompetech.com/
# Kevin MacLeod의 Carny's Dance은(는) Creative Commons Attribution 라이선스(https://creativecommons.org/licenses/... 따라 라이선스가 부여됩니다. 
# 
# 출처: https://soundcloud.com/kevin-9-1/carn... 
# 
# 아티스트: http://incompetech.com/