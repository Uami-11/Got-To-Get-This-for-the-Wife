function get_mood(mood) {
	var mood_triggered = false;
	if (!instance_exists(oHomeController)) return;

	with (oHomeController) {
		if (!mood_triggered) {
			if (mood <= -5) {
				alarm[1] = 1;
				mood_triggered = true;
			}
			else if (mood < -2) {
				alarm[0] = 1;
				mood_triggered = true;
			}
			else if (mood < 0) {
				alarm[2] = 1;
				mood_triggered = true;
			}
			else if (mood >= 0) {
				alarm[4] = 1;
				mood_triggered = true;
			}
		}
	}
}
