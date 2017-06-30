// Grab section type from sections array
sectionType = argument0;

if (sectionType ==0) {
	sectionType = choose(1,2,3);
}

switch (sectionType) {
	
	case 1:
		return ds_list_find_value(sectionLeftRightList, floor(random(ds_list_size(sectionLeftRightList))));
		break;
	
	case 2:
		return ds_list_find_value(sectionLeftBottomRightList, floor(random(ds_list_size(sectionLeftBottomRightList))));
		break;
	
	case 3:
		return ds_list_find_value(sectionLeftTopRightList, floor(random(ds_list_size(sectionLeftTopRightList))));
		break;
}