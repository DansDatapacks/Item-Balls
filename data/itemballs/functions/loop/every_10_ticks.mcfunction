# runs every 10 ticks (half a second)

# handle item ball markers
execute as @e[type=minecraft:armor_stand,tag=itemballs.marker] at @s run function itemballs:handle_itemball

# loop
schedule function itemballs:loop/every_10_ticks 10t replace