# runs every 6000 ticks (5 minute)

# select random player to attempt item ball spawn
function itemballs:spawn/select_player
tag @a remove itemballs.attempted_spawn

# loop
schedule function itemballs:loop/every_6000_ticks 6000t