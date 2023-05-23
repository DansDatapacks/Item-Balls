# reset
scoreboard players set #itemballs:rng.output itemballs.temp 0

# randomize using predicates (50%)
execute if predicate itemballs:rng/50 run scoreboard players set #itemballs:rng.output itemballs.temp -2147483648
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 1073741824
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 536870912
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 268435456
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 134217728
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 67108864
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 33554432
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 16777216
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 8388608
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 4194304
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 2097152
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 1048576
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 524288
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 262144
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 131072
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 65536
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 32768
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 16384
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 8192
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 4096
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 2048
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 1024
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 512
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 256
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 128
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 64
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 32
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 16
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 8
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 4
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 2
execute if predicate itemballs:rng/50 run scoreboard players add #itemballs:rng.output itemballs.temp 1

# output
execute if score #itemballs:rng.input itemballs.temp matches 1.. run scoreboard players operation #itemballs:rng.output itemballs.temp %= #itemballs:rng.input itemballs.temp