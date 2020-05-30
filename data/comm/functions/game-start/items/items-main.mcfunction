# summon item ~ ~ ~ {Tags:["item"],Item:{id:"minecraft:enchanted_golden_apple",Count:1b,tag:{display:{Name:'{"text":"빛나는 황금사과","color":"light_purple","bold":true,"italic":false}'},item:1b,hero:1b,showname:1b,basicitem:1b}}}
# summon item ~ ~ ~ {Tags:["item","delay"],Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:'{"text":"화살","color":"white","bold":true,"italic":false}'},item:1b,showname:1b,basicitem:1b,arrow__1:1b}}}

# item index
# execute as @a at @s store result score @s item-index if data entity @s Inventory[].tag{item:1b}

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
    
    #execute as @e[type=item] if data entity @s Item.tag{item:1b,potion:1b} at @s unless entity @p[scores={pickup-potion=..0},distance=..0.5] run data merge entity @s {PickupDelay:-1,Age:-32768}
    #execute as @e[type=item] if data entity @s Item.tag{item:1b,potion:1b} if data entity @s {PickupDelay:-1s} at @s if entity @p[scores={pickup-potion=..0},distance=..0.5] run data merge entity @s {PickupDelay:15,Age:-32768}

    # 체력회복
    # execute as @e[type=item] if data entity @s Item.tag{item:1b,potion:1b} at @s unless entity @p[scores={pickup-potion=..0},distance=..0.5] run data merge entity @s {PickupDelay:-1,Age:-32768}
    # execute as @e[type=item] if data entity @s Item.tag{item:1b,potion:1b} if data entity @s {PickupDelay:-1s} at @s if entity @p[scores={pickup-potion=..0},distance=..0.5] run data merge entity @s {PickupDelay:15,Age:-32768}

################

### count ####

    execute as @a store result score @s inventory-potion if data entity @s Inventory[].tag{potion:1b}
    execute as @a store result score @s inventory-tnt run data get entity @s Inventory[{id:"minecraft:tnt"}].Count
    execute as @a store result score @s inventory-eme run data get entity @s Inventory[{id:"minecraft:emerald"}].Count
    # execute as @a store result score @s inventory-totem if data entity @s Inventory[{id:"minecraft:totem_of_undying"}]
    execute as @a store result score @s inventory-ammo run data get entity @s Inventory[{tag:{ammo:1b}}].Count

##############

### 아이템 등장 ###

    execute as @e[type=item,tag=item] at @s unless score @s item-index matches 0.. run function comm:game-start/items/item-appearance
    execute as @e[type=item] at @s if data entity @s Item.tag{potion: 0b} run function comm:game-start/items/potion-appearance
    execute as @e[type=item] at @s if data entity @s Item.tag{item:1b,showname:1b} run function comm:game-start/items/item-name

################

### 포션 ###

    execute as @a unless data entity @s[scores={pickup-potion=1..}] Inventory[].tag{potion:1b} run scoreboard players set @s pickup-potion 0
    #execute as @a if data entity @s[scores={pickup-potion=1..}] Inventory[{id: "minecraft:potion"}].tag{potion:1b} run function comm:game-start/items/potion-replace
    #execute as @a if data entity @s[scores={pickup-potion=1..}] Inventory[{id: "minecraft:splash_potion"}].tag{potion:1b} run function comm:game-start/items/potion-replace
    #execute as @a if data entity @s[scores={pickup-potion=1..}] Inventory[{id: "minecraft:lingering_potion"}].tag{potion:1b} run function comm:game-start/items/potion-replace

###########

### 화살 ###

    

###########

### get ###

    # execute as @a[tag=rd1] store result score @s item-index if data block 182 71 341 Items[].tag{item:1b,basicitem:1b}
    # execute as @a[tag=rd1] store result score @s beforeitem-index if data block 182 71 341 Items[].tag{item:1b,basicitem:1b}

###########

# execute as @a at @s if data entity @e[type=item,limit=1,sort=nearest,distance=..5] Item.tag{item:1b,hero:1b} run say 1 

# execute if data entity @s Inventory[{id:"minecraft:enchanted_golden_apple"}].tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}]
# execute if data entity @s Inventory[{id:"minecraft:enchanted_golden_apple"}].tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}]
# execute if data entity @s Inventory[{id:"minecraft:enchanted_golden_apple"}].tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]

### item use ###

    # execute as @a[scores={undying=..0}] if data entity @s Inventory[{ Slot:1b }] run replaceitem entity @s hotbar.1 air
    # execute as @a[scores={undying=1..}] unless score @s inventory-totem matches 1 run function comm:game-start/items/itemself
    # execute as @a[scores={undying=..0}] unless score @s inventory-totem matches ..0 run function comm:game-start/items/itemself
    execute if score @s pickup-potion matches 1.. unless data entity @s Inventory[{ Slot: 3b, tag: {potion:1b} }] run function comm:game-start/items/potion/inventory/delet
    execute as @a[scores={stage=1..}] unless score @s emmer = @s inventory-ammo run function comm:game-start/items/itemself
    execute as @a[scores={emerald=1..}] unless data entity @s Inventory[{ Slot:7b, id: "minecraft:emerald" }] run function comm:game-start/items/itemself
    execute as @a unless score @s p-tnt = @s inventory-tnt run function comm:game-start/items/itemself
    execute as @a[scores={emerald=..64}] unless score @s emerald = @s inventory-eme run function comm:game-start/items/itemself
    execute as @a[scores={d-tnt=1..}] run function comm:game-start/items/itemuse
    execute as @a unless score @s p-tnt = @s inventory-tnt run function comm:game-start/items/itemself
    execute as @a[scores={p-tnt=1..}] unless data entity @s Inventory[{id:"minecraft:tnt"}] run function comm:game-start/items/itemself
    execute as @a[scores={p-tnt=..0}] if data entity @s Inventory[{id:"minecraft:tnt"}] run function comm:game-start/items/itemself
    
    #execute as @a if data entity @s Inventory[{id: "minecraft:glass_bottle"}] run function comm:game-start/items/itemself
    clear @a minecraft:glass_bottle
    execute as @a[scores={use-potion=1..}] run function comm:game-start/items/itemuse
    execute as @a unless score @s pickup-potion = @s inventory-potion run function comm:game-start/items/itemself
    execute as @e[tag=boom] at @s run function comm:game-start/items/tnt/boom/fuse
    execute as @a[scores={d-tnt=1..}] at @s run function comm:game-start/items/tnt/summon

################


### stats ###

    # execute if entity @a[scores={stage=..0}] at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.5 stone_button 
    # hp #
    execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 15 ~ Items[{Slot: 5b}].tag.AttributeModifiers[{ AttributeName: "generic.max_health" }].Amount int 1 run scoreboard players get @s max-hp
    # dmg #
    execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 15 ~ Items[{Slot: 5b}].tag.AttributeModifiers[{ AttributeName: "generic.attack_damage" }].Amount int 0.1 run scoreboard players get @s attack-damage
    # speed #
    execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 15 ~ Items[{Slot: 5b}].tag.AttributeModifiers[{ AttributeName: "generic.movement_speed" }].Amount float 0.005 run scoreboard players get @s movement-speed
    # armor #
    execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 15 ~ Items[{Slot: 5b}].tag.AttributeModifiers[{ AttributeName: "generic.armor" }].Amount int 1 run scoreboard players get @s armor-P
    # armor T #
    execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 15 ~ Items[{Slot: 5b}].tag.AttributeModifiers[{ AttributeName: "generic.armor_toughness" }].Amount int 1 run scoreboard players get @s armor-T

############

### UUID test ###

    execute as @e[type=minecraft:potion] unless score @s owner-UUID_0 matches 0.. unless score @s owner-UUID_0 matches ..0 run function comm:game-start/skill/variable/owner-getter
    execute as @a at @e[type=minecraft:potion] if score @s player-UUID_0 = @e[distance=..0,type=potion,limit=1,sort=nearest] owner-UUID_0 if score @s player-UUID_1 = @e[distance=..0,type=potion,limit=1,sort=nearest] owner-UUID_1 if score @s player-UUID_2 = @e[distance=..0,type=potion,limit=1,sort=nearest] owner-UUID_2 if score @s player-UUID_3 = @e[distance=..0,type=potion,limit=1,sort=nearest] owner-UUID_3 run scoreboard players add @s use-potion 1

#################
#    execute as @a[scores={stage=1..}] unless score @s emmer = @s inventory-ammo run say 1



