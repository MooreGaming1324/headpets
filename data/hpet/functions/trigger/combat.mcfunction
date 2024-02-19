##
 # combat_hide.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
advancement revoke @s only hpet:combat

tag @s add hpetCombat
tag @s remove hpetMount
scoreboard players set @s hpet.combat 1200