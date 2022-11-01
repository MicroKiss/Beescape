if (instance_number(objResourceManager) > 1)
	throw ("objResourceManager already exists");
	
if (os_type == os_android)
	surface_resize(application_surface, display_get_width(), display_get_height());
else 
	surface_resize(application_surface, 1080, 1920);