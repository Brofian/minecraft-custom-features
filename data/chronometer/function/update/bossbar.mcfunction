# update bossbar name (fill zeros)
#	Case A: hour and minute both have two digits
execute if score TIME_HOUR chronometer matches 10.. if score TIME_MINUTE chronometer matches 10.. run bossbar set minecraft:chronometer_bb name [{text:"🕘 "},{score:{name:"TIME_HOUR",objective:"chronometer"}},{text:":"},{score:{name:"TIME_MINUTE",objective:"chronometer"}},{text: "          "},{nbt:"WeatherLabel",storage:"chronometer"}]
#	Case B: hour has two digits, minute only one
execute if score TIME_HOUR chronometer matches 10.. unless score TIME_MINUTE chronometer matches 10.. run bossbar set minecraft:chronometer_bb name [{text:"🕘 "},{score:{name:"TIME_HOUR",objective:"chronometer"}},{text:":0"},{score:{name:"TIME_MINUTE",objective:"chronometer"}},{text: "          "},{nbt:"WeatherLabel",storage:"chronometer"}]
#	Case C: minute has two digits, hour only one
execute unless score TIME_HOUR chronometer matches 10.. if score TIME_MINUTE chronometer matches 10.. run bossbar set minecraft:chronometer_bb name [{text:"🕘 "},{text:"0"},{score:{name:"TIME_HOUR",objective:"chronometer"}},{text:":"},{score:{name:"TIME_MINUTE",objective:"chronometer"}},{text: "          "},{nbt:"WeatherLabel",storage:"chronometer"}]
#	Case C: neither hour nor minute has two digits
execute unless score TIME_HOUR chronometer matches 10.. unless score TIME_MINUTE chronometer matches 10.. run bossbar set minecraft:chronometer_bb name [{text:"🕘 "},{text:"0"},{score:{name:"TIME_HOUR",objective:"chronometer"}},{text:":0"},{score:{name:"TIME_MINUTE",objective:"chronometer"}},{text: "          "},{nbt:"WeatherLabel",storage:"chronometer"}]



# Update value to display in the bossbar 
execute store result bossbar minecraft:chronometer_bb value run scoreboard players get TIME_TICK chronometer

# if we hit a new hour, update cosmetics!
execute if score TIME_MINUTE chronometer matches 0..1 run function chronometer:update/bossbar_cosmetic
