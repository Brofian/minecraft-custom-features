# do not execute, if disabled
execute if data storage custom_features:settings {toggles:{autoplacing:0}} run return 0

execute as @e[type=item,tag=!cf_checked] run function auto_placing:check
