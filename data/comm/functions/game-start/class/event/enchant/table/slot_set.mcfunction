
scoreboard players set @s table-need_lvl 0

data remove entity @s Items[{ Slot: 4b }]
data remove entity @s Items[{ Slot: 5b }]
data remove entity @s Items[{ Slot: 6b }]
data remove entity @s Items[{ Slot: 7b }]
data remove entity @s Items[{ Slot: 8b }]

data remove entity @s Items[{ Slot: 13b }]
data remove entity @s Items[{ Slot: 14b }]
data remove entity @s Items[{ Slot: 15b }]
data remove entity @s Items[{ Slot: 16b }]
data remove entity @s Items[{ Slot: 17b }]

data remove entity @s Items[{ Slot: 22b }]
data remove entity @s Items[{ Slot: 23b }]
data remove entity @s Items[{ Slot: 24b }]
data remove entity @s Items[{ Slot: 25b }]
data remove entity @s Items[{ Slot: 26b }]

execute if score @s table-lvl_upper matches 1.. run data modify entity @s Items prepend value { Slot: 4b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 1.. run data modify entity @s Items[{ Slot: 4b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 1.. store result entity @s Items[{ Slot: 4b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 1.. store result entity @s Items[{ Slot: 4b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 1.. run data modify entity @s Items[{ Slot: 4b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 2.. run data modify entity @s Items prepend value { Slot: 5b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 2.. run data modify entity @s Items[{ Slot: 5b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 2.. store result entity @s Items[{ Slot: 5b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 2.. store result entity @s Items[{ Slot: 5b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 2.. run data modify entity @s Items[{ Slot: 5b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 3.. run data modify entity @s Items prepend value { Slot: 6b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 3.. run data modify entity @s Items[{ Slot: 6b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 3.. store result entity @s Items[{ Slot: 6b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 3.. store result entity @s Items[{ Slot: 6b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 3.. run data modify entity @s Items[{ Slot: 6b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 4.. run data modify entity @s Items prepend value { Slot: 7b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 4.. run data modify entity @s Items[{ Slot: 7b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 4.. store result entity @s Items[{ Slot: 7b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 4.. store result entity @s Items[{ Slot: 7b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 4.. run data modify entity @s Items[{ Slot: 7b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 5.. run data modify entity @s Items prepend value { Slot: 8b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 5.. run data modify entity @s Items[{ Slot: 8b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 5.. store result entity @s Items[{ Slot: 8b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 5.. store result entity @s Items[{ Slot: 8b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 5.. run data modify entity @s Items[{ Slot: 8b }].tag.enchant-select_trigger set value 1b


execute if score @s table-lvl_upper matches 6.. run data modify entity @s Items prepend value { Slot: 13b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 6.. run data modify entity @s Items[{ Slot: 13b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 6.. store result entity @s Items[{ Slot: 13b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 6.. store result entity @s Items[{ Slot: 13b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 6.. run data modify entity @s Items[{ Slot: 13b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 7.. run data modify entity @s Items prepend value { Slot: 14b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 7.. run data modify entity @s Items[{ Slot: 14b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 7.. store result entity @s Items[{ Slot: 14b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 7.. store result entity @s Items[{ Slot: 14b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 7.. run data modify entity @s Items[{ Slot: 14b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 8.. run data modify entity @s Items prepend value { Slot: 15b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 8.. run data modify entity @s Items[{ Slot: 15b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 8.. store result entity @s Items[{ Slot: 15b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 8.. store result entity @s Items[{ Slot: 15b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 8.. run data modify entity @s Items[{ Slot: 15b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 9.. run data modify entity @s Items prepend value { Slot: 16b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 9.. run data modify entity @s Items[{ Slot: 16b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 9.. store result entity @s Items[{ Slot: 16b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 9.. store result entity @s Items[{ Slot: 16b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 9.. run data modify entity @s Items[{ Slot: 16b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 10.. run data modify entity @s Items prepend value { Slot: 17b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 10.. run data modify entity @s Items[{ Slot: 17b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 10.. store result entity @s Items[{ Slot: 17b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 10.. store result entity @s Items[{ Slot: 17b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 10.. run data modify entity @s Items[{ Slot: 17b }].tag.enchant-select_trigger set value 1b


execute if score @s table-lvl_upper matches 11.. run data modify entity @s Items prepend value { Slot: 22b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 11.. run data modify entity @s Items[{ Slot: 22b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 11.. store result entity @s Items[{ Slot: 22b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 11.. store result entity @s Items[{ Slot: 22b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 11.. run data modify entity @s Items[{ Slot: 22b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 12.. run data modify entity @s Items prepend value { Slot: 23b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 12.. run data modify entity @s Items[{ Slot: 23b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 12.. store result entity @s Items[{ Slot: 23b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 12.. store result entity @s Items[{ Slot: 23b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 12.. run data modify entity @s Items[{ Slot: 23b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 13.. run data modify entity @s Items prepend value { Slot: 24b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 13.. run data modify entity @s Items[{ Slot: 24b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 13.. store result entity @s Items[{ Slot: 24b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 13.. store result entity @s Items[{ Slot: 24b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 13.. run data modify entity @s Items[{ Slot: 24b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 14.. run data modify entity @s Items prepend value { Slot: 25b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 14.. run data modify entity @s Items[{ Slot: 25b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 14.. store result entity @s Items[{ Slot: 25b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 14.. store result entity @s Items[{ Slot: 25b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 14.. run data modify entity @s Items[{ Slot: 25b }].tag.enchant-select_trigger set value 1b

execute if score @s table-lvl_upper matches 15.. run data modify entity @s Items prepend value { Slot: 26b, id: "minecraft:enchanted_book", Count: 1b}
execute if score @s table-lvl_upper matches 15.. run data modify entity @s Items[{ Slot: 26b }].tag set from entity @s Items[{ Slot: 10b }].tag
execute if score @s table-lvl_upper matches 15.. store result entity @s Items[{ Slot: 26b }].tag.StoredEnchantments[0].lvl short 1 run scoreboard players add @s table-show_lvl 1
execute if score @s table-lvl_upper matches 15.. store result entity @s Items[{ Slot: 26b }].tag.CustomModelData int 1 run scoreboard players add @s table-need_lvl 1
execute if score @s table-lvl_upper matches 15.. run data modify entity @s Items[{ Slot: 26b }].tag.enchant-select_trigger set value 1b