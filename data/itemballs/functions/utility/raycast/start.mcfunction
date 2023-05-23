# starts raycast

# reset past raycast
kill @e[type=minecraft:area_effect_cloud,tag=itemballs.raycast.ray]

# init raycast tag
tag @s add itemballs.raycast.raycasting

# set defaults
scoreboard players set #itemballs:raycast.hit itemballs.temp 0
execute unless score #itemballs:raycast.distance itemballs.temp matches 0.. run scoreboard players set #itemballs:raycast.distance itemballs.temp 7

# scale distance
scoreboard players operation #itemballs:raycast.distance itemballs.temp *= #10 itemballs.data

# run raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function itemballs:utility/raycast/run

# reset tag
tag @s remove itemballs.raycast.raycasting

# reset scores
scoreboard players reset #itemballs:raycast.hit itemballs.temp
scoreboard players reset #itemballs:raycast.distance itemballs.temp
scoreboard players reset #itemballs:raycast.distance_traveled itemballs.temp