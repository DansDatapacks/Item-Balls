# triggers when player interacts with item ball trigger (execute as player)

# find loot ball
function itemballs:utility/raycast/start

# execute as loot ball
execute at @e[type=minecraft:marker,tag=itemballs.raycast.ray] positioned ~ ~.7 ~ as @e[type=minecraft:armor_stand,tag=itemballs.marker,distance=...5] at @s run function itemballs:loot_pop

# reset trigger
advancement revoke @s only itemballs:itemball/left_click_detect