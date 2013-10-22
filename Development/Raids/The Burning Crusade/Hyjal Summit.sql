/* Copyright (C) 11 April 2011-2013 patch Project 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version. 
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public Licensefor more details.
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see <http://www.gnu.org/licenses/> 
 *
 * patch Project  Copyright (C) 11 April 2011 patch Project 
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it
 * under certain conditions.
 */
 
 
  /* Raid Normal for 25 people */
 /* Bosses */
 
-- Anetheron
SET @ENTRY := 17808;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,2,0,0,100,2,20000,28000,10000,15000,11,31306,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Carrion Swarm'),
(@ENTRY,0,2,0,61,0,100,3,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,3,4,0,0,100,2,25000,32000,35000,48000,11,31298,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Sleep'),
(@ENTRY,0,4,0,61,0,100,3,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,5,6,0,0,100,2,30000,48000,60000,70000,11,31299,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Inferno'),
(@ENTRY,0,6,0,61,0,100,3,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,7,0,0,0,100,2,3000,11000,26000,35000,11,38196,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Vampiric Aura'),
(@ENTRY,0,8,0,0,0,100,2,600000,600000,300000,300000,11,26662,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Berserk'),
(@ENTRY,0,9,0,5,0,100,2,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Player Kill'),
(@ENTRY,0,10,0,6,0,100,3,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death');
-- NPC talk text insert
SET @ENTRY := 17808;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'You are defenders of a doomed world! Flee here, and perhaps you will prolong your pathetic lives!',14,0,100,0,0,10977, 'on Aggro Text'),
(@ENTRY,1,0, 'The swarm is eager to feed!',14,0,50,0,0,10979, 'on Spell Cast Text'),
(@ENTRY,1,1, 'Pestilence upon you!',14,0,50,0,0,11037, 'on Spell Cast Text'),
(@ENTRY,2,0, 'You look tired...',14,0,50,0,0,10978, 'on Spell Cast Text'),
(@ENTRY,2,1, 'Sweet dreams...',14,0,50,0,0,11545, 'on Spell Cast Text'),
(@ENTRY,3,0, 'Let fire rain from above!',14,0,50,0,0,10980, 'on Spell Cast Text'),
(@ENTRY,3,1, 'Earth and sky shall burn!',14,0,50,0,0,11036, 'on Spell Cast Text'),
(@ENTRY,4,0, 'Your hopes are lost!',14,0,50,0,0,10981, 'on Player Death Text'),
(@ENTRY,4,1, 'Scream for me!',14,0,50,0,0,11038, 'on Player Death Text'),
(@ENTRY,4,2, 'Pity, no time for a slow death!',14,0,50,0,0,11039, 'on Player Death Text'),
(@ENTRY,5,0, 'The clock... is still... ticking.',14,0,100,0,0,10982, 'on Death Text');

-- Azgalor
SET @ENTRY := 17842;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,0,9,0,100,2,0,5,10000,16000,11,31345,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave on Close'),
(@ENTRY,0,2,0,0,0,100,2,9000,20000,20000,35000,11,31340,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Rain of Fire'),
(@ENTRY,0,3,0,0,0,100,2,15000,21000,15000,22000,11,31344,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Howl of Azgalor'),
(@ENTRY,0,4,5,0,0,100,2,30000,45000,45000,50000,11,31347,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Doom'),
(@ENTRY,0,5,0,61,0,100,3,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,6,0,0,0,100,2,600000,600000,300000,300000,11,26662,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Berserk'),
(@ENTRY,0,7,0,5,0,100,2,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Player Kill'),
(@ENTRY,0,8,9,6,0,100,3,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death'),
(@ENTRY,0,9,0,61,0,100,3,0,0,0,0,12,13083,0,35000,0,0,0,1,0,0,0,0,0,0,0,'Spawn Echo of Archimonde on Death');
-- NPC talk text insert
SET @ENTRY := 17842;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Abandon all hope! The Legion has returned to finish what was begun so many years ago. This time, there will be no escape!!',14,0,100,0,0,10999, 'on Aggro Text'),
(@ENTRY,1,0, 'Just a taste... of what awaits you.',14,0,50,0,0,11046, 'on Spell Cast Text'),
(@ENTRY,1,1, 'Suffer you despicable insect!',14,0,50,0,0,11000, 'on Spell Cast Text'),
(@ENTRY,2,0, 'Reesh, hokta!',14,0,50,0,0,11001, 'on Player Kill Text'),
(@ENTRY,2,1, 'Don\'t fight it.',14,0,50,0,0,11047, 'on Player Kill Text'),
(@ENTRY,2,2, 'No one is going to save you.',14,0,50,0,0,11048, 'on Player Kill Text'),
(@ENTRY,3,0, 'Your time is almost... up.',14,0,100,0,0,11002, 'on Death Text');

-- Kaz'rogal
SET @ENTRY := 17888;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,0,9,0,100,2,0,5,6000,21000,11,31436,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Malevolent Cleave on Close'),
(@ENTRY,0,2,0,0,0,100,2,12000,18000,15000,21000,11,31480,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast War Stomp'),
(@ENTRY,0,3,0,0,0,100,2,6000,11000,10000,12000,11,31477,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Cripple'),
(@ENTRY,0,4,5,0,0,100,3,45000,45000,0,0,11,31447,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of Kaz\'rogal'),
(@ENTRY,0,5,0,61,0,100,3,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,6,5,0,0,100,3,85000,85000,0,0,11,31447,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of Kaz\'rogal'),
(@ENTRY,0,7,5,0,0,100,3,120000,120000,0,0,11,31447,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of Kaz\'rogal'),
(@ENTRY,0,8,5,0,0,100,3,150000,150000,0,0,11,31447,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of Kaz\'rogal'),
(@ENTRY,0,9,5,0,0,100,3,175000,175000,0,0,11,31447,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of Kaz\'rogal'),
(@ENTRY,0,10,5,0,0,100,3,195000,195000,0,0,11,31447,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of Kaz\'rogal'),
(@ENTRY,0,11,5,0,0,100,2,210000,210000,10000,10000,11,31447,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of Kaz\'rogal'),
(@ENTRY,0,12,0,5,0,100,2,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Player Kill'),
(@ENTRY,0,13,0,6,0,100,3,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death');
-- NPC talk text insert
SET @ENTRY := 17888;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Cry for mercy! Your meaningless lives will soon be forfeit!',14,0,100,0,0,11015, 'on Aggro Text'),
(@ENTRY,1,0, 'Your death will be a painful one.',14,0,50,0,0,11016, 'on Spell Cast Text'),
(@ENTRY,1,1, 'You... are marked.',14,0,50,0,0,11052, 'on Spell Cast Text'),
(@ENTRY,2,0, 'You... are nothing!',14,0,50,0,0,11053, 'on Player Kill Text'),
(@ENTRY,2,1, 'Miserable nuisance!',14,0,50,0,0,11054, 'on Player Kill Text'),
(@ENTRY,3,0, 'Shaza-Kiel!',14,0,100,0,0,11017, 'on Death Text');

-- Rage Winterchill
SET @ENTRY := 17767;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,0,0,0,100,2,5000,9000,9000,15000,11,31249,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Icebolt'),
(@ENTRY,0,2,3,0,0,100,2,12000,17000,19000,26000,11,31250,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frost Nova'),
(@ENTRY,0,3,0,61,0,100,3,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,4,5,0,0,100,2,21000,28000,35000,45000,11,31258,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Death & Decay'),
(@ENTRY,0,5,0,61,0,100,3,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,6,0,0,0,100,2,600000,600000,300000,300000,11,26662,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Berserk'),
(@ENTRY,0,7,0,0,0,100,2,18000,21000,30000,45000,11,31256,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frost Armor'),
(@ENTRY,0,8,0,5,0,100,2,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Player Kill'),
(@ENTRY,0,9,0,6,0,100,3,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death');
-- NPC talk text insert
SET @ENTRY := 17767;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'The Legion\'s final conquest has begun! Once again the subjugation of this world is within our grasp. Let none survive!',14,0,100,0,0,11022, 'on Spawn Text'),
(@ENTRY,1,0, 'Succumb to the icy chill... of death!',14,0,50,0,0,11024, 'on Spell Cast Text'),
(@ENTRY,1,1, 'It will be much colder in your grave.',14,0,50,0,0,11058, 'on Spell Cast Text'),
(@ENTRY,2,0, 'Crumble and rot!',14,0,50,0,0,11023, 'on Spell Cast Text'),
(@ENTRY,2,1, 'Ashes to ashes, dust to dust.',14,0,50,0,0,11055, 'on Spell Cast Text'),
(@ENTRY,3,0, 'All life must perish!',14,0,50,0,0,11025, 'on Player Kill Text'),
(@ENTRY,3,1, 'Victory to the Legion!',14,0,50,0,0,11057, 'on Player Kill Text'),
(@ENTRY,3,2, 'Your world is ours now.',14,0,50,0,0,11056, 'on Player Kill Text'),
(@ENTRY,3,0, 'You have won this battle, but not... the... war.',14,0,100,0,0,11026, 'on Death Text');

 /* Trash Mobs */
 
 -- Abomination
SET @ENTRY := 17898;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,3,0,0,0,0,11,31607,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Disease Cloud on Spawn'),
(@ENTRY,0,1,0,9,0,100,2,0,5,12000,19000,11,31610,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Knockdown on Close');

-- Alliance Footman
SET @ENTRY := 17919;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,8000,16000,25000,11,31731,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shield Wall');

-- Alliance Knight
SET @ENTRY := 17919;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,1000,3000,21000,35000,11,31732,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rallying Cry');

-- Alliance Priest
SET @ENTRY := 17928;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,3,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,3,0,0,0,0,11,31740,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Holy Smite on Aggro'),
(@ENTRY,0,3,0,9,1,100,2,0,40,3400,4700,11,31740,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Holy Smite'),
(@ENTRY,0,4,0,9,1,100,2,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Holy Smite Range'),
(@ENTRY,0,5,0,9,1,100,2,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,2,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Holy Smite Range'),
(@ENTRY,0,7,0,3,1,100,2,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,2,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,2,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,14,0,100,2,15000,40,15000,21000,11,31739,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Heal on Friendlies');
 
-- Alliance Rifleman
SET @ENTRY := 17921;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,3,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,1,2,61,0,100,3,0,0,0,0,11,32103,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,2,3,61,0,100,3,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Melee Attack on Aggro'),
(@ENTRY,0,3,0,61,0,100,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,4,5,9,1,100,2,5,30,2300,3900,11,32103,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,5,0,61,1,100,2,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Ranged Weapon Model'),
(@ENTRY,0,6,7,9,1,100,2,30,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,61,1,100,2,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Melee Attack when not in Shoot Range'),
(@ENTRY,0,8,9,9,1,100,2,0,10,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,9,10,61,1,100,2,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Melee Weapon Model when not in Shoot Range'),
(@ENTRY,0,10,0,61,1,100,2,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Melee Attack when not in Shoot Range'),
(@ENTRY,0,11,12,9,1,100,2,11,25,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 25 Yards'),
(@ENTRY,0,12,13,61,1,100,2,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Melee Attack at 25 Yards'),
(@ENTRY,0,13,0,61,1,100,2,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Ranged Weapon Model at 25 Yards'),
(@ENTRY,0,14,15,7,1,100,3,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Melee Weapon Model on Evade'),
(@ENTRY,0,15,0,61,1,100,3,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,16,0,0,1,100,2,5000,9000,5000,8000,11,7896,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Exploding Shot');

-- Alliance Sorceress
SET @ENTRY := 17922;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,3,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,3,0,0,0,0,11,31743,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Missiles on Aggro'),
(@ENTRY,0,3,0,9,1,100,2,0,30,4000,5000,11,31743,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Missiles'),
(@ENTRY,0,4,0,9,1,100,2,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Arcane Missiles Range'),
(@ENTRY,0,5,0,9,1,100,2,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,2,0,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Arcane Missiles Range'),
(@ENTRY,0,7,0,3,1,100,2,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,2,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,2,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,0,1,100,2,10000,14000,13000,18000,11,31741,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Slow');

-- Banshee
SET @ENTRY := 17905;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,2,0,30,18000,24000,11,31651,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Banshee Curse on Close'),
(@ENTRY,0,1,0,0,0,100,2,7000,11000,12000,16000,11,38183,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Banshee Wail'),
(@ENTRY,0,2,0,0,0,100,2,45000,60000,60000,90000,11,31662,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Anti-Magic Shell');

-- Dire Wolf
SET @ENTRY := 17854;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,2,0,5,9000,14000,11,31334,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Growl on Close');

-- Druid of the Claw
SET @ENTRY := 3795;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,11,31792,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bear Form on Aggro'),
(@ENTRY,0,1,0,14,0,100,2,15000,40,15000,18000,11,31782,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Rejuvenation on Friendlies');

-- Druid of the Talon
SET @ENTRY := 3794;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,3,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,3,0,0,0,0,11,31784,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wrath on Aggro'),
(@ENTRY,0,3,0,9,1,100,2,0,40,3400,4700,11,31784,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wrath'),
(@ENTRY,0,4,0,9,1,100,2,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Wrath Range'),
(@ENTRY,0,5,0,9,1,100,2,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,2,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Wrath Range'),
(@ENTRY,0,7,0,3,1,100,2,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,2,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,2,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,9,1,100,2,0,30,30000,33000,11,25602,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Faerie Fire on Close');

-- Fel Stalker
SET @ENTRY := 17916;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,2,0,30,6000,9000,11,31729,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Mana Burn on Close');




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

