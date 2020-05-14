
#nd1

    execute at @e[tag=n-d-1] as @a[tag=!nd1,distance=..0.7] unless entity @a[tag=nd1] run tag @s remove rd1
    execute at @e[tag=n-d-1] as @a[tag=!nd1,distance=..0.7] unless entity @a[tag=nd1] run tag @s remove rd2
    execute at @e[tag=n-d-1] as @a[tag=!nd1,distance=..0.7] unless entity @a[tag=nd1] run tag @s remove rd3

    execute at @e[tag=n-d-1] as @a[tag=!nd1,distance=..0.7] unless entity @a[tag=nd1] run tag @s remove nd2
    execute at @e[tag=n-d-1] as @a[tag=!nd1,distance=..0.7] unless entity @a[tag=nd1] run tag @s remove nd3

    execute at @e[tag=n-d-1] as @a[tag=!nd1,distance=..0.7] unless entity @a[tag=nd1] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0
    execute at @e[tag=n-d-1] as @a[tag=!nd1,distance=..0.7] unless entity @a[tag=nd1] run tellraw @a ["",{"selector":"@s"},{"text":"(이)가 "},{"selector":"@e[tag=n-d-1]"},{"text":"를 선택하였습니다."}]
    execute at @e[tag=n-d-1] as @a[tag=!nd1,distance=..0.7] unless entity @a[tag=nd1] run tag @s add nd1


#rd1

    execute at @e[tag=r-d-1] as @a[tag=!rd1,distance=..0.7] unless entity @a[tag=rd1] run tag @s remove rd2
    execute at @e[tag=r-d-1] as @a[tag=!rd1,distance=..0.7] unless entity @a[tag=rd1] run tag @s remove rd3

    execute at @e[tag=r-d-1] as @a[tag=!rd1,distance=..0.7] unless entity @a[tag=rd1] run tag @s remove nd1
    execute at @e[tag=r-d-1] as @a[tag=!rd1,distance=..0.7] unless entity @a[tag=rd1] run tag @s remove nd2
    execute at @e[tag=r-d-1] as @a[tag=!rd1,distance=..0.7] unless entity @a[tag=rd1] run tag @s remove nd3

    execute at @e[tag=r-d-1] as @a[tag=!rd1,distance=..0.7] unless entity @a[tag=rd1] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0
    execute at @e[tag=r-d-1] as @a[tag=!rd1,distance=..0.7] unless entity @a[tag=rd1] run tellraw @a ["",{"selector":"@s"},{"text":"(이)가 "},{"selector":"@e[tag=r-d-1]"},{"text":"를 선택하였습니다."}]
    execute at @e[tag=r-d-1] as @a[tag=!rd1,distance=..0.7] unless entity @a[tag=rd1] run tag @s add rd1




#nd2

    execute at @e[tag=n-d-2] as @a[tag=!nd2,distance=..0.7] unless entity @a[tag=nd2] run tag @s remove rd1
    execute at @e[tag=n-d-2] as @a[tag=!nd2,distance=..0.7] unless entity @a[tag=nd2] run tag @s remove rd2
    execute at @e[tag=n-d-2] as @a[tag=!nd2,distance=..0.7] unless entity @a[tag=nd2] run tag @s remove rd3

    execute at @e[tag=n-d-2] as @a[tag=!nd2,distance=..0.7] unless entity @a[tag=nd2] run tag @s remove nd1
    execute at @e[tag=n-d-2] as @a[tag=!nd2,distance=..0.7] unless entity @a[tag=nd2] run tag @s remove nd3

    execute at @e[tag=n-d-2] as @a[tag=!nd2,distance=..0.7] unless entity @a[tag=nd2] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0
    execute at @e[tag=n-d-2] as @a[tag=!nd2,distance=..0.7] unless entity @a[tag=nd2] run tellraw @a ["",{"selector":"@s"},{"text":"(이)가 "},{"selector":"@e[tag=n-d-2]"},{"text":"를 선택하였습니다."}]
    execute at @e[tag=n-d-2] as @a[tag=!nd2,distance=..0.7] unless entity @a[tag=nd2] run tag @s add nd2


#rd2

    execute at @e[tag=r-d-2] as @a[tag=!rd2,distance=..0.7] unless entity @a[tag=rd2] run tag @s remove rd1
    execute at @e[tag=r-d-2] as @a[tag=!rd2,distance=..0.7] unless entity @a[tag=rd2] run tag @s remove rd3

    execute at @e[tag=r-d-2] as @a[tag=!rd2,distance=..0.7] unless entity @a[tag=rd2] run tag @s remove nd1
    execute at @e[tag=r-d-2] as @a[tag=!rd2,distance=..0.7] unless entity @a[tag=rd2] run tag @s remove nd2
    execute at @e[tag=r-d-2] as @a[tag=!rd2,distance=..0.7] unless entity @a[tag=rd2] run tag @s remove nd3

    execute at @e[tag=r-d-2] as @a[tag=!rd2,distance=..0.7] unless entity @a[tag=rd2] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0
    execute at @e[tag=r-d-2] as @a[tag=!rd2,distance=..0.7] unless entity @a[tag=rd2] run tellraw @a ["",{"selector":"@s"},{"text":"(이)가 "},{"selector":"@e[tag=r-d-2]"},{"text":"를 선택하였습니다."}]
    execute at @e[tag=r-d-2] as @a[tag=!rd2,distance=..0.7] unless entity @a[tag=rd2] run tag @s add rd2



#nd3

    execute at @e[tag=n-d-3] as @a[tag=!nd3,distance=..0.7] unless entity @a[tag=nd3] run tag @s remove rd1
    execute at @e[tag=n-d-3] as @a[tag=!nd3,distance=..0.7] unless entity @a[tag=nd3] run tag @s remove rd2
    execute at @e[tag=n-d-3] as @a[tag=!nd3,distance=..0.7] unless entity @a[tag=nd3] run tag @s remove rd3

    execute at @e[tag=n-d-3] as @a[tag=!nd3,distance=..0.7] unless entity @a[tag=nd3] run tag @s remove nd1
    execute at @e[tag=n-d-3] as @a[tag=!nd3,distance=..0.7] unless entity @a[tag=nd3] run tag @s remove nd2

    execute at @e[tag=n-d-3] as @a[tag=!nd3,distance=..0.7] unless entity @a[tag=nd3] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0
    execute at @e[tag=n-d-3] as @a[tag=!nd3,distance=..0.7] unless entity @a[tag=nd3] run tellraw @a ["",{"selector":"@s"},{"text":"(이)가 "},{"selector":"@e[tag=n-d-3]"},{"text":"를 선택하였습니다."}]
    execute at @e[tag=n-d-3] as @a[tag=!nd3,distance=..0.7] unless entity @a[tag=nd3] run tag @s add nd3


#rd3

    execute at @e[tag=r-d-3] as @a[tag=!rd3,distance=..0.7] unless entity @a[tag=rd3] run tag @s remove rd1
    execute at @e[tag=r-d-3] as @a[tag=!rd3,distance=..0.7] unless entity @a[tag=rd3] run tag @s remove rd2

    execute at @e[tag=r-d-3] as @a[tag=!rd3,distance=..0.7] unless entity @a[tag=rd3] run tag @s remove nd1
    execute at @e[tag=r-d-3] as @a[tag=!rd3,distance=..0.7] unless entity @a[tag=rd3] run tag @s remove nd2
    execute at @e[tag=r-d-3] as @a[tag=!rd3,distance=..0.7] unless entity @a[tag=rd3] run tag @s remove nd3

    execute at @e[tag=r-d-3] as @a[tag=!rd3,distance=..0.7] unless entity @a[tag=rd3] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0
    execute at @e[tag=r-d-3] as @a[tag=!rd3,distance=..0.7] unless entity @a[tag=rd3] run tellraw @a ["",{"selector":"@s"},{"text":"(이)가 "},{"selector":"@e[tag=r-d-3]"},{"text":"를 선택하였습니다."}]
    execute at @e[tag=r-d-3] as @a[tag=!rd3,distance=..0.7] unless entity @a[tag=rd3] run tag @s add rd3




##
