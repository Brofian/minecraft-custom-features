# check if the user holds a clock in their inventory
execute as @a if items entity @s inventory.* clock run tag @s add chronometer_has_clock
execute as @a unless entity @s[tag=chronometer_has_clock] if items entity @s hotbar.* clock run tag @s add chronometer_has_clock
execute as @a unless entity @s[tag=chronometer_has_clock] if items entity @s weapon.offhand clock run tag @s add chronometer_has_clock

# set the bossbar to be visible to all players with a clock in their inventory
bossbar set minecraft:chronometer_bb players @a[tag=chronometer_has_clock]

tag @a remove chronometer_has_clock

# if a player is online: execute this function every 5 seconds
execute if score ACTIVE_PLAYERS chronometer matches 1.. run schedule function chronometer:player_check 5s
# if no player is online: execute this function every minute
execute if score ACTIVE_PLAYERS chronometer matches 0 run schedule function chronometer:player_check 60s
