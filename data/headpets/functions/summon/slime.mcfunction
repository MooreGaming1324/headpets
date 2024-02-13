##
 # slime.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
tag @p add hpetActive

##Summon Pet
#copy values from item to mob
summon armor_stand ~ ~ ~ {ShowArms:1b,CustomNameVisible:1b,Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:3096379,Invulnerable:1b,NoGravity:1b,Tags:["hpet"],ArmorItems:[{},{},{},{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-1654323308,-1819459522,-1183879552,684807134],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzlkZjI3ODIwMGEzNDc1MjU5ZTkyMTU1NDhmZjg2YzQ2ZGNlYTZjZjc0NjBlZjZhOWZmNmMwNjljMDkzNDEyYyJ9fX0="}]}}},Count:1}]}
data modify entity @e[tag=hpet,type=armor_stand,sort=nearest,limit=1] ArmorItems[3].tag.hpet set from entity @s Item.tag.hpet
scoreboard players operation @e[tag=hpet,type=armor_stand,sort=nearest,limit=1] hpet.pet_id = @p[tag=hpetActive] hpet.player_id
#set lvl name
execute store result score .Level hpet.temp run data get entity @s Item.tag.hpet.Tier
summon text_display ~ ~ ~ {Tags:["hpetTemp"]}
data modify entity @e[tag=hpetTemp,sort=nearest,limit=1] text set value '[{"text":"Lvl ","color":"gold"},{"score":{"name":".Level","objective":"hpet.temp"},"color":"gold"},{"text":" Slime Pet","color":"gold"}]'
data modify entity @e[tag=hpet,type=armor_stand,sort=nearest,limit=1] CustomName set from entity @e[tag=hpetTemp,sort=nearest,limit=1] text
kill @e[type=text_display,tag=hpetTemp]

##Fancy Effects



kill @s