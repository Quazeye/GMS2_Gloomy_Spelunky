/// @description Initialize Our Room
randomize();

gridSize = 32; // Size of blocks and objects in game.

xRooms = 4; // How many rooms along the x axis
yRooms = 4; // How many rooms along the y axis
rooms = []; // Declare our rooms array

sectionTilesX = 10; // How many tiles wide our section is
sectionTilesY = 8; // How many tiles high our section is

sectionWidth = sectionTilesX * gridSize; // Width of one section in pixels
sectionHeight = sectionTilesY * gridSize; // Height of one section in pixels

room_width = (sectionWidth * xRooms) + (gridSize * 2);
room_height = (sectionHeight * yRooms) + (gridSize * 2);

for (_y = 0; _y < yRooms; _y++) {
	for (_x = 0; _x < xRooms; _x++) {
		rooms[_x, _y] = 0;
	}
}


// Create Main Path


// Initialize Our Sections (loading sections as strings into memory)


// Create Our Level


// Clean Up Memory (De-Initialize Our Sections)