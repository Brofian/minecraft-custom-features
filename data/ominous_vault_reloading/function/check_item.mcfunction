tag @s add ominous_vault_reloader_check

execute unless entity @s[nbt= \
	{Item:{components:{"minecraft:custom_data":{"ominous_vault_reloader":1b}}}} \
] run return 0


tag @s add ominous_vault_reloader
schedule function ominous_vault_reloading:ominous_reload 1s