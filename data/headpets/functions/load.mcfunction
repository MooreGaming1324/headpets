##
 # load.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##Create scoreboards
scoreboard objectives add hpets.temp dummy
execute unless score .Idle hpets.temp matches 0.. run scoreboard players set .Idle hpets.temp 0
scoreboard objectives add hpets.player_id dummy
execute unless score .Next hpets.player_id matches 0.. run scoreboard players set .Next hpets.player_id 1
scoreboard objectives add hpets.pet_id dummy
scoreboard objectives add hpets.option.shoulder_hover dummy


##Player Detection Scoreboards
scoreboard objectives add hpets.jump minecraft.custom:minecraft.jump
scoreboard objectives add hpets.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add hpets.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add hpets.sneak minecraft.custom:sneak_time


##Start loops
schedule function headpets:1s_loop 1t replace