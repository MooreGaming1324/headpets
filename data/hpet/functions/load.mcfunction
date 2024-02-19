##
 # load.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##Create scoreboards
scoreboard objectives add hpet.temp dummy
execute unless score .Idle hpet.temp matches 0.. run scoreboard players set .Idle hpet.temp 0
scoreboard objectives add hpet.player_id dummy
execute unless score .Next hpet.player_id matches 0.. run scoreboard players set .Next hpet.player_id 1
scoreboard objectives add hpet.pet_id dummy
scoreboard objectives add hpet.combat dummy

#Option Configs
scoreboard objectives add hpet.option.shoulder_hover dummy
scoreboard objectives add hpet.option.sounds dummy


##Trigger Commands
scoreboard objectives add hpet_mount trigger

##Start loops
schedule function hpet:1s_loop 1t replace