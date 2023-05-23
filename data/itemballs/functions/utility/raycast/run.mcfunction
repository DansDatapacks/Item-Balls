# run raycast

# if hit trigger
execute positioned ~ ~-1.7 ~ if entity @e[type=minecraft:wandering_trader,tag=itemballs.trigger,distance=...5] run scoreboard players set #itemballs:raycast.hit itemballs.temp 1

# mark that the ray has traveled one more time
scoreboard players add #itemballs:raycast.distance_traveled itemballs.temp 1

# debug
#tellraw @a {"score":{"name":"#itemballs:raycast.distance","objective":"itemballs.temp"}}
#tellraw @a {"score":{"name":"#itemballs:raycast.hit","objective":"itemballs.temp"}}
#tellraw @a {"score":{"name":"#itemballs:raycast.distance_traveled","objective":"itemballs.temp"}}

# if hit found: end
execute if score #itemballs:raycast.hit itemballs.temp matches 1 positioned ~ ~-1.7 ~ run function itemballs:utility/raycast/end

# else: continue
execute unless score #itemballs:raycast.hit itemballs.temp matches 1 unless score #itemballs:raycast.distance_traveled itemballs.temp = #itemballs:raycast.distance itemballs.temp positioned ^ ^ ^0.1 run function itemballs:utility/raycast/run