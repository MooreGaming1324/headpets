##
 # combat_hide.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score @p hpet.combat matches 1.. run scoreboard players remove @p hpet.combat 1
execute if score @p hpet.combat matches 0 run tag @p remove hpetCombat
tp @s ~ ~300 ~