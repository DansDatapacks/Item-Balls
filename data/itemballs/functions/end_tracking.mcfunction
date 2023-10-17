# no longer any players near trigger

# remove trigger wandering trader
execute at @s positioned ~ ~-.7 ~ as @e[type=minecraft:wandering_trader,tag=itemballs.trigger,distance=...5] run function itemballs:utility/remove_self

# remove tracking tag
tag @s remove itemballs.marker.tracking