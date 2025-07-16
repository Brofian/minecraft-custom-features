# 0 - Sunny
# 1 - Rain
# 2 - Thunderstorm

scoreboard players set WEATHER chronometer 1

# use the health of the rain detector as an indicator for the weather
scoreboard players set RAIN_DETECTOR_HEALTH chronometer 0
execute store result score RAIN_DETECTOR_HEALTH chronometer run data get entity @e[tag=rain_detector,limit=1] Health
# if the rain detector has lost health, then we have at least rain
execute if score RAIN_DETECTOR_HEALTH chronometer matches 100 run scoreboard players set WEATHER chronometer 0


# respawn the rain detector with these properties
#	NoGravity
#	Silent
#	NoAI
#	Persistent
#	Empty DeathLootTable
# 	100 Health
# 	invisible
kill @e[tag=rain_detector,type=minecraft:blaze]
execute in minecraft:overworld at @p run summon minecraft:blaze ~ 450 ~ \
    {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Pumpkin:0b,Tags:["rain_detector"], DeathLootTable:"/",Health:100f, \
     attributes:[{id:"minecraft:max_health",base:100}], active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:2000,show_particles:0b}]}


# if the storm timer is active and we detected rain, it is still stormy
execute if score WEATHER_STORM chronometer matches 1.. if score WEATHER chronometer matches 1.. run scoreboard players set WEATHER chronometer 2


execute if score WEATHER chronometer matches 0 run data modify storage chronometer WeatherLabel set value "☀ Sunny"
execute if score WEATHER chronometer matches 1 run data modify storage chronometer WeatherLabel set value "🌧 Rainy"
execute if score WEATHER chronometer matches 2 run data modify storage chronometer WeatherLabel set value "⛈ Thunder"

