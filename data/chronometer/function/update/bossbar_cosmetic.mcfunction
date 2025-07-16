# midnight to sunrise
execute if score TIME_HOUR chronometer matches ..5 run bossbar set chronometer_bb color purple

# sunrise to sunset 
execute if score TIME_HOUR chronometer matches 6..18 run bossbar set chronometer_bb color blue

# sunset to midnight 
execute if score TIME_HOUR chronometer matches 19.. run bossbar set chronometer_bb color purple

