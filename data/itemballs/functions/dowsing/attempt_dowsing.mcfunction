# executes as player that right clicked with dowsing machine

# check cooldown
#execute if score @s itemballs.dowsing_cooldown matches 1.. run title @s actionbar {"text": "Dowsing Machine is Booting up..."}

# passed
execute unless score @s itemballs.dowsing_cooldown matches 1.. run function itemballs:dowsing/trigger_dowsing