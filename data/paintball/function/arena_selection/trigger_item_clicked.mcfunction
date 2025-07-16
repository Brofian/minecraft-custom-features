# enable the advancement again after one second
scoreboard players set @s paintball 10


execute if entity @e[tag=pos1] \
        if entity @e[tag=pos2] \
        if entity @e[tag=paintball_arena] \
        if function paintball:arena_selection/start_selection \
        run return 1

execute unless entity @e[tag=pos1] \
        unless entity @e[tag=pos2] \
        unless entity @e[tag=paintball_arena] \
        if function paintball:arena_selection/start_selection \
        run return 1

execute if entity @e[tag=pos1] \
        unless entity @e[tag=pos2] \
        unless entity @e[tag=paintball_arena] \
        if function paintball:arena_selection/switch_selection \
        run return 1

execute if entity @e[tag=pos1] \
        if entity @e[tag=pos2] \
        unless entity @e[tag=paintball_arena] \
        if function paintball:arena_selection/finish_selection \
        run return 1