// Smooth movement
y = lerp(y, target_y, arrival_speed);

// Snap close to prevent micro drifting
if (abs(y - target_y) < 1) {
    y = target_y;
}
