# sync trigger to marker (executes as trigger)

# get id
scoreboard players operation #itemballs.trigger_id itemballs.temp = @s itemballs.id

# tag for syncing
tag @s add itemballs.trigger.sync

# find matching marker
execute as @e[type=minecraft:armor_stand,tag=itemballs.marker,tag=itemballs.marker.tracking] if score @s itemballs.id = #itemballs.trigger_id itemballs.temp at @s run tp @e[type=minecraft:wandering_trader,tag=itemballs.trigger.sync] ~ ~-.7 ~

# remove tag
tag @s remove itemballs.trigger.init
tag @s remove itemballs.trigger.sync