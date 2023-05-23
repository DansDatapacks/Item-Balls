# rare loot item ball

# summon marker (aligned to the grid)
execute align xyz positioned ~0.5 ~1 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"cobblemon:ultra_ball",Count:1b}],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","itemballs.marker","itemballs.marker.init","itemballs.rare"]}

# place item ball
execute as @e[type=minecraft:armor_stand,tag=itemballs.marker.init,limit=1,sort=nearest] at @s run function itemballs:place_marker