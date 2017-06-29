// Initialize our lists for the different template types we have.
sectionLeftRightList = ds_list_create();
sectionLeftBottomRightList = ds_list_create();
sectionLeftTopRightList = ds_list_create();

// Store our string representations for our templates in our new lists.
scr_InitializeLBRSections();
scr_InitializeLRSections();
scr_InitializeLTRSections();

