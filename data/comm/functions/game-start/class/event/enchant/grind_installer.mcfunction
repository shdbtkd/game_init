
setblock ~ ~ ~ minecraft:grindstone[face= floor]
setblock ~ ~1 ~ minecraft:stone_button[face= floor]
summon minecraft:armor_stand ~ ~-0.4 ~ { Tags: [ "cart-motion_looker", "kill_self-stage_clear" ], Passengers: [ { id: "minecraft:hopper_minecart", Tags: [ "grind_display", "kill_self-stage_clear", "enchant_setting" ], CustomDisplayTile: 1b, Invulnerable: 1b, DisplayState: { Name: "minecraft:air" }, CustomName:'{"text":"숫돌","bold":true,"italic":false}' } ], NoGravity: 1b, Invulnerable: 1b, Small: 1b, Invisible: 1b }
tag @s remove unstalled