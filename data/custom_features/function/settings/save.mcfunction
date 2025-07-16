tellraw @s [{"text":"Saving settings for CustomFeatures:", "bold":true, "color": "gold"}]


# update the value
$data merge storage custom_features:settings {toggles: {\
    autoplacing: $(toggle_autoplacing),\
    itemmagnet: $(toggle_itemmagnet),\
    paintball: $(toggle_paintball),\
    chronometer: $(toggle_chronometer),\
    vault_reloading: $(toggle_vault_reloading)\
}}


# output the value
execute if data storage custom_features:settings {toggles:{autoplacing:1}} run \
    tellraw @s [{"text":" | Auto-Placing:     ", "color": "gold"}, {"text": "On", "color": "green"}]
execute if data storage custom_features:settings {toggles:{autoplacing:0}} run \
    tellraw @s [{"text":" | Auto-Placing:     ", "color": "gold"}, {"text": "Off", "color": "red"}]

execute if data storage custom_features:settings {toggles:{itemmagnet:1}} run \
    tellraw @s [{"text":" | Item-Magnet:      ", "color": "gold"}, {"text": "On", "color": "green"}]
execute if data storage custom_features:settings {toggles:{itemmagnet:0}} run \
    tellraw @s [{"text":" | Item-Magnet:      ", "color": "gold"}, {"text": "Off", "color": "red"}]

execute if data storage custom_features:settings {toggles:{paintball:1}} run \
    tellraw @s [{"text":" | Paintball:          ", "color": "gold"}, {"text": "On", "color": "green"}]
execute if data storage custom_features:settings {toggles:{paintball:0}} run \
    tellraw @s [{"text":" | Paintball:          ", "color": "gold"}, {"text": "Off", "color": "red"}]

execute if data storage custom_features:settings {toggles:{chronometer:1}} run \
    tellraw @s [{"text":" | Chronometer:     ", "color": "gold"}, {"text": "On", "color": "green"}]
execute if data storage custom_features:settings {toggles:{chronometer:0}} run \
    tellraw @s [{"text":" | Chronometer:     ", "color": "gold"}, {"text": "Off", "color": "red"}]

execute if data storage custom_features:settings {toggles:{vault_reloading:1}} run \
    tellraw @s [{"text":" | Vault-Reloading: ", "color": "gold"}, {"text": "On", "color": "green"}]
execute if data storage custom_features:settings {toggles:{vault_reloading:0}} run \
    tellraw @s [{"text":" | Vault-Reloading: ", "color": "gold"}, {"text": "Off", "color": "red"}]



# run load functions, when enabled
execute if data storage custom_features:settings {toggles:{paintball:1}} run \
    function paintball:load
execute if data storage custom_features:settings {toggles:{chronometer:1}} run \
    function chronometer:load


# run uninstall functions, when disabled
execute if data storage custom_features:settings {toggles:{paintball:0}} run \
    function paintball:uninstall
execute if data storage custom_features:settings {toggles:{chronometer:0}} run \
    function chronometer:uninstall