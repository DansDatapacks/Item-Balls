# player no longer detected near item ball marker

# remove trigger villager
execute at @s positioned ~ ~-.75 ~ run tp @e[type=minecraft:villager,tag=itemballs.trigger,distance=...5] ~ -1000 ~

# remove tracking tag
tag @s remove itemballs.marker.tracking