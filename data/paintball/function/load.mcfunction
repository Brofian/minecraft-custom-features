# Create scoreboard
scoreboard objectives add paintball dummy
scoreboard players set TWO paintball 2
scoreboard players set FIVE paintball 5
scoreboard players set TEN paintball 10
scoreboard players set NEG_ONE paintball -1

scoreboard objectives add paintball_sneak minecraft.custom:minecraft.sneak_time

function paintball:arena_selection/load