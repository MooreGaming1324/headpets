##
 # main.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##







##Mode Detection
#hover around players head
execute as @a[tag=hpetActive] at @s as @e[tag=hpet,type=armor_stand] if score @s hpets.pet_id = @p hpets.player_id run function headpets:modes/hover
