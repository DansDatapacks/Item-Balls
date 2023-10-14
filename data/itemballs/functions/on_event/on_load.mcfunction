# runs on every load or reload

# init variables
scoreboard objectives add itemballs.data dummy
scoreboard objectives add itemballs.temp dummy
scoreboard objectives add itemballs.id dummy
scoreboard objectives add itemballs.crouching minecraft.custom:minecraft.sneak_time
scoreboard objectives add itemballs.dowsing_cooldown dummy

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

# teams
team add noCollision
team modify noCollision collisionRule never

# init spawn timer
execute unless score #itemballs:spawn_timer itemballs.data matches 1.. run scoreboard players set #itemballs:spawn_timer itemballs.data 6000

# pause loops
schedule clear itemballs:loop/every_5_ticks
schedule clear itemballs:loop/every_10_ticks
schedule clear itemballs:loop/every_20_ticks
schedule clear itemballs:loop/every_6000_ticks
schedule clear itemballs:loop/every_spawn_timer_ticks

# init loops
function itemballs:loop/every_5_ticks
function itemballs:loop/every_10_ticks
function itemballs:loop/every_20_ticks
execute if score #itemballs:spawn_timer itemballs.data matches 6000 run function itemballs:loop/every_6000_ticks
execute unless score #itemballs:spawn_timer itemballs.data matches 6000 run function itemballs:loop/every_spawn_timer_ticks