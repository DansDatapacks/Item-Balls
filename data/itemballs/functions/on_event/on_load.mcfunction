# runs on every load or reload

# init variables
scoreboard objectives add itemballs.data dummy
scoreboard objectives add itemballs.temp dummy
scoreboard objectives add itemballs.id dummy

# constants
scoreboard players set #10 itemballs.data 10

# init loops
function itemballs:loop/every_20_ticks