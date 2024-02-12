##
 # set_id.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
scoreboard players operation @s hpet.player_id = .Next hpet.player_id
scoreboard players add .Next hpet.player_id 1

scoreboard players set @s hpet.option.shoulder_hover 0