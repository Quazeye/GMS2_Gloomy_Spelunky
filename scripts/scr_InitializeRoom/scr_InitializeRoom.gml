/// @description Initialize Our Room
randomize();

gridSize = 32; // Size of blocks and objects in game.

xSections = 4; // How many rooms along the x axis
ySections = 4; // How many rooms along the y axis
sections = []; // Declare our rooms array

sectionTilesX = 10; // How many tiles wide our section is
sectionTilesY = 8; // How many tiles high our section is

sectionWidth = sectionTilesX * gridSize; // Width of one section in pixels
sectionHeight = sectionTilesY * gridSize; // Height of one section in pixels

room_width = (sectionWidth * xSections) + (gridSize * 2);
room_height = (sectionHeight * ySections) + (gridSize * 2);

for (_y = 0; _y < ySections; _y++) {
	for (_x = 0; _x < xSections; _x++) {
		sections[_x, _y] = 0;
	}
}


// Create Main Path
scr_CreateMainPath();

for (_y = 0; _y < ySections; _y++) {
	show_debug_message(string(sections[0, _y]) + string(sections[1, _y]) + string(sections[2, _y]) + string(sections[3, _y]))
}

// Initialize Our Sections (loading sections as strings into memory)


// Create Our Level


// Clean Up Memory (De-Initialize Our Sections)