execute if data storage custom_features:settings {toggles:{chronometer:0}} run return 0

# count the number of online players
scoreboard players set ACTIVE_PLAYERS chronometer 0
execute as @a run scoreboard players add ACTIVE_PLAYERS chronometer 1


# only update the data, if a player is online
execute if score ACTIVE_PLAYERS chronometer matches 1.. run function chronometer:update/all


# if a player is online: execute this function every 10 ticks (0.5 seconds)
execute if score ACTIVE_PLAYERS chronometer matches 1.. run schedule function chronometer:loop 10t

# if no player is online: execute this function every minute
execute if score ACTIVE_PLAYERS chronometer matches 0 run schedule function chronometer:loop 60s
