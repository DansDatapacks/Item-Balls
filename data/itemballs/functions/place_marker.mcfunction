# place marker properly (runs as item ball marker)

# find suitable ground
function itemballs:utility/find_air_above_ground

# move down
execute at @s run tp ~ ~-.7 ~

# another pokeball item ball already here?
execute at @s if entity @e[type=minecraft:armor_stand,tag=itemballs.marker,tag=!itemballs.marker.init,distance=...5] run kill @s

# randomly rotate
execute at @s unless entity @e[type=minecraft:armor_stand,tag=itemballs.marker,tag=!itemballs.marker.init,distance=...5] run function itemballs:rotate_marker