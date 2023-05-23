# rotate marker (executes as item ball marker)

# random
scoreboard players set #itemballs:rng.input itemballs.temp 8
function itemballs:utility/rng/rng
scoreboard players add #itemballs:rng.output itemballs.temp 1
scoreboard players operation #itemballs:direction itemballs.temp = #itemballs:rng.output itemballs.temp

# rotate
execute if score #itemballs:direction itemballs.temp matches 2 at @s rotated ~45 ~ run tp ~ ~ ~
execute if score #itemballs:direction itemballs.temp matches 3 at @s rotated ~90 ~ run tp ~ ~ ~
execute if score #itemballs:direction itemballs.temp matches 4 at @s rotated ~135 ~ run tp ~ ~ ~
execute if score #itemballs:direction itemballs.temp matches 5 at @s rotated ~180 ~ run tp ~ ~ ~
execute if score #itemballs:direction itemballs.temp matches 6 at @s rotated ~225 ~ run tp ~ ~ ~
execute if score #itemballs:direction itemballs.temp matches 7 at @s rotated ~270 ~ run tp ~ ~ ~
execute if score #itemballs:direction itemballs.temp matches 8 at @s rotated ~315 ~ run tp ~ ~ ~

# give ID
function itemballs:utility/get_id

# remove init tag
tag @s remove itemballs.marker.init