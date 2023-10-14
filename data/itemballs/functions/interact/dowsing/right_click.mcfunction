# triggers when player interacts with dowsing trigger (execute as player)

# player has dowsing tag
execute if entity @s[tag=itemballs.dowsing.tracking] run function itemballs:dowsing/attempt_dowsing

# remove advancement
advancement revoke @s only itemballs:dowsing/right_click_detect