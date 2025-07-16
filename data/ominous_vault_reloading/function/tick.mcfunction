# do not execute, if disabled
execute if data storage custom_features:settings {toggles:{vault_reloading:0}} run return 0


execute as @a at @s as @e[type=item,tag=!ominous_vault_reloader,distance=..2] \
    run function ominous_vault_reloading:check_item
