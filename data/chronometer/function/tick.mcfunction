# This file will be executed every tick, while not disabled
execute if data storage custom_features:settings {toggles:{chronometer:0}} run return 0

# if any lightning_bolt hits, mark the weather as stormy for a short time (60sec)
execute as @e[type=minecraft:lightning_bolt] run scoreboard players set WEATHER_STORM chronometer 1200
execute if score WEATHER_STORM chronometer matches 1.. run scoreboard players remove WEATHER_STORM chronometer 1