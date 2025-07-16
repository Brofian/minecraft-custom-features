# Create initial bossbar
bossbar add chronometer_bb MoreInfo
bossbar set chronometer_bb max 24000

# Create scoreboards
scoreboard objectives add chronometer dummy
scoreboard players set TICK_PER_DAY chronometer 24000
scoreboard players set TICK_PER_HOUR chronometer 1000
scoreboard players set MINS_PER_HOUR chronometer 60
scoreboard players set TICKS_OFFSET chronometer 6000
scoreboard players set WEATHER_CHECK_TIME chronometer 50
scoreboard players set WEATHER chronometer 0


# kickstart tick function
function chronometer:loop
function chronometer:player_check
function chronometer:update/bossbar_cosmetic