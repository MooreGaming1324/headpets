##
 # 1s_loop.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
schedule function hpet:1s_loop 1s replace



##Idle animation loop
scoreboard players add .Idle hpet.temp 1
execute if score .Idle hpet.temp matches 2 run scoreboard players set .Idle hpet.temp 0