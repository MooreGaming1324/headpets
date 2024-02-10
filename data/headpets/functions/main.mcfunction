##
 # main.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##Pet Summon Detection
execute as @e[type=item,nbt={Item:{tag:{hpet:{Pet:true}}}}] if entity @p[tag=!hpetActive] run function headpets:summon/check_pet





##Mode Detection
#hover around players head
execute as @a[tag=hpetActive,scores={hpets.sprint=0,hpets.sneak=0,hpets.jump=0,hpets.walk=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpets.pet_id = @p hpets.player_id run function headpets:modes/hover
#follow player when moving
execute as @a[tag=hpetActive,scores={hpets.sprint=1..,hpets.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpets.pet_id = @p hpets.player_id run function headpets:modes/follow
execute as @a[tag=hpetActive,scores={hpets.jump=1..,hpets.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpets.pet_id = @p hpets.player_id run function headpets:modes/follow
execute as @a[tag=hpetActive,scores={hpets.walk=1..,hpets.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpets.pet_id = @p hpets.player_id run function headpets:modes/follow
#idle bob when player sneaking
execute as @a[tag=hpetActive,scores={hpets.sneak=1..}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpets.pet_id = @p hpets.player_id run function headpets:modes/idle


##Reset detection scoreboards
scoreboard players set @a hpets.sprint 0
scoreboard players set @a hpets.sneak 0
scoreboard players set @a hpets.walk 0
execute as @a at @s unless block ~ ~-.001 ~ air run scoreboard players set @s hpets.jump 0