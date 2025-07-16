# executed for every item that should be attracted to @n[type=player,tag=magnet_target_player]

# set delay to pickup delay once
execute unless score @s item_magnet_delay matches -200.. \
        store result score @s item_magnet_delay \
        run data get entity @s PickupDelay


#decrement delay
scoreboard players remove @s item_magnet_delay 1

execute if score @s item_magnet_delay matches ..-20 \
        at @s \
        run function item_magnet:hurt_player

# return while non zero delay
execute if score @s item_magnet_delay matches 1.. \
        run return 1



tag @s add magnet_target_item

# face the player
# translate the facing vector to coordinates
# summon an aec on these coordinates as the data source
execute facing entity @n[type=player,tag=magnet_target_player] eyes \
        positioned 0 0 0 align xyz positioned ^ ^ ^0.3 \
        summon area_effect_cloud \
        if function item_magnet:shrink_aec \
        run data modify entity @n[type=item,tag=magnet_target_item] Motion set from entity @s Pos

tag @s remove magnet_target_item