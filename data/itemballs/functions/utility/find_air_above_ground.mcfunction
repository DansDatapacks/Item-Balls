# teleport executor down until it hits a block with air above it, otherwise kill it

#tp down
execute at @s if block ~ ~-.1 ~ #itemballs:passable run tp ~ ~-.1 ~

#loop
execute at @s if block ~ ~-.1 ~ #itemballs:passable run function itemballs:utility/find_air_above_ground