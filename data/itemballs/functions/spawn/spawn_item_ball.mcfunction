# spawns item ball (executes as viable player)

# spawn location marker
summon minecraft:marker ~ ~ ~ {Tags:["global.ignore","itemballs.spawn_location"]}

# randomly spread
spreadplayers ~ ~ 50 150 false @e[type=minecraft:marker,tag=itemballs.spawn_location,limit=1,sort=nearest]

# spawn item ball at random location
execute at @e[type=minecraft:marker,tag=itemballs.spawn_location,limit=1,sort=nearest] run function itemballs:summon/item_ball

# remove spawn location marker
kill @e[type=minecraft:marker,tag=itemballs.spawn_location]