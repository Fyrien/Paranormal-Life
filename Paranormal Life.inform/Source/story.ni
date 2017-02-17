"Paranormal Life" by Jackie Wu

LivingRoom is a room. The printed name of LivingRoom is "Living Room"

EastHallway is west of LivingRoom. The printed name of EastHallway is "East Hallway"

WestHallway is west of EastHallway. The printed name of WestHallway is "West Hallway"

StorageRoom is northeast of EastHallway. The printed name of StorageRoom is "Storage Room"

Kelly'sBedroom is south of EastHallway. The printed name of Kelly'sBedroom is "Kelly's Bedroom"

There is a desk in Kelly'sBedroom. The desk is a container. It is closed and fixed in place. 

Grandparent'sRoom is south of WestHallway. The printed name of Grandparent'sRoom is "Grandparent's Room"

Grandparent'sCloset is northwest of Grandparent'sRoom. The printed name of Grandparent'sCloset is "Grandparent's Closet" 

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
		move player to livingroom;
		say "You feel scared without a weapon. You head back to the living room."
		
After entering the backyard:
	say "You feel good fighting off aliens and monsters. You manage to make it to a safe place alive. You also manage to find out there's a spaceship nearby. "


AlienSpaceshipInterior is west of backyard. The printed name of AlienSpaceship is "Alien Spaceship Interior" 

Power glove is in AlienSpaceshipInterior. It is undescribed. 

AlienKitchen is north of AlienSpaceshipInterior. The printed name of AlienKitchen is "Alien Kitchen." 

a Alien is a male animal in the AlienKitchen. The description of the Alien is "A confused alien muttering to themselves in their language. It seems like they're holding two slices of bread."

After examining alien:
	say "I don't think that person knows how sandwiches work. They say if you find them a sandwich, he'll give you hints on upcoming puzzles. You realize there was a sandwich hidden in the living room. "
	
Sandwich is in livingroom. It is undescribed.
	

Rule for deciding whether all includes something: it does not.


Instead of giving the sandwich to alien: say "You hand the sandwich over to the alien. He makes a weird garble sound. It sounded like he thanked you. He pulls out a note and hands you the note. You feel good about yourself because you helped someone out.";
remove sandwich from play;
move note to player.

Every turn rule:
	if note is held:
			after examining alien:
				say "The alien seems to be enjoying the sandwich"


Note is in alien's inventory.
		


	