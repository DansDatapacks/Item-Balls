# triggers when player interacts with item ball trigger (execute as player)

# find loot ball
function itemballs:utility/raycast/start

# tag executor
tag @s add itemballs.opening_item_ball

# execute as loot ball
execute at @e[type=minecraft:marker,tag=itemballs.raycast.ray] positioned ~ ~.7 ~ as @e[type=minecraft:armor_stand,tag=itemballs.marker,distance=...5] at @s run function itemballs:loot_give

# remove tag
tag @s remove itemballs.opening_item_ball

# reset trigger
advancement revoke @s only itemballs:itemball/right_click_detect