
#---------- 체력 ----------#
scoreboard objectives add HP health
scoreboard objectives setdisplay list HP
#---------- 체력 ----------#

#---------- 아이템 ----------#
scoreboard objectives add item-delay dummy

#---------- 렌덤 ----------#
scoreboard objectives add item-random dummy
#---------- 렌덤 ----------#

#---------- 스테이지 ----------#
scoreboard objectives add stage dummy
scoreboard players add @a stage 0
scoreboard objectives add next-stage dummy
#---------- 스테이지 ----------#

#---------- 애머 ----------#
scoreboard objectives add emmer-time dummy
scoreboard objectives add emmer dummy
scoreboard objectives add rd1-emmer-remove minecraft.used:minecraft.bow
scoreboard objectives add rd2-emmer-remove minecraft.used:minecraft.crossbow
scoreboard objectives add rd3-emmer-remove minecraft.used:minecraft.map
scoreboard objectives add nd1-emmer-remove minecraft.used:minecraft.iron_sword
scoreboard objectives add nd2-emmer-remove minecraft.used:minecraft.trident
scoreboard objectives add nd3-emmer-remove minecraft.used:minecraft.iron_axe
scoreboard objectives add max-ammo dummy
scoreboard objectives add max-ammo-time dummy
#---------- 애머 ----------#

#---------- 점프 ----------#
scoreboard objectives add jump minecraft.custom:minecraft.jump
#---------- 점프 ----------#

#---------- 인게임 아이템 ----------#
scoreboard objectives add pickup-delay dummy
scoreboard objectives add emerald minecraft.picked_up:minecraft.emerald
scoreboard objectives add drop-emerald minecraft.dropped:minecraft.emerald
scoreboard objectives add U_undying minecraft.used:minecraft.totem_of_undying
scoreboard objectives add D_undying minecraft.dropped:minecraft.totem_of_undying
scoreboard objectives add undying minecraft.picked_up:minecraft.totem_of_undying
scoreboard objectives add fuse dummy
scoreboard objectives add d-tnt minecraft.dropped:minecraft.tnt
scoreboard objectives add p-tnt minecraft.picked_up:minecraft.tnt
scoreboard objectives add tnt0 dummy
scoreboard objectives add tnt1 dummy
scoreboard objectives add tnt2 dummy
scoreboard objectives add pickup-potion dummy
scoreboard objectives add drop-potion minecraft.dropped:minecraft.potion
scoreboard objectives add use-potion minecraft.used:minecraft.potion
scoreboard objectives add inventory-potion dummy
scoreboard objectives add inventory-ammo dummy
#---------- 인게임 아이템 ----------#

#---------- 아이템 ----------#
scoreboard objectives add arrow__1 dummy
scoreboard objectives add arrow__2 dummy
scoreboard objectives add arrow__3 dummy
scoreboard objectives add arrow__4 dummy
scoreboard objectives add arrow__5 dummy
scoreboard objectives add arrow__6 dummy

scoreboard objectives add bread dummy
scoreboard objectives add apple dummy
scoreboard objectives add pumpkin_pie dummy
scoreboard objectives add cake dummy

scoreboard objectives add compass dummy
scoreboard objectives add ender_eye dummy
scoreboard objectives add inven_save dummy
scoreboard objectives add creeper dummy
scoreboard objectives add iron_chestplate dummy
scoreboard objectives add iron_leggings dummy
scoreboard objectives add iron_boots dummy
scoreboard objectives add flint dummy
scoreboard objectives add brick dummy
scoreboard objectives add nethrer_brick dummy
scoreboard objectives add redstone dummy
scoreboard objectives add bucket dummy

scoreboard objectives add looting dummy
scoreboard objectives add flame dummy
scoreboard objectives add power dummy
scoreboard objectives add punch dummy
scoreboard objectives add firework_rocket dummy
scoreboard objectives add multishot dummy
scoreboard objectives add quick_charge dummy
scoreboard objectives add sharpness dummy
scoreboard objectives add smite dummy
scoreboard objectives add pesticide dummy
scoreboard objectives add fire_aspect dummy
scoreboard objectives add knockback dummy
scoreboard objectives add blast_protect dummy
scoreboard objectives add projectile_p dummy
scoreboard objectives add protection dummy
#---------- 아이템 ----------#

#---------- 죽음 ----------#
scoreboard objectives add out deathCount
scoreboard objectives add rotation dummy
#---------- 죽음 ----------#

#---------- motion ----------#
scoreboard objectives add motion dummy
scoreboard objectives add nd1-motion-0 dummy
scoreboard objectives add nd1-motion-2 dummy
#---------- motion ----------#


#---------- 맵 로드 ----------#
scoreboard objectives add map_lod dummy
scoreboard objectives add door dummy
scoreboard objectives add back-lobby dummy
scoreboard objectives add stage-road_count dummy
scoreboard objectives add stage-road_Xplus dummy
scoreboard objectives add stage-road_Xminu dummy
scoreboard objectives add stage-road_Zplus dummy
scoreboard objectives add stage-road_Zminu dummy
scoreboard objectives add event-type dummy
#---------- 맵 로드 ----------#

#---------- 스텟 ----------#
scoreboard objectives add item-index dummy
scoreboard objectives add beforeitem-index dummy
scoreboard objectives add attack-damage dummy
scoreboard objectives add resistance-point dummy
scoreboard objectives add movement-speed dummy
scoreboard objectives add armor-P dummy
scoreboard objectives add armor-T dummy
scoreboard objectives add max-hp dummy
#---------- 스텟 ----------#

#---------- 인첸트 ----------#
scoreboard objectives add player_level level
scoreboard objectives add table-need_lvl dummy
scoreboard objectives add table-show_lvl dummy
scoreboard objectives add table-inventory dummy
scoreboard objectives add table-lvl_upper dummy
scoreboard objectives add table-lvl dummy
scoreboard objectives add table-max dummy
scoreboard objectives add enchant_up-cost dummy
scoreboard objectives add enchant_up-lvl dummy
#---------- 인첸트 ----------#

#---------- 트리거 ----------#
scoreboard objectives add help trigger
scoreboard objectives add start trigger
#---------- 트리거 ----------#

#---------- 호박 ----------#
scoreboard objectives add mine-p minecraft.mined:minecraft.pumpkin
scoreboard objectives add mine-c minecraft.mined:minecraft.cobweb
#---------- 호박 ----------#

#---------- 기타 아이템 ----------#
scoreboard objectives add mirror dummy
scoreboard objectives add mirror-motion0 dummy
scoreboard objectives add mirror-motion1 dummy
scoreboard objectives add mirror-motion2 dummy
scoreboard objectives add mirror-crit dummy
#---------- 기타 아이템 ----------#

#---------- 기타 ----------#
scoreboard objectives add title dummy
scoreboard objectives add red-size dummy
scoreboard objectives add hurt dummy
scoreboard objectives add U_shi minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add D_tri minecraft.dropped:minecraft.trident
scoreboard objectives add class-index dummy
scoreboard objectives add count-itemplayer dummy 

scoreboard objectives add player-UUID_0 dummy
scoreboard objectives add player-UUID_1 dummy
scoreboard objectives add player-UUID_2 dummy
scoreboard objectives add player-UUID_3 dummy

scoreboard objectives add owner-UUID_0 dummy
scoreboard objectives add owner-UUID_1 dummy
scoreboard objectives add owner-UUID_2 dummy
scoreboard objectives add owner-UUID_3 dummy

scoreboard objectives add slime-exist dummy

scoreboard objectives add boss-max_health dummy
scoreboard objectives add boss-now_health dummy

scoreboard objectives add inven_tab-info dummy
scoreboard objectives add inven_tab-type dummy

scoreboard objectives add room_type dummy
scoreboard objectives add map_type dummy

scoreboard objectives add price dummy
scoreboard objectives add box-facing dummy

scoreboard objectives add golden_apple minecraft.used:minecraft.golden_apple
scoreboard objectives add enchanted_apple minecraft.used:minecraft.enchanted_golden_apple



scoreboard objectives add locked-box dummy

scoreboard objectives add nd1sneak-motion0 dummy
scoreboard objectives add nd1sneak-motion2 dummy
scoreboard objectives add rd3sneak-motion0 dummy
scoreboard objectives add rd3sneak-motion2 dummy

scoreboard objectives add spawner-hurt dummy
scoreboard objectives add spawner-motion0 dummy
scoreboard objectives add spawner-motion1 dummy
scoreboard objectives add spawner-motion2 dummy

scoreboard objectives add potal_info dummy