# runs every 20 ticks (1 second)

# give players ID
execute as @a unless score @s itemballs.id matches 0.. run function itemballs:utility/get_id

# remove rogue triggers
execute as @e[type=minecraft:wandering_trader,tag=itemballs.trigger] at @s positioned ~ ~.7 ~ unless entity @e[type=minecraft:armor_stand,tag=itemballs.marker,distance=...5] run tp ~ -1000 ~

# loop
schedule function itemballs:loop/every_20_ticks 20t replace