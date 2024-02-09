##
 # 1s_loop.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
schedule function headpets:1s_loop 1s replace



##Idle animation loop
scoreboard players add .Idle hpets.temp 1
execute if score .Idle hpets.temp matches 2 run scoreboard players set .Idle hpets.temp 0