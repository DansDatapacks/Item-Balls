# common loot item ball

# summon marker (aligned to the grid)
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"cobblemon:poke_ball",Count:1b}],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","itemballs.marker","itemballs.marker.init","itemballs.common"]}

# find suitable ground
execute as @e[type=minecraft:armor_stand,tag=itemballs.marker.init,limit=1,sort=nearest] at @s run function itemballs:utility/find_air_above_ground

# move down
execute as @e[type=minecraft:armor_stand,tag=itemballs.marker.init,limit=1,sort=nearest] at @s run tp ~ ~-.7 ~

# another pokeball itemball already here?
execute as @e[type=minecraft:armor_stand,tag=itemballs.marker.init,limit=1,sort=nearest] at @s if entity @e[type=minecraft:armor_stand,tag=itemballs.marker,tag=!itemballs.marker.init,distance=..0.5] run kill @s

# remove init tag
tag @e[type=minecraft:armor_stand,tag=itemballs.marker.init] remove itemballs.marker.init