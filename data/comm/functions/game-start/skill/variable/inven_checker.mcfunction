execute store result score @s head_checker if data entity @s Inventory[{ tag: { head_item: 1b } }]
execute store result score @s active_inven if data entity @s Inventory[{ Slot: 6b, tag: { activeitem: 1b } }]
execute store result score @s jewelry_inven if data entity @s Inventory[{ Slot: 4b, tag: { jewelry_item: 1b } }]