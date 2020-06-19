tp @s -1.0 39 -816.0
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"\n"},{"text":"      [ next stage ]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function comm:about-play/map-setting/next/ready/show/next-stage"}}]
tellraw @s ["",{"text":"\n"},{"text":"      [ back to stage ]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function comm:about-play/map-setting/next/ready/show/back-stage"}}]
tellraw @s ["",{"text":"\n"}]