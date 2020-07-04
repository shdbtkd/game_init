
### 아이템 줍기 ###
    execute as @e[type=minecraft:item,nbt={Item: {tag: { item: 1b } }}] store result score @s pickup-delay run data get entity @s PickupDelay
    # 아이템
    execute as @e[type=item,tag=item] if data entity @s Item.tag{item:1b,basicitem:1b} if data entity @s {PickupDelay:-1s} at @s store result score @s count-itemplayer if entity @a[distance=..0.3]
    execute at @a as @e[type=item,tag=item,limit=1,sort=nearest] if data entity @s Item.tag{item:1b,basicitem:1b} if data entity @s {PickupDelay:-1s} at @s if score @s count-itemplayer matches 1 run function comm:game-start/items/item-get
    execute as @e[type=item,tag=item] if data entity @s Item.tag{item:1b,basicitem:1b} at @s unless entity @p[distance=..0.5] run data merge entity @s {PickupDelay:-1,Age:-32768}

    # 포션

    execute at @a as @e[type=item,tag=!pickup-potion,scores={pickup-delay=..-1},limit=1,sort=nearest,distance=..0.5] if data entity @s Item.tag{potion: 1b} at @s if score @s count-itemplayer matches 1 if score @p[scores={use-potion=..0}] pickup-potion matches ..0 run function comm:game-start/items/potion-get
    execute as @e[type=item,tag=!pickup-potion,scores={pickup-delay=..5}] if data entity @s Item.tag{potion: 1b} at @s run data merge entity @s {PickupDelay:-1,Age:-32768}
    execute as @e[type=item,tag=!pickup-potion,scores={pickup-delay=..-1}] if data entity @s Item.tag{potion: 1b} at @s store result score @s count-itemplayer if entity @a[distance=..0.5]
    
    # 엑티브 아이템

    execute at @a as @e[type=item,tag=active_item,tag=!pickup-active,scores={pickup-delay=..-1},limit=1,sort=nearest,distance=..0.5] if data entity @s Item.tag{activeitem: 1b} at @s if score @s count-itemplayer matches 1 if score @p active_pickup matches ..0 run function comm:game-start/items/active-get
    execute as @e[type=item,tag=active_item,tag=!pickup-active,scores={pickup-delay=..5}] if data entity @s Item.tag{activeitem: 1b} at @s run data merge entity @s {PickupDelay:-1,Age:-32768}
    execute as @e[type=item,tag=active_item,tag=!pickup-active,scores={pickup-delay=..-1}] if data entity @s Item.tag{activeitem: 1b} at @s store result score @s count-itemplayer if entity @a[distance=..0.5]

    # 장신구 아이템

    execute as @e[type=item,tag=!jewelry_item] if data entity @s Item.tag{ jewelry_item: 1b } run tag @s add jewelry_item
    execute at @a as @e[type=item,tag=jewelry_item,tag=!pickup-jewelry,scores={pickup-delay=..-1},limit=1,sort=nearest,distance=..0.5] if data entity @s Item.tag{ jewelry_item: 1b } at @s if score @s count-itemplayer matches 1 if score @p jewelry_pickup matches ..0 run function comm:game-start/items/jewelry-get
    execute as @e[type=item,tag=jewelry_item,tag=!pickup-jewelry,scores={pickup-delay=..5}] if data entity @s Item.tag{ jewelry_item: 1b } at @s run data merge entity @s {PickupDelay:-1,Age:-32768}
    execute as @e[type=item,tag=jewelry_item,tag=!pickup-jewelry,scores={pickup-delay=..-1}] if data entity @s Item.tag{ jewelry_item: 1b } at @s store result score @s count-itemplayer if entity @a[distance=..0.5]

################

### count ####

    execute as @a store result score @s inventory-potion run data get entity @s Inventory[].tag{potion:1b}
    execute as @a store result score @s inventory-tnt run data get entity @s Inventory[{id:"minecraft:tnt"}].Count
    execute as @a store result score @s inventory-eme run data get entity @s Inventory[{id:"minecraft:emerald"}].Count
    execute as @a store result score @s inventory-totem run data get entity @s Inventory[{id:"minecraft:totem_of_undying"}].tag.CustomModelData
    execute as @a store result score @s inventory-ammo run data get entity @s Inventory[{tag:{ammo:1b}}].Count

##############

### 아이템 등장 ###

    execute as @e[type=item,tag=item] at @s unless score @s item-index matches 0.. run function comm:game-start/items/item-appearance
    execute as @e[type=item] at @s if data entity @s Item.tag{potion: 0b} run function comm:game-start/items/potion-appearance
    execute as @e[type=item] at @s if data entity @s Item.tag{item:1b,showname:1b} run function comm:game-start/items/item-name

################

### TNT ###

    execute as @a unless score @s p-tnt = @s inventory-tnt run clear @s minecraft:tnt
    execute as @a unless score @s p-tnt = @s inventory-tnt run function comm:game-start/items/itemself
    execute as @a[scores={p-tnt=1..}] unless data entity @s Inventory[{id:"minecraft:tnt"}] run function comm:game-start/items/itemself
    execute as @a[scores={p-tnt=..0}] if data entity @s Inventory[{id:"minecraft:tnt"}] run function comm:game-start/items/itemself

    execute as @a[scores={d-tnt=1..}] at @s unless predicate pred:sneak run function comm:game-start/items/tnt/summon
    execute as @a[scores={d-tnt=1..}] at @s if predicate pred:sneak run function comm:game-start/items/tnt/drop

###########



### 포션 ###
    # 버린거 채크
    execute as @e[type= minecraft:item, nbt= {Item: { tag:  { potion: 1b, inventory: 1b } } }] if data entity @s Thrower at @s run function comm:game-start/items/potion/inventory/drop_check
    execute as @a if data entity @s Inventory[{id: "minecraft:glass_bottle"}] run function comm:game-start/items/itemself
    execute as @a if data entity @s Inventory[{id: "minecraft:glass_bottle"}] run clear @a minecraft:glass_bottle

    execute as @a[scores={use-potion=1..}] run function comm:game-start/items/itemuse
    execute as @a unless score @s pickup-potion = @s inventory-potion run function comm:game-start/items/itemself
###########

### item use ###

    execute as @a[scores={undying=..0}] if data entity @s Inventory[{ Slot:1b }] run replaceitem entity @s hotbar.1 air
    execute as @a[scores={undying=1..}] unless data entity @s Inventory[{ Slot:1b, id:"minecraft:totem_of_undying" }] run function comm:game-start/items/itemself
    execute as @a[scores={undying=..0}] if data entity @s Inventory[{ Slot:1b, id:"minecraft:totem_of_undying" }] run function comm:game-start/items/itemself
    execute as @a unless score @s undying = @s inventory-totom run function comm:game-start/items/itemself
    execute if score @s pickup-potion matches 1.. unless data entity @s Inventory[{ Slot: 3b, tag: {potion:1b} }] run function comm:game-start/items/potion/inventory/delet
    execute as @a[scores={stage=1..}] unless score @s emmer = @s inventory-ammo run function comm:game-start/items/itemself
    execute as @a[scores={emerald=1..}] unless data entity @s Inventory[{ Slot:7b, id: "minecraft:emerald" }] run function comm:game-start/items/itemself
    execute as @a[scores={emerald=..64}] unless score @s emerald = @s inventory-eme run function comm:game-start/items/itemself
    
    
    
    
    
    
    execute as @e[tag=boom] at @s run function comm:game-start/items/tnt/boom/fuse
    

################


### stats ###

    function comm:game-start/items/attribute/set

############


function comm:game-start/items/potion/inventory/use-check

function comm:game-start/items/containers/defind