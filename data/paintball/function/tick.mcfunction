# This file will be executed every tick, if not disabled
execute if data storage custom_features:settings {toggles:{paintball:0}} run return 0


# update fireworks
execute as @e[type=firework_rocket] at @s run function paintball:rocket_tick

# find all traces, that do not ride their rocket
tag @e[type=marker,tag=rocket_trace] remove rocket_active
execute as @e[type=firework_rocket] on passengers run tag @s[tag=rocket_trace] add rocket_active
execute as @e[type=marker,tag=rocket_trace,tag=!rocket_active] at @s run function paintball:rocket_explode

# update all mines
execute as @e[type=item,tag=paintball_mine] at @s run function paintball:update_mine



scoreboard players set @a[scores={paintball_sneak=1..}] paintball_sneak 0


function paintball:arena_selection/tick