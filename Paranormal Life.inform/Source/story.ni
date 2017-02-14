"Paranormal Life" by Jackie Wu

LivingRoom is a room. The printed name of LivingRoom is "Living Room"

EastHallway is west of LivingRoom. The printed name of EastHallway is "East Hallway"

WestHallway is west of EastHallway. The printed name of WestHallway is "West Hallway"

StorageRoom is northeast of EastHallway. The printed name of StorageRoom is "Storage Room"

Kelly'sBedroom is south of EastHallway. The printed name of Kelly'sBedroom is "Kelly's Bedroom"

There is a desk in Kelly'sBedroom. The desk is a container. It is closed and fixed in place. 

Grandparent'sRoom is south of WestHallway. The printed name of Grandparent'sRoom is "Grandparent's Room"

Grandparent'sCloset is northwest of Grandparent'sRoom. The printed name of Grandparent'sCloset is "Grandparent's Closet" 

A chest is in Grandparent'sCloset. It is a container. It is locked. The key unlocks the chest.

A key is in the StorageRoom. 

A trapdoor is in the StorageRoom. trapdoor is a container. It is closed. 

A sword is in the trapdoor. 

A book is in the chest. It is a container. Don't say it is a container. The description of the book is "Pay...ATTENTION...To..THE..INSIDE"

After examining book,
	if player is holding key2,
		say "The book is much lighter now."
After examining book,
	if player is not holding key2, 
		say "The book feels a little heavy."
		
A key2 is in the book. A key2 is undescribed. Understand "Door Key" as key2.
			

The Wooden Door is north of Jackie'sRoom and south of the backyard. The wooden door is a door. The Wooden Door is locked. A key2 unlocks the wooden door.

Jackie'sRoom is north of WestHallway. The printed name of Jackie'sRoom is "Jackie's Room"

Wooden door is north of Jackie'sRoom and south of the backyard.

An every turn rule:
	if player is not holding the sword in backyard:
		end the story finally.
		
		


	