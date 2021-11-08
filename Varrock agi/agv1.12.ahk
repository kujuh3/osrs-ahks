#Include RandomBezier.ahk
;Resizeable
;LandMarkers 0xFF00FF
;RunOff
;Zoom 432
;Inva pois näkyvistä
;Eagle eye view

Sleep, 2000


Loop {

WinActivate, OpenOSRS
StartAgain:
Random, cSpeed55, 4, 9
Random, obs90x, 5, 10
Random, obs90y, 8, 12
Random, sleep909, 150, 250
Random, sleep090, 5900, 7211
Random, RandTime1, 200, 800
Random, RandTime12, 200, 600
Random, pxx1, 1055, 1680
Random, pxy1, 0, 700


PixelSearch, Cx, Cy, 66, 194, 202, 455, 0x0000FF, 1, Fast
	if (ErrorLevel = 0) { 
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Cx+obs90x, Cy+obs90y, "T" RandTime1 "OT5 OB5 OL5 OR5")
	Sleep, sleep909
	Click
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, pxx1, pxy1, "T" RandTime12 "")
	Click
	Sleep, sleep090
	GoTo, Obstacle2	
	}
	
Obstacle2:
Random, cSpeed2, 4, 8
Random, obs2x, -2, 7
Random, obs2y, 1, 6
Random, sleep333, 150, 250
Random, sleep332, 7542, 8234
Random, RandTime2, 200, 800
Random, RandTime21, 200, 500
Random, pxx2, 1055, 1680
Random, pxy2, 0, 700


PixelSearch, Wx, Wy, 203, 264, 222, 292, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Wx+obs2x, Wy+obs2y, "T" RandTime2 "")
	Sleep, sleep333
	Click
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, pxx2, pxy2, "T" RandTime12 "")
	Click
	Sleep, sleep332
	GoTo, check1
	}

check1:		
Random, cSpeed12, 4, 9
Random, obs12x, -4, 6
Random, obs12y, -6, 4
Random, sleep33312, 150, 250
Random, sleep12312, 5553, 7620
Random, RandTime12, 200, 800

PixelSearch, Yx, Yy, 372, 261, 394, 283, 0x00FF00, 1, Fast
	if (ErrorLevel = 0) {
PixelSearch, Yx, Yy, 346, 268, 367, 281, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs12x, Yy+obs12y, "T" RandTime12 "OT5 OB5 OL5 OR5")
	Sleep, sleep33312
	Click
	Sleep, sleep12312
	GoTo, Obstacle3
}
}

Obstacle3:		
Random, cSpeed3, 4, 9
Random, obs3x, 1, 3
Random, obs3y, -1, 6
Random, sleep111, 150, 250
Random, sleep22, 7520, 8843
Random, RandTime3, 200, 400


PixelSearch, Ex, Ey, 132, 207, 165, 231, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Ex+obs3x, Ey+obs3y, "T" RandTime3 "OT10 OB10 OL10 OR10")
	Sleep, sleep111
	Click
	Sleep, sleep22
	GoTo, Obstacle4
	}

Obstacle4:		
Random, cSpeed4, 4, 9
Random, obs4x, -4, 8
Random, obs4y, -4, 6
Random, sleep565, 150, 250
Random, sleep676, 10362, 13534
Random, pxx4, 1055, 1680
Random, pxy4, 0, 700
Random, RandTime4, 200, 500
Random, RandTime41, 200, 500

PixelSearch, Rx, Ry, 232, 268, 252, 293, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Rx+obs4x, Ry+obs4y, "T" RandTime4 "OT5 OB5 OL5 OR5")
	Sleep, sleep565
	Click
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, pxx4, pxy4, "T" RandTime41 "OT50 OB50 OL50 OR50")
	Click
	Sleep, sleep676
	GoTo, Obstacle5
	}

Obstacle5:		
Random, cSpeed5, 4, 9
Random, obs5x, -2, 4
Random, obs5y, -2, 4
Random, sleep787, 150, 250
Random, sleep988, 4900, 5900
Random, RandTime5, 200, 800


PixelSearch, Tx, Ty, 406, 419, 429, 440, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Tx+obs5x, Ty+obs5y, "T" RandTime5 "")
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
Random, sleep1231, 5553, 7620
Random, RandTime6, 200, 400

PixelSearch, Yx, Yy, 580, 272, 605, 290, 0x00FF00, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs6x, Yy+obs6y, "T" RandTime6 "OT10 OB10 OL10 OR10")
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
Random, sleepju, 8700, 10144
Random, nuqq7, 50000, 90000
Random, rnd7, 1, 100
Random, pxx, 1055, 1680
Random, pxy, 0, 700
Random, RandTime7, 200, 600

PixelSearch, Ax, Ay, 632, 239, 656, 266, 0xFF0000, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Ax+obs7x, Ay+obs7y, "T" RandTime7 "OT5 OB5 OL5 OR5")
	Sleep, sleephhh
	Click
	Sleep, sleepju
	GoTo, Obstacle9
}

Obstacle8:		
Random, cSpeed8, 4, 9
Random, obs8x, -4, 4
Random, obs8y, -6, 4
Random, sleep3338, 150, 250
Random, sleep1238, 5253, 6620
Random, RandTime8, 200, 800

PixelSearch, Yx, Yy, 400, 173, 430, 200, 0x00FF00, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs8x, Yy+obs8y, "T" RandTime8 "OT10 OB10 OL10 OR10")
	Sleep, sleep3338
	Click
	Sleep, sleep1238
	GoTo, Obstacle9
}

Obstacle9:		
Random, cSpeed9, 4, 9
Random, obs9x, -4, 4
Random, obs9y, -6, 4
Random, sleep3339, 150, 250
Random, sleep1239, 6553, 8620
Random, RandTime9, 200, 800

PixelSearch, Yx, Yy, 685, 268, 712, 281, 0x00FF00, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs9x, Yy+obs9y, "T" RandTime9 "OT5 OB5 OL5 OR5")
	Sleep, sleep3339
	Click
	Sleep, sleep1239
	GoTo, Obstacle10
}

Obstacle10:		
Random, cSpeed10, 4, 9
Random, obs10x, -4, 6
Random, obs10y, -6, 4
Random, sleep33310, 150, 250
Random, sleep12310, 5553, 7620
Random, RandTime10, 200, 800

PixelSearch, Yx, Yy, 463, 268, 489, 282, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs10x, Yy+obs10y, "T" RandTime10 "OT5 OB5 OL5 OR5")
	Sleep, sleep3339
	Click
	Sleep, sleep1239
	GoTo, Obstacle11
}

Obstacle11:		
Random, cSpeed11, 4, 9
Random, obs11x, -4, 6
Random, obs11y, -6, 4
Random, sleep33311, 150, 250
Random, sleep12311, 5553, 7620
Random, RandTime11, 200, 800

PixelSearch, Yx, Yy, 370, 81, 394, 105, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs11x, Yy+obs11y, "T" RandTime11 "OT5 OB5 OL5 OR5")
	Sleep, sleep33311
	Click
	Sleep, sleep12311
	GoTo, Obstacle12
}

Obstacle12:		
Random, cSpeed12, 4, 9
Random, obs12x, -4, 6
Random, obs12y, -6, 4
Random, sleep33312, 150, 250
Random, sleep12312, 4553, 7620
Random, RandTime12, 200, 800

PixelSearch, Yx, Yy, 372, 104, 394, 127, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs12x, Yy+obs12y, "T" RandTime12 "OT10 OB10 OL10 OR10")
	Sleep, sleep33312
	Click
	Sleep, sleep12312
	GoTo, Obstacle13
}

Obstacle13:		
Random, cSpeed13, 4, 9
Random, obs13x, -22, 22
Random, obs13y, -22, 22
Random, sleep33313, 150, 250
Random, sleep12313, 5553, 7620
Random, RandTime13, 200, 800
Random, RandTime14, 200, 400
Random, rnd7, 1, 100
Random, nuqq7, 50000, 90000
Random, pxx13, 1055, 1680
Random, pxy13, 0, 700

PixelSearch, Yx, Yy, 136, 264, 167, 288, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs13x, Yy+obs13y, "T" RandTime13 "OT10 OB10 OL10 OR10")
	Sleep, sleep33313
	Click
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, pxx13, pxy13, "T" RandTime14 "OT50 OB50 OL50 OR50")
	Click
	if(rnd7 <= 10){
	Sleep nuqq7
	GoTo, StartAgain
	}
	Sleep, sleep12313
	GoTo, StartAgain
}
}


2::Reload
3::Exitapp
