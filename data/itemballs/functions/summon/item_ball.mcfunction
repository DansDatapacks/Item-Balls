# randomly choose an item ball to spawn

# random
scoreboard players set #itemballs:rng.input itemballs.temp 100
function itemballs:utility/rng/rng
scoreboard players add #itemballs:rng.output itemballs.temp 1
scoreboard players operation #itemballs:rarity itemballs.temp = #itemballs:rng.output itemballs.temp

# summon
execute if score #itemballs:rarity itemballs.temp matches 1..15 run function itemballs:summon/ultraball_item_ball 
execute if score #itemballs:rarity itemballs.temp matches 15..50 run function itemballs:summon/greatball_item_ball 
execute if score #itemballs:rarity itemballs.temp matches 50..100 run function itemballs:summon/pokeball_item_ball 