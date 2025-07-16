# do not execute, if disabled
execute if data storage custom_features:settings {toggles:{itemmagnet:0}} run return 0


execute as @a run function item_magnet:player_tick