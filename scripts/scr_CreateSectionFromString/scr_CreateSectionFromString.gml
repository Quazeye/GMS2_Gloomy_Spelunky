
var _currentXSection = argument0;
var _currentYSection = argument1;
var _sectionStringData = argument2;

for (c = 0; c < string_length(_sectionStringData); c++) {
	switch (string_char_at(_sectionStringData, c)) {
		
		case "0":
			break;
		
		case "1":
			instance_create_layer((_currentXSection * sectionWidth) + ((c mod sectionTilesX) * gridSize) + gridSize,
								  (_currentYSection * sectionHeight) + (floor(c / sectionTilesX) * gridSize) + gridSize,
									"Instances", oBlock);
			break;
	}
}