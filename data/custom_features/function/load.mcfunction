# setup default configuration

execute unless data storage custom_features:settings toggles.autoplacing run \
    data merge storage custom_features:settings {toggles: {autoplacing: 0b}}

execute unless data storage custom_features:settings toggles.itemmagnet run \
    data merge storage custom_features:settings {toggles: {itemmagnet: 0b}}