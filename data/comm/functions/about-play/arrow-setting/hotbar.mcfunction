### hotbar ###

    execute as @s[scores={item=2}] run loot replace block ~ 21 ~ container.7 mine ~ 12 ~ stick{drop_contents:true}
    execute as @s[scores={none=2}] run loot replace block ~ 21 ~ container.7 mine ~ 23 ~ stick{drop_contents:true}
    execute as @s[scores={stat=2}] run loot replace block ~ 21 ~ container.7 mine ~ 19 ~ stick{drop_contents:true}
    execute as @s[scores={map=2}] run loot replace block ~ 21 ~ container.7 mine ~ 17 ~ stick{drop_contents:true}
    execute unless data entity @s Inventory[{ Slot: 1b, id: "minecraft:totem_of_undying" }] run replaceitem entity @s hotbar.1 air

##############