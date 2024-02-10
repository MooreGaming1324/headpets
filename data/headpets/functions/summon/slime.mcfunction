##
 # slime.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
tag @p add hpetActive

##Summon Pet
summon armor_stand ~ ~ ~ {ShowArms:1b,CustomName:'[{"text":"Slime Pet","color":"gold"}]',CustomNameVisible:1b,Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:3096379,Invulnerable:1b,NoGravity:1b,Tags:["hpet"],ArmorItems:[{},{},{},{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-1654323308,-1819459522,-1183879552,684807134],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzlkZjI3ODIwMGEzNDc1MjU5ZTkyMTU1NDhmZjg2YzQ2ZGNlYTZjZjc0NjBlZjZhOWZmNmMwNjljMDkzNDEyYyJ9fX0="}]}}},Count:1}]}
data modify entity @e[tag=hpet,type=armor_stand,sort=nearest,limit=1] ArmorItems[3].tag.hpet set from entity @s Item.tag.hpet
scoreboard players operation @e[tag=hpet,type=armor_stand,sort=nearest,limit=1] hpets.pet_id = @p[tag=hpetActive] hpets.player_id

##Fancy Effects



kill @s