# runs every 20 ticks (1 second)

# handle item ball markers
execute as @e[type=minecraft:armor_stand,tag=itemballs.marker] at @s run function itemballs:handle_itemball

# loop
schedule function itemballs:loop/every_20_ticks 20t