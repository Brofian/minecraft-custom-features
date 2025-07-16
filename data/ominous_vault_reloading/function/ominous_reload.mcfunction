execute as @a at @s as @e[type=item,tag=ominous_vault_reloader,distance=..10] at @s \
    if block ~ ~-0.5 ~ minecraft:vault[ominous=true] \
    if function ominous_vault_reloading:reset_vault \
    run kill @s

