### hotbar ###
   
    execute as @s[scores={inven_tab-type=1}] run clear @s #dungeons:tab_items{ tab_type_1:1b }
    execute as @s[scores={inven_tab-type=2}] run clear @s #dungeons:tab_items{ tab_type_2:1b }
    execute as @s[scores={inven_tab-type=3}] run clear @s #dungeons:tab_items{ tab_type_3:1b }

    
    execute as @s[scores={inven_tab-type=1}] run loot replace block ~ 29 ~ container.3 mine ~ 17 ~ stick{drop_contents:true}
    execute as @s[scores={inven_tab-type=2}] run loot replace block ~ 29 ~ container.3 mine ~ 12 ~ stick{drop_contents:true}
    execute as @s[scores={inven_tab-type=3}] run loot replace block ~ 29 ~ container.3 mine ~ 19 ~ stick{drop_contents:true}


    execute as @s[scores={inven_tab-type=1}] run loot replace entity @s inventory.0 mine ~ 17 ~ stick{drop_contents:true}
    execute as @s[scores={inven_tab-type=2}] run loot replace entity @s inventory.0 mine ~ 12 ~ stick{drop_contents:true}
    execute as @s[scores={inven_tab-type=3}] run loot replace entity @s inventory.0 mine ~ 19 ~ stick{drop_contents:true}
    #execute as @s[scores={inven_tab-type=2}] run loot replace block ~ 21 ~ container.7 mine ~ 23 ~ stick{drop_contents:true}
    #execute unless data entity @s Inventory[{ Slot: 1b, id: "minecraft:totem_of_undying" }] run replaceitem entity @s hotbar.1 air

    

##############