
scoreboard players operation @s inven_tab-info = @s inven_tab-type
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:about-play/arrow-setting/hotbar
scoreboard players reset @s inven_tab-type
execute as @s at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.3 1

# 들어올때 비어있는 상태 
# 스코어 체크 / 스코어 초기화
# 체크 스코어