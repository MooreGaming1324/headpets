##
 # check_pet.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

#>Type List in hpet.Type nbt
# Type 1 = Slime Pet




#Slime
execute if entity @s[nbt={Item:{tag:{hpet:{Type:1b}}}}] run function headpets:summon/pet/slime
