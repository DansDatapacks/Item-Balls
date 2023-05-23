# attempts to spawn an item ball (executes as randomly selected player)

# get item ball count
execute store result score #itemballs.item_ball_count itemballs.temp run execute if entity @e[type=minecraft:armor_stand,tag=itemballs.marker,distance=..200]

# fail, find another player
execute if score #itemballs.item_ball_count itemballs.temp matches 3.. run tag @s add itemballs.attempted_spawn
execute if entity @s[tag=itemballs.attempted_spawn] run function itemballs:spawn/select_player 

# success
execute unless entity @s[tag=itemballs.attempted_spawn] run function itemballs:spawn/spawn_item_ball