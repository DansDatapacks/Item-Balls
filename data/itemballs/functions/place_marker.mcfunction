# runs as item ball marker after being summoned to be properly placed

# find suitable ground
function itemballs:utility/find_air_above_ground

# move down
execute at @s run tp ~ ~-.7 ~

# another pokeball item ball already here?
execute if entity @e[type=minecraft:armor_stand,tag=itemballs.marker,tag=!itemballs.marker.init,distance=..0.5] run kill @s

# remove init tag
tag @s remove itemballs.marker.init