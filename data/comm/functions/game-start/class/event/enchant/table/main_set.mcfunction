function comm:game-start/class/event/enchant/table/score_set_before
#execute unless score @s table-lvl_upper = @s table-inventory run say 1
execute unless score @s table-lvl_upper = @s table-inventory run function comm:game-start/class/event/enchant/table/slot_set
execute unless score @s table-lvl_upper = @s table-inventory run function comm:game-start/class/event/enchant/table/score_set_after

