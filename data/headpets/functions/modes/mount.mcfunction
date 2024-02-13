##
 # hover.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute unless score @p[tag=hpetActive] hpet.option.shoulder_hover matches 0.. run scoreboard players set @p[tag=hpetActive] hpet.option.shoulder_hover 0
execute if entity @p[tag=hpetActive,scores={hpet.option.shoulder_hover=0}] run tp @s ^-1.2 ^.7 ^-.3 facing ^ ^ ^1
execute if entity @p[tag=hpetActive,scores={hpet.option.shoulder_hover=1}] run tp @s ^1.2 ^.7 ^-.3 facing ^ ^ ^1