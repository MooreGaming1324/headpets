##
 # check_pet.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
advancement revoke @s only hpet:recall_pet
#>Type List in hpet.Type nbt
# Type 1 = Slime Pet


say hi

#Slime
#execute if entity @s[nbt={Item:{tag:{hpet:{Type:1b}}}}] run function hpet:summon/slime
