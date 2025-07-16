# Update the scoreboard
execute store result score TIME_TICK chronometer run time query daytime
scoreboard players operation TIME_TICK chronometer += TICKS_OFFSET chronometer
scoreboard players operation TIME_TICK chronometer %= TICK_PER_DAY chronometer

# Update hour
scoreboard players operation TIME_HOUR chronometer = TIME_TICK chronometer
scoreboard players operation TIME_HOUR chronometer /= TICK_PER_HOUR chronometer

# Update minute
scoreboard players operation TIME_MINUTE chronometer = TIME_TICK chronometer
scoreboard players operation TIME_MINUTE chronometer %= TICK_PER_HOUR chronometer
scoreboard players operation TIME_MINUTE chronometer *= MINS_PER_HOUR chronometer
scoreboard players operation TIME_MINUTE chronometer /= TICK_PER_HOUR chronometer

