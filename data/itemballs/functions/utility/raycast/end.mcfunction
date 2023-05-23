# end raycast

# mark where the ray ended with an AEC entity
summon minecraft:marker ~ ~ ~ {Tags:["global.ignore","itemballs.raycast.ray"]}

# schedule removal of marker
schedule function itemballs:utility/raycast/remove_raycast_markers 1t