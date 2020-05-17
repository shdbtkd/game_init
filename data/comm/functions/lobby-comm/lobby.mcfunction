function comm:lobby-comm/ready/selectclass
execute as @a run function comm:game-start/skill/variable/uuid-getter
execute as @a[x=-5,y=12,z=30.5,dx=11,dy=2,dz=1] run tp @s 0 12 52
execute if entity @a run tp @a[x=0,y=13,z=43,distance=..1] 0 16 0
execute as @a[x=0,y=11,z=80,distance=..3.5,tag=!] if entity @s run tp @s 0.0 53 -1000.0
execute as @a[x=0,y=11,z=80,distance=..3.5,tag=] if entity @s run tp @s 0 12 52

# function comm:lobby-comm/setting/resetscore
