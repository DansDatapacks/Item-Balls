# generate random number
scoreboard players operation #itemballs:rng.value itemballs.temp *= #itemballs:rng.multiplier itemballs.data
scoreboard players operation #itemballs:rng.value itemballs.temp += #itemballs:rng.increment itemballs.data

# swap bits
scoreboard players operation #itemballs:rng.bit_swap itemballs.temp = #itemballs:rng.value itemballs.temp
scoreboard players operation #itemballs:rng.bit_swap itemballs.temp /= #itemballs:65536 itemballs.data
scoreboard players operation #itemballs:rng.value itemballs.temp *= #itemballs:65536 itemballs.data
scoreboard players operation #itemballs:rng.value itemballs.temp += #itemballs:rng.bit_swap itemballs.temp

# return output
scoreboard players operation #itemballs:rng.output itemballs.temp = #itemballs:rng.value itemballs.temp
execute if score #itemballs:rng.input itemballs.temp matches 1.. run scoreboard players operation #itemballs:rng.output itemballs.temp %= #itemballs:rng.input itemballs.temp