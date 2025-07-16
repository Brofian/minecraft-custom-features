function chronometer:update/time


# check weather only so often
scoreboard players operation WEATHER_TICK chronometer = TIME_TICK chronometer
scoreboard players operation WEATHER_TICK chronometer %= WEATHER_CHECK_TIME chronometer
execute if score WEATHER_TICK chronometer matches 0..10 run function chronometer:update/weather


function chronometer:update/bossbar
