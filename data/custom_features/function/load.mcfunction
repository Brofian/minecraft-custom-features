# setup default configuration

execute unless data storage custom_features:settings toggles.autoplacing run \
    data merge storage custom_features:settings {toggles: {autoplacing: 0b}}

execute unless data storage custom_features:settings toggles.itemmagnet run \
    data merge storage custom_features:settings {toggles: {itemmagnet: 0b}}

execute unless data storage custom_features:settings toggles.paintball run \
    data merge storage custom_features:settings {toggles: {paintball: 0b}}

execute unless data storage custom_features:settings toggles.chronometer run \
    data merge storage custom_features:settings {toggles: {chronometer: 0b}}

execute unless data storage custom_features:settings toggles.vault_reloading run \
    data merge storage custom_features:settings {toggles: {vault_reloading: 0b}}



execute if data storage custom_features:settings {toggles:{autoplacing:1}} \
    run tellraw @a [{"text":"Feature: ", "color":"blue"}, {"text": "Auto-Placing enabled!", "color": "green"}]
execute if data storage custom_features:settings {toggles:{itemmagnet:1}} \
    run tellraw @a [{"text":"Feature: ", "color":"blue"}, {"text": "Item-Magnet enabled!", "color": "green"}]
execute if data storage custom_features:settings {toggles:{paintball:1}} \
    run tellraw @a [{"text":"Feature: ", "color":"blue"}, {"text": "Paintball enabled!", "color": "green"}]
execute if data storage custom_features:settings {toggles:{chronometer:1}} \
    run tellraw @a [{"text":"Feature: ", "color":"blue"}, {"text": "Chronometer enabled!", "color": "green"}]
execute if data storage custom_features:settings {toggles:{vault_reloading:1}} \
    run tellraw @a [{"text":"Feature: ", "color":"blue"}, {"text": "Vault reloading enabled!", "color": "green"}]
