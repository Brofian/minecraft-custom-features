scoreboard players set @e[type=item,distance=..1,limit=3] item_magnet_delay 0


execute positioned ~ ~-1 ~ as @p[tag=magnet_target_player,distance=..1] \
    positioned as @s positioned ~ ~2 ~ \
    summon area_effect_cloud \
    run function item_magnet:spawn_blood