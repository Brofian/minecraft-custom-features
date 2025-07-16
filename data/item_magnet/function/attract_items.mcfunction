# executed for every player with a magnet

tag @s add magnet_target_player

execute as @e[type=item,distance=..10,limit=10] at @s run function item_magnet:attract_item

# TNT gimmick
# execute as @e[type=tnt,distance=..20,limit=10] at @s run function item_magnet:attract_item

tag @s remove magnet_target_player