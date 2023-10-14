# executes as player that right clicked with dowsing machine

# find nearest item ball
execute at @s as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=itemballs.marker,distance=..50] run tag @s add itemballs.marker.found

# found
execute if entity @e[type=minecraft:armor_stand,tag=itemballs.marker.found] run function itemballs:dowsing/found_item_ball

# not found
execute unless entity @e[type=minecraft:armor_stand,tag=itemballs.marker.found] run function itemballs:dowsing/failed_to_find_item_ball

# remove tags
tag @e[type=minecraft:armor_stand,tag=itemballs.marker.found] remove itemballs.marker.found

# cooldown
scoreboard players set @s itemballs.dowsing_cooldown 8