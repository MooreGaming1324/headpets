##
 # set_id.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
scoreboard players operation @s hpets.player_id = .Next hpets.player_id
scoreboard players add .Next hpets.player_id 1

scoreboard players set @s hpets.option.shoulder_hover 0