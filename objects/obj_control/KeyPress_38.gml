if (!isGamePaused) {
	isGamePaused = true;
	
	var offset = 0;
	for (var i = 0; i < instance_count; ++i) {
		var currentInstance = instance_find(all, i);
		if (currentInstance.sprite_index != -1) {
			allObjects[i - offset,0] = currentInstance.sprite_index;
			allObjects[i - offset,1] = currentInstance.image_index;
			allObjects[i - offset,2] = currentInstance.x;
			allObjects[i - offset,3] = currentInstance.y;
			allObjects[i - offset,4] = currentInstance.image_xscale;
			allObjects[i - offset,5] = currentInstance.image_yscale;
			allObjects[i - offset,6] = currentInstance.image_angle;
			allObjects[i - offset,7] = currentInstance.image_blend;
			allObjects[i - offset,8] = currentInstance.image_alpha;
		} else {
			++offset;
		}
	}
	
	instance_deactivate_all(true);
} else {
	isGamePaused = false;
	
	allObjects = 0;
	
	instance_activate_all();
}

