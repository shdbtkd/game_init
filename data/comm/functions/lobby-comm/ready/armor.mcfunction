#summon minecraft:armor_stand -8 27 -1007 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["maplodder-armor"]}

#summon armor_stand -2 51.3 -1008 {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:"{\"text\":\"게임시작\",\"color\":\"gold\",\"bold\":\"true\"}",CustomNameVisible:1b,Tags:["maplodder-armor"]}

#summon armor_stand 1 51.3 -1008 {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:"{\"text\":\"로비로 돌아가기\",\"color\":\"gold\",\"bold\":\"true\"}",CustomNameVisible:1b}


#클래스

summon minecraft:item 2 15 63 {CustomNameVisible:1b,Tags:["delay","select","n-d-1"],CustomName:'{"text":"근거리 딜러 1","color":"gold","bold":true}',Age:-32768,Health:9999999,PickupDelay:32767,Item:{id:"minecraft:iron_sword",Count:1b}}

summon minecraft:item -2 15 63 {CustomNameVisible:1b,Tags:["delay","select","r-d-1"],CustomName:'{"text":"원거리 딜러 1","color":"gold","bold":true}',Age:-32768,Health:9999999,PickupDelay:32767,Item:{id:"minecraft:bow",Count:1b}}


summon minecraft:item 2 15 67 {CustomNameVisible:1b,Tags:["delay","select","n-d-2"],CustomName:'{"text":"근거리 딜러 2","color":"aqua","bold":true}',Age:-32768,Health:9999999,PickupDelay:32767,Item:{id:"minecraft:trident",Count:1b}}

summon minecraft:item -2 15 67 {CustomNameVisible:1b,Tags:["delay","select","r-d-2"],CustomName:'{"text":"원거리 딜러 2","color":"aqua","bold":true}',Age:-32768,Health:9999999,PickupDelay:32767,Item:{id:"minecraft:crossbow",Count:1b}}


summon minecraft:item 2 15 71 {CustomNameVisible:1b,Tags:["delay","select","n-d-3"],CustomName:'{"text":"근거리 딜러 3","color":"green","bold":true}',Age:-32768,Health:9999999,PickupDelay:32767,Item:{id:"minecraft:iron_axe",Count:1b}}

summon minecraft:item -2 15 71 {CustomNameVisible:1b,Tags:["delay","select","r-d-3"],CustomName:'{"text":"원거리 딜러 3","color":"green","bold":true}',Age:-32768,Health:9999999,PickupDelay:32767,Item:{id:"minecraft:map",Count:1b}}

### lobby ###
# summon minecraft:armor_stand 0 13 28 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lobby-start"],Passengers:[{id:"minecraft:item",CustomNameVisible:1b,Health:9999999,Tags:["select","start"],CustomName:'{"text":"Enter this potal to game start","color":"light_purple","bold":true,"italic":false}',Item:{id:"minecraft:emerald",Count:1b}}],CustomName:'{"text":"Mine Roguelike","color":"gold","bold":true,"italic":false}'}


# summon minecraft:armor_stand -10 14 19 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lobby-tut"],Passengers:[{id:"minecraft:item",CustomNameVisible:1b,Health:9999999,Tags:["select","tut"],CustomName:'{"text":"none","color":"light_purple","bold":true,"italic":false}',Item:{id:"minecraft:gold_block",Count:1b}}],CustomName:'{"text":"tutorial","color":"gold","bold":true,"italic":false}'}

# summon minecraft:armor_stand 10 14 8 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lobby-set"],Passengers:[{id:"minecraft:item",CustomNameVisible:1b,Health:9999999,Tags:["select","set"],CustomName:'{"text":"step on it","color":"light_purple","bold":true,"italic":false}',Item:{id:"minecraft:gold_block",Count:1b}}],CustomName:'{"text":"setting","color":"gold","bold":true,"italic":false}'}

# summon minecraft:armor_stand 10 14 19 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lobby-pre"],Passengers:[{id:"minecraft:item",CustomNameVisible:1b,Health:9999999,Tags:["select","pre"],CustomName:'{"text":"step on it","color":"light_purple","bold":true,"italic":false}',Item:{id:"minecraft:gold_block",Count:1b}}],CustomName:'{"text":"precautions","color":"gold","bold":true,"italic":false}'}



# summon minecraft:armor_stand 0 13 43 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lobby-back"],Passengers:[{id:"minecraft:item",CustomNameVisible:1b,Health:9999999,Tags:["select","start"],CustomName:'{"text":"back to lobby","color":"light_purple","bold":true,"italic":false}',Item:{id:"minecraft:emerald",Count:1b}}]}
#############

#summon minecraft:armor_stand 13 14 -10 {Tags:["rd2-box"]}





