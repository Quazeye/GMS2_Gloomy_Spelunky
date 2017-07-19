/// @description 

image_blend = c_green;

creator = oLevelCreator;

chunkString = ds_list_find_value(creator.chunks, floor(random(ds_list_size(creator.chunks))));

var typeOfObject;

for (c = 1; c < string_length(chunkString) + 1; c++) {
	switch(string_char_at(chunkString, c)) {
		case "1":
			typeOfObject = oBlock;
			break;
		
		case "0":
			continue;
			
		case "R":
			typeOfObject = oRandomBlock;
			break;
	}
	b = instance_create_layer(x + ((c - 1) mod 3) * creator.gridSize,
	                      y + (floor((c - 1) / 3)) * creator.gridSize, "Instances", typeOfObject);
	b.image_blend = c_silver;
}

instance_destroy();
