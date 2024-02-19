##
 # main.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##Triggers
scoreboard players enable @a hpet_mount
execute as @a[scores={hpet_mount=1..}] run function hpet:trigger/mount