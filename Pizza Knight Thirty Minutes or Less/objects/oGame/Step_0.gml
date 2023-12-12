if (global.timerstart) global.timer++;

// Reset displayTimer string
displayTimer = "Time: "
	
minutes = floor(global.timer / 3600);
seconds = floor((global.timer / 60) % 60);
nseconds = floor(((global.timer % 60) / 60) * 100);
	
// Display as 01 or 11 for each section and create the string to display
if (minutes <= 9) displayTimer += "0" + string(minutes) + ":";
else displayTimer += string(minutes) + ":";
	
if (seconds <= 9) displayTimer += "0" + string(seconds) + ":";
else displayTimer += string(seconds) + ":"

if (nseconds <= 9) displayTimer += "0" + string(nseconds);
else displayTimer += string(nseconds);
	
// Enlarge timer every minute for just over a second
if (seconds = 0) timertextscale = 2;
