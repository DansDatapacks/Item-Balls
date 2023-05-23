# runs every 1200 ticks (1 minute)

# select random player to attempt item ball spawn
function itemballs:spawn/select_player
tag @a remove itemballs.attempted_spawn

# loop
schedule function itemballs:loop/every_1200_ticks 1200t