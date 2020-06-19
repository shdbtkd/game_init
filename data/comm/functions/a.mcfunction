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

#---------- used attribute modifiers ----------#
#
#           0-0-0-0-0 generic.boss-health_addition
#
#---------- used attribute modifiers ----------#

#---------- todo list ----------#
#
#           중간 보스, 챌린지룸 // 기능 구현
#
#           미션, 포탈 열리는 기능
#
#           인첸트, 아이템 기부
#
#           소실저주, 귀속저주
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