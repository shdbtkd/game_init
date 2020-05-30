execute as @e[tag=testmap] at @s if entity @e[distance=..1,tag=map-all,tag=!appear] run kill @s
execute as @e[tag=testmap] at @s if block ~ ~-1 ~ minecraft:red_concrete run kill @s

#   replaceitem block 3 12 -16 container.0 map{ to_kill: 1b, tab_item: 1b, tab_type_1:1b, CustomModelData:1}
#   replaceitem block 3 12 -16 container.9 minecraft:knowledge_book{ to_kill: 1b, tab_item: 1b, tab_type_2:1b, CustomModelData:1}
#   replaceitem block 3 12 -16 container.18 minecraft:iron_sword{ to_kill: 1b, tab_item: 1b, tab_type_3:1b, CustomModelData:1}

execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace block ~ 17 ~ container.0 mine ~ 25 ~ stick{drop_contents:true}
execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.13 minecraft:white_stained_glass_pane{display:{Name:'{"text":" "}'}}

### top ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testtop] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.4 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testtop] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.4 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testtop] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.4 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testtop] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.4 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testtop] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.4 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testtop] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.4 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testtop] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.4 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testtop] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.4 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
###########

### top-left ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testtopleft] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.3 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testtopleft] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.3 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testtopleft] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.3 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testtopleft] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.3 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testtopleft] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.3 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testtopleft] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.3 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testtopleft] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.3 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testtopleft] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.3 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
################

### top-left-left ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testtopleftleft] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testtopleftleft] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.2 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testtopleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.2 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testtopleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.2 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testtopleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.2 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testtopleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.2 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testtopleftleft] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.2 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testtopleftleft] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.2 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
#####################

### top-right ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testtopright] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testtopright] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.5 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testtopright] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.5 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testtopright] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.5 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testtopright] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.5 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testtopright] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.5 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testtopright] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.5 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testtopright] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.5 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
################

### top-right-right ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testtoprightright] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.6 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testtoprightright] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.6 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testtoprightright] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.6 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testtoprightright] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.6 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testtoprightright] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.6 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testtoprightright] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.6 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testtoprightright] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.6 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testtoprightright] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.6 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
#######################

### bottom ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testbottom] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.22 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testbottom] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.22 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testbottom] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.22 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testbottom] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.22 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testbottom] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.22 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testbottom] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.22 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testbottom] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.22 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testbottom] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.22 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
###########

### bottom-left ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testbottomleft] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.21 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testbottomleft] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.21 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testbottomleft] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.21 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testbottomleft] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.21 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testbottomleft] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.21 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testbottomleft] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.21 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testbottomleft] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.21 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testbottomleft] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.21 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
###################

### bottom-left-left ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testbottomleftleft] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testbottomleftleft] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.20 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testbottomleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.20 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testbottomleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.20 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testbottomleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.20 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testbottomleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.20 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testbottomleftleft] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.20 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testbottomleftleft] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.20 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
########################

### bottom-right ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testbottomright] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testbottomright] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.23 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testbottomright] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.23 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testbottomright] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.23 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testbottomright] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.23 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testbottomright] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.23 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testbottomright] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.23 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testbottomright] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.23 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
####################

### bottom-right-right ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testbottomrightright] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.24 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testbottomrightright] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.24 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testbottomrightright] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.24 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testbottomrightright] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.24 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testbottomrightright] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.24 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testbottomrightright] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.24 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testbottomrightright] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.24 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testbottomrightright] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.24 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
##########################

### left ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testleft] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.12 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testleft] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.12 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testleft] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.12 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testleft] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.12 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testleft] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.12 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testleft] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.12 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testleft] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.12 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testleft] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.12 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
############

### left-left ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testleftleft] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.11 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testleftleft] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.11 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.11 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.11 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.11 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testleftleft] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.11 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testleftleft] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.11 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testleftleft] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.11 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
#################

### right ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testright] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.14 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testright] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.14 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testright] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.14 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testright] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.14 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testright] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.14 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testright] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.14 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testright] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.14 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testright] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.14 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
#############

### right-right ###
    #---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ---------- common ----------
    execute at @e[tag=testmap,tag=testrightright] if entity @e[distance=..1,tag=map-all,tag=!center,tag=!event,tag=!boss,tag=!hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.15 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ---------- center ----------
    execute at @e[tag=testmap,tag=testrightright] if entity @e[distance=..1,tag=map-all,tag=center] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.15 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ---------- chestevent ----------
    execute at @e[tag=testmap,tag=testrightright] if entity @e[distance=..1,tag=map-all,scores={event-type=1}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.15 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ---------- shopevent ----------
    execute at @e[tag=testmap,tag=testrightright] if entity @e[distance=..1,tag=map-all,scores={event-type=2}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.15 minecraft:lime_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ---------- enchant ----------
    execute at @e[tag=testmap,tag=testrightright] if entity @e[distance=..1,tag=map-all,scores={event-type=3}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.15 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ---------- boss event ----------
    execute at @e[tag=testmap,tag=testrightright] if entity @e[distance=..1,tag=map-all,scores={event-type=4}] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.15 minecraft:pink_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ---------- main boss ----------
    execute at @e[tag=testmap,tag=testrightright] if entity @e[distance=..1,tag=map-all,tag=boss] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.15 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'}}

    #---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ---------- hidden ----------
    execute at @e[tag=testmap,tag=testrightright] if entity @e[distance=..1,tag=map-all,tag=hidden] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 17 ~ container.15 minecraft:black_stained_glass_pane{display:{Name:'{"text":" "}'}}
#################

kill @e[tag=testmap]