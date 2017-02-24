"Paranormal Life" by Jackie Wu

When play begins:
	say "You seem to notice some things are out of place so you decide to investigate. You find out that aliens have invaded and have locked you i your house. You need to find a way to get out and stop them! Hint: the second key can be door key or key2."
	
LivingRoom is a room. The description is "Your normal living room. The walls are adorned by art. West of the living room is the east hallway." The printed name of LivingRoom is "Living Room" 

EastHallway is west of LivingRoom. The description is "The east hall. West of here is the west hallway. South is Kelly's bedroom and northeast is the storage room. Go east to go back to the living room." The printed name of EastHallway is "East Hallway"

WestHallway is west of EastHallway. The description is "The west hallway. East of here is the east hallway. South is your grandparent's room and north is your room."  The printed name of WestHallway is "West Hallway"

StorageRoom is northeast of EastHallway. The description is "There's loads of stuff here. You notice a trapdoor and something shiny. Southwest is the east hallway." The printed name of StorageRoom is "Storage Room"

Kelly'sBedroom is south of EastHallway. The description is "The wall are adorned by giant anime posters. There doesn't seem to be anything of use." The printed name of Kelly'sBedroom is "Kelly's Bedroom"

There is a desk in Kelly'sBedroom. The desk is a container. It is closed and fixed in place. 

Grandparent'sRoom is south of WestHallway. The description is "Your grandparent's room. What more can I say about it. Northwest is their closet. North is the west hallway." The printed name of Grandparent'sRoom is "Grandparent's Room"

Grandparent'sCloset is northwest of Grandparent'sRoom. The description is "There's just a lot of clothes here. But there also seems to be a chest. Southeast is the way back." The printed name of Grandparent'sCloset is "Grandparent's Closet" 

A chest is in Grandparent'sCloset. It is a container. It is locked and fixed in place.. It is closed and openable. The key unlocks the chest.

A key is in the StorageRoom. 

A trapdoor is in the StorageRoom. trapdoor is a container. It is closed and openable. It is fixed in place. 

A sword is in the trapdoor. 

A book is in the chest. It is a container. Don't say it is a container. The description of the book is "Pay...ATTENTION...To..THE..INSIDE"

After examining book:
	if player is holding key2:
		say "The book is much lighter now.";
	otherwise:
		say "The book feels a little heavy."

		
A key2 is in the book. A key2 is undescribed. Understand "Door Key" as key2.
			

The Wooden Door is north of Jackie'sRoom and south of the backyard. The wooden door is a door. The Wooden Door is locked. A key2 unlocks the wooden door.

Jackie'sRoom is north of WestHallway. The printed name of Jackie'sRoom is "Jackie's Room"


Instead of going to backyard when the player does not have sword:
		stop the action;
		say "You feel scared without a weapon. You head back to the living room."
		
After entering the backyard:
	say "You feel good fighting off aliens and monsters. You manage to make it to a safe place alive. You also manage to find out there's a spaceship nearby. "


AlienSpaceshipInterior is west of backyard. The description is "You enter the ship to be amazed by the technology developed by the aliens. East is the backyard, North is the alien kitchen." The printed name of AlienSpaceship is "Alien Spaceship Interior" 

Power glove is in PowerGloveRoom. It is a wearable thing. 

AlienKitchen is north of AlienSpaceshipInterior. The description is "There's a lot of high tech mumbo jumbo everywhere. I think there is some sort of person here." The printed name of AlienKitchen is "Alien Kitchen." 

a Alien is a male animal in the AlienKitchen. The description of the Alien is "A confused alien muttering to themselves in their language. It seems like they're holding two slices of bread."

After examining alien:
	say "I don't think that person knows how sandwiches work. They say if you find them a sandwich, he'll give you hints on upcoming puzzles and the last key. There may have been one in the house... ";
	now sandwich is described.
	
Sandwich is in livingroom. It is undescribed.
	

Rule for deciding whether all includes something: it does not.


Instead of giving the sandwich to alien: say "You hand the sandwich over to the alien. He makes a weird garble sound. It sounded like he thanked you. He pulls out a note, and a key, and hands you the note and key. You feel good about yourself because you helped someone out.";
remove sandwich from play;
move note to player;
move final key to player.

Every turn rule:
	if note is held:
			after examining alien:
				say "The alien seems to be enjoying the sandwich"


Note is in alien's inventory.
		
The description of the note is "First, you find the power glove. That is the only way to move the things. Then, there is a key that I have just given you. Figuring this out will unlock the final passage to the button. The button will stop the aliens from invading and wipe them out."

PowerGloveRoom is west of AlienSpaceshipinterior. The description is "There's a lot of power gloves but they all seem to be frozen in place. But one of them looks like they aren't. North is the library, Northwest is the Alien Living Quarters, Northeast is the Alien Living Room." The printed name is "Power Glove Room"

The description of the Power Glove is "The power glove surges with strength. You should probably take it."

Library is north of the PowerGloveRoom. The description is "Alien books filled the room. There doesn't seem to be anyone here. South of here is the Power Glove Room."

AlienLivingRoom is northeast of the PowerGloveRoom. The description is "High tech stuff everywhere. I can't tell what everything is. Southwest of here is the Power Glove Room." The printed name is "Alien Living Room"

AlienLivingQuarters is northwest of the PowerGloveRoom. The description is "Your normal alien living quarters. Very high tech. Even the bed. Southeast from here is the Power Glove Room." The printed name is "Alien Living Quarters"

Bed is in AlienLivingQuarters. It is a thing. Bed is pushable between rooms.

Bookcase is in Library. It is a thing. Bookcase is pushable between rooms.

Dining table is in AlienLivingRoom. It is a thing. Dining table is pushable between rooms.

[Understand "move [something] to [room]" as moving. moving is an action applying to two things.]

[]
A thing can be heavy or light. A thing is usually light.
A thing is usually pushable between rooms.

bed is heavy. Dining table is heavy. Bookcase is heavy.

After going a direction (called way-pushed) with something (called the thing-pushed): 
	if the noun is heavy and the player is not wearing Power Glove:
		say "There's no way you can move that. It looks too heavy.";
		stop the action;
	Otherwise:
		 say "You push [the thing-pushed] [way-pushed] to [the location].";
		 continue the action;
[][Thanks to Mrs. Kiang for help on this code]
		
[the action is 'pushing [something] to' for pushing an object from one room to the next]

every turn rule:
	if Bookcase is in AlienLivingRoom:
		if Dining Table is in AlienLivingQuarters:
			if Bed is in Library:
				now Secret Door is described.
		
The Secret Door is north of the Library and south of the Hiddenroom. Secret door is a door. It is undescribed. 

The description of the bed is "It's seems to be a high tech looking bed. Fancy."

The description of the Bookcase is "There's a lot of books but you can't tell what the language is. Seer rumtauto, yucm'g yug?"

The description of the Dining table is "Pure steel. It seems really heavy. I wonder how cold it can get." 

The description of the sandwich is "The best sandwich you could ever eat. Whole grain and loaded with meats."

The description of the key is "A brass key. It's pretty light."

The description of the door key is "A door key. What more to it?"

The description of the sword is "A long katana like sword. It looks pretty sharp."

The description of the desk is "Very wooden. Very real. Nothing strange here. Move on."


Final door is north of the hiddenroom and south of the AlienCockpit. It is locked. Final door is a door. The final key unlocks the Final door.

The description of the hiddenroom is "There seems to be one last door. But it's locked. Maybe the alien you met can help. South is the Library."
The printed name of Hiddenroom is "Hidden Room"

an every turn rule:
	If player is in AlienCockpit:
		say "You see the switch to stop orders to take over earth. Quickly, you flick the switch. Big red words appear on the glass of the cock pit saying things in an alien language. It's over...";
		end the story finally.

The description of the backyard is "Just a normal backyard...with some alien life forms. South of here is your room. West is inside the space ship."


[Take sandwich, West, north east, open trapdoor, take sword, take key, south west, west, south, north west, unlock chest with key, open chest, take door key, south east, north, north, unlock wooden door with door key, north, west, north, give sandwich to alien, south, west, take power glove, wear power glove, north, push bookcase s, push bookcase ne, push dining table sw, push dining table nw, push bed se, push bed n, open secret door, north, unlock final door with final key, north ]







	
	