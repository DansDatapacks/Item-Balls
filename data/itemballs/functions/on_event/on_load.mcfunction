# runs on every load or reload

# init variables
scoreboard objectives add itemballs.data dummy
scoreboard objectives add itemballs.temp dummy
scoreboard objectives add itemballs.id dummy

# rng
scoreboard players set #itemballs:65536 itemballs.data 65536
scoreboard players set #itemballs:rng.multiplier itemballs.data 1664525
scoreboard players set #itemballs:rng.increment itemballs.data 1013904223

# init rng
scoreboard players set #itemballs:rng.input itemballs.temp 0
function itemballs:utility/rng/rng_init
scoreboard players operation #itemballs:rng.value itemballs.temp = #itemballs:rng.output itemballs.temp

# constants
scoreboard players set #10 itemballs.data 10

# init loops
function itemballs:loop/every_10_ticks
function itemballs:loop/every_20_ticks
function itemballs:loop/every_1200_ticks