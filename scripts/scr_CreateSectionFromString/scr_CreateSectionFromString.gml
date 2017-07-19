
var _currentXSection = argument0;
var _currentYSection = argument1;
var _sectionStringData = argument2;
var TypeOfObject;

for (c = 1; c < string_length(_sectionStringData) + 1; c++) { // the string_char_at GML function starts at 1 instead of 0 so we have to start c at 1 and then add 1 to the string_length in the for loop conditions.
	switch (string_char_at(_sectionStringData, c)) {
		
		case "0":
			continue;
				
		case "1":
			TypeOfObject = oBlock;
			break;
			
		//case "L":
		//	TypeOfObject = oLadder;
		//	break;
			
		case "R": {
			if (choose(true, false)) {
				TypeOfObject = oRandomBlock;
				break;
			} else {
				continue;
			}
		}
		
		case "C":
			TypeOfObject = oChunk;
			break;
	}
	instance_create_layer((_currentXSection * sectionWidth) + (((c - 1) mod sectionTilesX) * gridSize) + gridSize,
								  (_currentYSection * sectionHeight) + (floor((c - 1) / sectionTilesX) * gridSize) + gridSize,
									"Instances", TypeOfObject); // have to subtract 1 from c above for same reason as stated in comment above.
}
