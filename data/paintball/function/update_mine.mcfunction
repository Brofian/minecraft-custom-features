scoreboard players remove @s paintball 1

execute if score @s paintball matches 60 \
    run data merge entity @n[distance=..1,type=block_display,tag=paintball_mine_display] \
                          {block_state: {Name:"minecraft:yellow_wool"}}

execute if score @s paintball matches 40 \
    run data merge entity @n[distance=..1,type=block_display,tag=paintball_mine_display] \
                          {block_state: {Name:"minecraft:orange_wool"}}

execute if score @s paintball matches 20 \
    run data merge entity @n[distance=..1,type=block_display,tag=paintball_mine_display] \
                          {block_state: {Name:"minecraft:red_wool"}}


# explode the mine if the timer reaches zero
execute if score @s paintball matches ..0 run function paintball:explode_mine
# or if a player stepped on it
execute if entity @p[distance=..1] run function paintball:explode_mine