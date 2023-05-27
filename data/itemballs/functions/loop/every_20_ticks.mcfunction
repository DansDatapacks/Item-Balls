# runs every 20 ticks (1 second)

# remove rogue triggers
execute as @e[type=minecraft:wandering_trader,tag=itemballs.trigger] at @s positioned ~ ~.7 ~ unless entity @e[type=minecraft:armor_stand,tag=itemballs.marker,distance=...5] run tp ~ -1000 ~

# loop
schedule function itemballs:loop/every_20_ticks 20t replace