##
 # checks.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
#Reset fail scoreboard
scoreboard players reset .SummonFail hpet.temp

#If player already has a pet active
execute if entity @p[tag=hpetActive] run function hpet:summon/fail
#If the pet has a set owner
execute if data entity @s Item.tag.hpet.OwnerID run execute store result score .Id hpet.temp run data get entity @s Item.tag.hpet.OwnerID
execute if data entity @s Item.tag.hpet.OwnerID run execute unless score @p hpet.player_id = .Id hpet.temp run function hpet:summon/fail


execute unless score .SummonFail hpet.temp matches 0..