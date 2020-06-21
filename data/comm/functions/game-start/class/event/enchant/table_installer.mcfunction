
#summon minecraft:hopper_minecart ~ ~0.2 ~ {NoGravity:1b,CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
setblock ~ ~ ~ minecraft:enchanting_table
summon minecraft:armor_stand ~ ~ ~ { Tags: [ "cart-motion_looker", "kill_self-stage_clear" ], Passengers: [ { id: "minecraft:chest_minecart", Tags: [ "table_display", "kill_self-stage_clear", "enchant_setting" ], CustomDisplayTile: 1b, Invulnerable: 1b , DisplayState: { Name: "minecraft:air" }, CustomName:'{"text":"인첸트 테이블","bold":true,"italic":false}' } ], NoGravity: 1b, Invulnerable: 1b, Small: 1b, Invisible: 1b }
tag @s remove unstalled