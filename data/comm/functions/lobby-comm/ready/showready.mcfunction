tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"}]

tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"}]

#tellraw @s ["",{"text":"\n"},{"text":"      dummy","color":"gray"}]

tellraw @s ["",{"text":"\n"},{"text":"      [ start game ]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=!ready] run tag @s add ready"}}]

#tellraw @s ["",{"text":"\n"},{"text":"      dummy","color":"gray"}]

tellraw @s ["",{"text":"\n"},{"text":"      [ back to lobby ]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=!ready] run tag @s add backlobby"}}]

tellraw @s ["",{"text":"\n"}]