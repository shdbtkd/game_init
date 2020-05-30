
#골드

#얻음

#1-5

execute as @s[scores={emerald=1..64}] unless data block ~ ~21 ~ Items[{ Slot: 5b, id: "minecraft:emerald", tag:{display:{Name:'{"text":"에메랄드","color":"green","italic":false}'}} }] run replaceitem block ~ 21 ~ container.5 minecraft:emerald{display:{Name:'{"text":"에메랄드","color":"green","italic":false}'}} 1
execute as @s[scores={emerald=1..64}] store result block ~ 21 ~ Items[{ Slot: 5b, id: "minecraft:emerald", tag:{display:{Name:'{"text":"에메랄드","color":"green","italic":false}'}} }].Count double 1 run scoreboard players get @s emerald
execute as @s[scores={emerald=65..}] run replaceitem block ~ 21 ~ container.5 minecraft:emerald{display:{Name:'{"text":"에메랄드","color":"green","italic":false}'}} 64

execute as @a[scores={drop-emerald=1}] run scoreboard players remove @s emerald 1
execute as @a[scores={drop-emerald=2}] run scoreboard players remove @s emerald 2
execute as @a[scores={drop-emerald=3}] run scoreboard players remove @s emerald 3
execute as @a[scores={drop-emerald=4}] run scoreboard players remove @s emerald 4
execute as @a[scores={drop-emerald=5}] run scoreboard players remove @s emerald 5



#6-10

execute as @a[scores={drop-emerald=6}] run scoreboard players remove @s emerald 6
execute as @a[scores={drop-emerald=7}] run scoreboard players remove @s emerald 7
execute as @a[scores={drop-emerald=8}] run scoreboard players remove @s emerald 8
execute as @a[scores={drop-emerald=9}] run scoreboard players remove @s emerald 9
execute as @a[scores={drop-emerald=10}] run scoreboard players remove @s emerald 10


#11-15

execute as @a[scores={drop-emerald=11}] run scoreboard players remove @s emerald 11
execute as @a[scores={drop-emerald=12}] run scoreboard players remove @s emerald 12
execute as @a[scores={drop-emerald=13}] run scoreboard players remove @s emerald 13
execute as @a[scores={drop-emerald=14}] run scoreboard players remove @s emerald 14
execute as @a[scores={drop-emerald=15}] run scoreboard players remove @s emerald 15

#16-20

execute as @a[scores={drop-emerald=16}] run scoreboard players remove @s emerald 16
execute as @a[scores={drop-emerald=17}] run scoreboard players remove @s emerald 17
execute as @a[scores={drop-emerald=18}] run scoreboard players remove @s emerald 18
execute as @a[scores={drop-emerald=19}] run scoreboard players remove @s emerald 19
execute as @a[scores={drop-emerald=20}] run scoreboard players remove @s emerald 20



#21-25

execute as @a[scores={drop-emerald=21}] run scoreboard players remove @s emerald 21
execute as @a[scores={drop-emerald=22}] run scoreboard players remove @s emerald 22
execute as @a[scores={drop-emerald=23}] run scoreboard players remove @s emerald 23
execute as @a[scores={drop-emerald=14}] run scoreboard players remove @s emerald 14
execute as @a[scores={drop-emerald=25}] run scoreboard players remove @s emerald 25


#26-30

execute as @a[scores={drop-emerald=26}] run scoreboard players remove @s emerald 26
execute as @a[scores={drop-emerald=27}] run scoreboard players remove @s emerald 27
execute as @a[scores={drop-emerald=28}] run scoreboard players remove @s emerald 28
execute as @a[scores={drop-emerald=29}] run scoreboard players remove @s emerald 29
execute as @a[scores={drop-emerald=30}] run scoreboard players remove @s emerald 30

#31-35

execute as @a[scores={drop-emerald=31}] run scoreboard players remove @s emerald 31
execute as @a[scores={drop-emerald=32}] run scoreboard players remove @s emerald 32
execute as @a[scores={drop-emerald=33}] run scoreboard players remove @s emerald 33
execute as @a[scores={drop-emerald=34}] run scoreboard players remove @s emerald 34
execute as @a[scores={drop-emerald=35}] run scoreboard players remove @s emerald 35



#36-40

execute as @a[scores={drop-emerald=36}] run scoreboard players remove @s emerald 36
execute as @a[scores={drop-emerald=37}] run scoreboard players remove @s emerald 37
execute as @a[scores={drop-emerald=38}] run scoreboard players remove @s emerald 38
execute as @a[scores={drop-emerald=39}] run scoreboard players remove @s emerald 39
execute as @a[scores={drop-emerald=40}] run scoreboard players remove @s emerald 40


#41-45

execute as @a[scores={drop-emerald=41}] run scoreboard players remove @s emerald 41
execute as @a[scores={drop-emerald=42}] run scoreboard players remove @s emerald 42
execute as @a[scores={drop-emerald=43}] run scoreboard players remove @s emerald 43
execute as @a[scores={drop-emerald=44}] run scoreboard players remove @s emerald 44
execute as @a[scores={drop-emerald=45}] run scoreboard players remove @s emerald 45

#46-50

execute as @a[scores={drop-emerald=46}] run scoreboard players remove @s emerald 46
execute as @a[scores={drop-emerald=47}] run scoreboard players remove @s emerald 47
execute as @a[scores={drop-emerald=48}] run scoreboard players remove @s emerald 48
execute as @a[scores={drop-emerald=49}] run scoreboard players remove @s emerald 49
execute as @a[scores={drop-emerald=50}] run scoreboard players remove @s emerald 50



#51-55

execute as @a[scores={drop-emerald=51}] run scoreboard players remove @s emerald 51
execute as @a[scores={drop-emerald=52}] run scoreboard players remove @s emerald 52
execute as @a[scores={drop-emerald=53}] run scoreboard players remove @s emerald 53
execute as @a[scores={drop-emerald=54}] run scoreboard players remove @s emerald 54
execute as @a[scores={drop-emerald=55}] run scoreboard players remove @s emerald 55


#56-60

execute as @a[scores={drop-emerald=56}] run scoreboard players remove @s emerald 56
execute as @a[scores={drop-emerald=57}] run scoreboard players remove @s emerald 57
execute as @a[scores={drop-emerald=58}] run scoreboard players remove @s emerald 58
execute as @a[scores={drop-emerald=59}] run scoreboard players remove @s emerald 59
execute as @a[scores={drop-emerald=60}] run scoreboard players remove @s emerald 60

#61-64

execute as @a[scores={drop-emerald=61}] run scoreboard players remove @s emerald 61
execute as @a[scores={drop-emerald=62}] run scoreboard players remove @s emerald 62
execute as @a[scores={drop-emerald=63}] run scoreboard players remove @s emerald 63
execute as @a[scores={drop-emerald=64}] run scoreboard players remove @s emerald 64
execute as @a[scores={drop-emerald=1..}] run scoreboard players set @s drop-emerald 0
execute as @s[scores={emerald=0}] run replaceitem block ~ 21 ~ container.5 air


execute as @s[scores={undying=1}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"1개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=2}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"2개 남음","color":"gray","italic":false}']}} 
execute as @s[scores={undying=3}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"3개 남음","color":"gray","italic":false}']}} 
execute as @s[scores={undying=4}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"4개 남음","color":"gray","italic":false}']}} 
execute as @s[scores={undying=5}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"5개 남음","color":"gray","italic":false}']}} 



#6-10

execute as @s[scores={undying=6}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"6개 남음","color":"gray","italic":false}']}} 
execute as @s[scores={undying=7}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"7개 남음","color":"gray","italic":false}']}} 
execute as @s[scores={undying=8}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"8개 남음","color":"gray","italic":false}']}} 
execute as @s[scores={undying=9}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"9개 남음","color":"gray","italic":false}']}} 
execute as @s[scores={undying=10}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"10개 남음","color":"gray","italic":false}']}}


#11-15

execute as @s[scores={undying=11}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"11개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=12}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"12개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=13}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"13개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=14}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"14개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=15}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"15개 남음","color":"gray","italic":false}']}}

#16-20

execute as @s[scores={undying=16}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"16개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=17}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"17개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=18}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"18개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=19}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"19개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=20}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"20개 남음","color":"gray","italic":false}']}}



#21-25

execute as @s[scores={undying=21}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"21개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=22}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"22개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=23}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"23개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=24}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"24개 남음","color":"gray","italic":false}']}} 1
execute as @s[scores={undying=25}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"25개 남음","color":"gray","italic":false}']}}


#26-30

execute as @s[scores={undying=26}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"26개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=27}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"27개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=28}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"28개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=29}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"29개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=30}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"30개 남음","color":"gray","italic":false}']}}

#31-35

execute as @s[scores={undying=31}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"31개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=32}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"32개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=33}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"33개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=34}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"34개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=35}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"35개 남음","color":"gray","italic":false}']}}



#36-40

execute as @s[scores={undying=36}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"36개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=37}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"37개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=38}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"38개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=39}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"39개 남음","color":"gray","italic":false}']}}
execute as @s[scores={undying=40}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"40개 남음","color":"gray","italic":false}']}}


#41-45

execute as @s[scores={undying=41..}] run replaceitem entity @s hotbar.1 minecraft:totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"yellow","italic":false}', Lore:['{"text":"40개 이상, 솔직히 이정도면 그만하자","color":"gray"}']}}



#버림

#버림

execute as @a[scores={D_undying=1..}] run scoreboard players remove @s undying 1
execute as @a[scores={D_undying=1..}] run function comm:game-start/items/itemself
execute as @a[scores={D_undying=1..}] run scoreboard players set @s D_undying 0

execute as @s[scores={undying=0},nbt={Inventory:[{Slot: 1b, id: "minecraft:totem_of_undying"}]}] run replaceitem entity @s hotbar.1 air
#사용

execute as @a[scores={U_undying=1..}] run scoreboard players remove @s undying 1
execute as @a[scores={U_undying=1..}] run function comm:game-start/items/itemself
execute as @a[scores={U_undying=1..}] run scoreboard players set @s U_undying 0


execute as @s[scores={p-tnt=..0},nbt={Inventory:[{Slot: 2b, id: "minecraft:tnt"}]}] run replaceitem block ~ 21 ~ container.0 minecraft:air
execute as @s[scores={p-tnt=1..}] unless data block ~ ~21 ~ Items[{ Slot: 0b, id: "minecraft:tnt", tag:{display:{Name:'{"text":"TNT","color":"yellow","italic":false}'}, display_item:1b} }] run replaceitem block ~ 21 ~ container.0 minecraft:tnt{display:{Name:'{"text":"TNT","color":"yellow","italic":false}'}}
execute as @s[scores={p-tnt=1..}] store result block ~ 21 ~ Items[{ Slot: 0b, id: "minecraft:tnt", tag:{display:{Name:'{"text":"TNT","color":"yellow","italic":false}'}, display_item:1b} }].Count double 1 run scoreboard players get @s p-tnt

execute as @s[scores={emmer=0}] run replaceitem block ~ 21 ~ container.6 air
execute as @s[scores={emmer=1..}] unless data block ~ ~21 ~ Items[{ Slot: 6b, id: "minecraft:arrow", tag:{display:{Name:'{"text":"ammo","color":"light_purple","bold":true,"italic":false}'}, ammo:1b, display_item:1b} }] run replaceitem block ~ 21 ~ container.6 minecraft:arrow{display:{Name:'{"text":"ammo","color":"light_purple","bold":true,"italic":false}'},ammo:1b}
execute as @s[scores={emmer=1..}] store result block ~ 21 ~ Items[{ Slot: 6b, id: "minecraft:arrow", tag:{display:{Name:'{"text":"ammo","color":"light_purple","bold":true,"italic":false}'}, ammo:1b, display_item:1b} }].Count double 1 run scoreboard players get @s emmer

execute as @s[scores={drop-potion=1..}] run replaceitem block ~ 21 ~ container.1 minecraft:air
execute as @s[scores={drop-potion=1..}] run scoreboard players set @s drop-potion 0

