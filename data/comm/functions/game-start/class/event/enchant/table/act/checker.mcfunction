execute if data entity @s Inventory[{ tag: { enchant-select_trigger: 1b } }].tag.StoredEnchantments[{ id: "minecraft:protection" }] if data block ~ 12 ~ Items[].tag.StoredEnchantments[{ id: "minecraft:protection" }] run function comm:game-start/items/item-get/enchant_upgrade/protection
execute if data entity @s Inventory[{ tag: { enchant-select_trigger: 1b } }].tag.StoredEnchantments[{ id: "minecraft:looting" }] if data block ~ 12 ~ Items[].tag.StoredEnchantments[{ id: "minecraft:looting" }] run function comm:game-start/items/item-get/enchant_upgrade/loot
#tellraw @a {"nbt":"Items","block":"~ 12 ~"}

clear @s minecraft:enchanted_book{ enchant-select_trigger: 1b }