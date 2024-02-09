##
 # load.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##Create scoreboards
scoreboard objectives add hpets.player_id dummy
execute unless score .Next hpets.player_id matches 0.. run scoreboard players set .Next hpets.player_id 1
scoreboard objectives add hpets.pet_id dummy