

// Generate border for room!
for (_i = 0; _i < room_width; _i += gridSize) {
	instance_create_layer(_i, 0, "Instances", oBlock);
	instance_create_layer(_i, room_height - gridSize, "Instances", oBlock);
}

for (_i = gridSize; _i < room_height - gridSize; _i += gridSize) {
	instance_create_layer(0, _i, "Instances", oBlock);
	instance_create_layer(room_width - gridSize, _i, "Instances", oBlock);
}

// Create our new section
var sectionStringData = "";

for (_y = 0; _y < ySections; _y++) {
	for (_x = 0; _x < xSections; _x++) {
		sectionStringData = scr_LoadRandomSection(sections[_x, _y]);
		
		scr_CreateSectionFromString(_x, _y, sectionStringData);
	}
}
