# runs every tick, but triggers a spawn if it meets the set requirement

# increase timer
scoreboard players add #itemballs:spawn_timer itemballs.temp 1

# if timer met, then attempt spawn
execute if score #itemballs:spawn_timer itemballs.temp >= #itemballs:spawn_timer itemballs.data run function itemballs:spawn/attempt_spawn

# reset timer
execute if score #itemballs:spawn_timer itemballs.temp >= #itemballs:spawn_timer itemballs.data run scoreboard players reset #itemballs:spawn_timer itemballs.temp

# loop
schedule function itemballs:loop/every_spawn_timer_ticks 1t replace