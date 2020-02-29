draw_text(8, 8, "Score : " + string(global.player_score));

draw_set_halign(fa_right);
draw_text(room_width - 8, 8, "High score : " + string(global.high_score));
draw_set_halign(fa_left);

_x = room_width/2 - ((global.player_lives - 1) * 32);
repeat(global.player_lives) {
	draw_sprite_ext(
		spr_bat, 
		0, 
		_x, 
		room_height - 16,
		0.75,
		0.75,
		0,
		c_white,
		0.5
	);
	_x += 64;
}

if (isGamePaused) {
	draw_text(100, 100, "GAME IS PAUSED");
	
	for (var i = 0; i < array_height_2d(allObjects); ++i) {
		draw_sprite_ext(
			allObjects[i,0],
			allObjects[i,1],
			allObjects[i,2],
			allObjects[i,3],
			allObjects[i,4],
			allObjects[i,5],
			allObjects[i,6],
			allObjects[i,7],
			allObjects[i,8]
		);
	}
}
