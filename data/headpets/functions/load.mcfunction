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
#Option Configs
scoreboard objectives add hpet.option.shoulder_hover dummy


##Player Detection Scoreboards
scoreboard objectives add hpet.jump minecraft.custom:minecraft.jump
scoreboard objectives add hpet.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add hpet.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add hpet.sneak minecraft.custom:sneak_time


##Trigger Commands
scoreboard objectives add hpet_mount trigger

##Start loops
schedule function headpets:1s_loop 1t replace