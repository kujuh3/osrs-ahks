#Include RandomBezier.ahk
;Resizeable
;LandMarkers 0xFF00FF
;RunOff
;Zoom 461
;Inva pois näkyvistä
;Eagle eye view

Sleep, 2000


Loop {

WinActivate, OpenOSRS
StartAgain:
Random, obs90x, -2, 14
Random, obs90y, -7, 6
Random, sleep909, 150, 250
Random, sleep090, 8900, 12211
Random, pxx1, 1055, 1680
Random, pxy1, 0, 880
Random, RandTime1, 200, 800
Random, RandtimeAfk1, 200, 550


PixelSearch, Cx, Cy, 38, 322, 81, 356, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) { 
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, Cx+obs90x, Cy+obs90y, "T" RandTime1 "OT50 OB50 OL50 OR50")
	Sleep, sleep909
	Click
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, pxx1, pxy1, "T" RandTimeAfk1 "OT150 OB150 OL150 OR150")
	Click
	Sleep, sleep090
	GoTo, Obstacle2	
	}
	
	
	
	
	
	
	
Obstacle2:
Random, cSpeed2, 4, 9
Random, obs2x, -2, 9
Random, obs2y, 1, 6
Random, sleep333, 150, 250
Random, sleep332, 3540, 4242
Random, RandTime2, 200, 800


PixelSearch, Wx, Wy, 358, 390, 397, 423, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Wx+obs2x, Wy+obs2y, "T" RandTime2 "OT50 OB50 OL50 OR50")
	Sleep, sleep333
	Click
	Sleep, sleep332
	GoTo, Obstacle3
	}
	
	
	
	
	


Obstacle3:		
Random, cSpeed3, 4, 9
Random, obs3x, 1, 3
Random, obs3y, -1, 6
Random, sleep111, 150, 250
Random, sleep22, 2040, 2367
Random, RandTime3, 200, 800


PixelSearch, Ex, Ey, 367, 303, 392, 326, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Ex+obs3x, Ey+obs3y, "T" RandTime3 "OT5 OB5 OL5 OR5")
	Sleep, sleep111
	Click
	Sleep, sleep22
	
	GoTo, Obstacle4
	}






Obstacle4:		
Random, cSpeed4, 4, 9
Random, obs4x, -4, 18
Random, obs4y, -4, 9
Random, sleep565, 150, 250
Random, sleep676, 8000, 8500
Random, pxx4, 1055, 1680
Random, pxy4, 0, 880
Random, RandTime4, 200, 800

PixelSearch, Rx, Ry, 516, 263, 550, 296, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Rx+obs4x, Ry+obs4y, "T" RandTime4 "OT50 OB50 OL50 OR50")
	Sleep, sleep565
	Click
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, pxx4, pxy4, "T" RandTime4 "OT150 OB150 OL150 OR150")
	Click
	Sleep, sleep676
	GoTo, Obstacle5
	}








Obstacle5:		
Random, cSpeed5, 4, 9
Random, obs5x, -2, 7
Random, obs5y, -2, 4
Random, sleep787, 150, 250
Random, sleep988, 2900, 3300
Random, RandTime5, 200, 800


PixelSearch, Tx, Ty, 454, 300, 500, 330, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Tx+obs5x, Ty+obs5y, "T" RandTime5 "OT50 OB50 OL50 OR50")
	Sleep, sleep787
	Click
	Sleep, sleep988
	GoTo, Obstacle6
	}








Obstacle6:		
Random, cSpeed6, 4, 9
Random, obs6x, -4, 6
Random, obs6y, -6, 4
Random, sleep3334, 150, 250
Random, sleep1231, 5553, 6620
Random, RandTime6, 200, 800

PixelSearch, Yx, Yy, 316, 73, 340, 103, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs6x, Yy+obs6y, "T" RandTime6 "OT5 OB5 OL5 OR5")
	Sleep, sleep3334
	Click
	Sleep, sleep1231
	GoTo, Obstacle7
	}
	
	
	
	
	
	
	
Obstacle7:		
Random, cSpeed7, 4, 9
Random, obs7x, -6, 4
Random, obs7y, -5, -15
Random, sleephhh, 150, 250
Random, sleepju, 10700, 13144
Random, nuqq7, 50000, 90000
Random, rnd7, 1, 100
Random, pxx, 1055, 1680
Random, pxy, 0, 880
Random, RandTime7, 200, 800

PixelSearch, Ax, Ay, 329, 160, 366, 197, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Ax+obs7x, Ay+obs7y, "T" RandTime7 "OT5 OB5 OL5 OR5")
	Sleep, sleephhh
	Click
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, pxx, pxy, "T" RandTime7 "OT150 OB150 OL150 OR150")
	Click
	if(rnd7 <= 10){
	Sleep nuqq7
	GoTo, StartAgain
	}
	Sleep, sleepju
	GoTo, StartAgain
}

}

2::Reload
3::Exitapp
