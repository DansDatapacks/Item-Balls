# runs as players that are no longer dowsing

# get id
scoreboard players operation #itemballs.dowsing.id itemballs.temp = @s itemballs.id

# find trigger
execute as @e[type=minecraft:wandering_trader,tag=itemballs.dowsing.trigger] if score @s itemballs.id = #itemballs.dowsing.id itemballs.temp run tag @s add itemballs.dowsing.trigger.match

# remove trigger
execute as @e[type=minecraft:wandering_trader,tag=itemballs.dowsing.trigger.match] run tp ~ ~-1000 ~
execute as @e[type=minecraft:wandering_trader,tag=itemballs.dowsing.trigger.match] run kill @s

# remove tracking tag
tag @s remove itemballs.dowsing.tracking