# player detected near item ball marker (executes as item ball)

# summon trigger wandering trader (in the sky to not show it)
summon minecraft:wandering_trader ~ 500 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Offers:{},ActiveEffects:[{Id:11,Amplifier:5b,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Tags:["global.ignore","itemballs.trigger","itemballs.trigger.init"]}

# sync id between marker and trigger wandering trader
execute positioned ~ 500 ~ run scoreboard players operation @e[type=minecraft:wandering_trader,tag=itemballs.trigger.init,limit=1,sort=nearest] itemballs.id = @s itemballs.id

# tag as tracking
tag @s add itemballs.marker.tracking

# move triggers to item balls in next tick
schedule function itemballs:init_sync_triggers 1t append