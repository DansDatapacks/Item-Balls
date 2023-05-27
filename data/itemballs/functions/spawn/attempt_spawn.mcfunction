# attempts to spawn an item ball at a random player (runs globally)

# selects a random player to spawn an item ball at if they meet requirements
function itemballs:spawn/select_player

# reset
tag @a remove itemballs.attempted_spawn