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
Random, cSpeed55, 4, 9
Random, obs90x, 5, 12
Random, obs90y, 4, 8
Random, sleep909, 150, 250
Random, sleep090, 5900, 7211
Random, pxx1, 1055, 1680
Random, pxy1, 0, 880
Random, RandTime1, 200, 800


PixelSearch, Cx, Cy, 146, 365, 164, 384, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) { 
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Cx+obs90x, Cy+obs90y, "T" RandTime1 "")
	Sleep, sleep909
	Click
	MouseMove, pxx1, pxy1, cSpeed55
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
Random, pxx2, 1055, 1680
Random, pxy2, 0, 880


PixelSearch, Wx, Wy, 203, 274, 232, 285, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Wx+obs2x, Wy+obs2y, "T" RandTime2 "")
	Sleep, sleep333
	Click
	Sleep, sleep333
	MouseMove, pxx2, pxy2, cSpeed2
	Click
	Sleep, sleep332
	GoTo, Obstacle3
	}

Obstacle3:		
Random, cSpeed3, 4, 9
Random, obs3x, 1, 3
Random, obs3y, -1, 6
Random, sleep111, 150, 250
Random, sleep22, 7520, 8843
Random, RandTime3, 200, 800


PixelSearch, Ex, Ey, 140, 207, 165, 221, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Ex+obs3x, Ey+obs3y, "T" RandTime3 "")
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
Random, pxy4, 0, 880
Random, RandTime4, 200, 800

PixelSearch, Rx, Ry, 240, 272, 259, 286, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Rx+obs4x, Ry+obs4y, "T" RandTime4 "")
	Sleep, sleep565
	Click
	Sleep, sleep565
	MouseMove, pxx4, pxy4, cSpeed4
	Click
	Sleep, sleep676
	GoTo, Obstacle5
	}

Obstacle5:		
Random, cSpeed5, 4, 9
Random, obs5x, -2, 7
Random, obs5y, -2, 4
Random, sleep787, 150, 250
Random, sleep988, 4900, 5900
Random, RandTime5, 200, 800


PixelSearch, Tx, Ty, 432, 432, 453, 452, 0xFF00FF, 1, Fast
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
Random, RandTime6, 200, 800

PixelSearch, Yx, Yy, 610, 275, 637, 293, 0x00FF00, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs6x, Yy+obs6y, "T" RandTime6 "")
	Sleep, sleep3334
	Click
	Sleep, sleep1231
	RandomBezier( 0, 0, Yx, Yy, "T" RandTime6 " RO RD")
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
Random, pxy, 0, 880
Random, RandTime7, 200, 800

PixelSearch, Ax, Ay, 677, 242, 692, 261, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Ax+obs7x, Ay+obs7y, "T" RandTime7 "")
	Sleep, sleephhh
	Click
	Sleep, sleepju
	GoTo, Obstacle9
}

Obstacle8:		
Random, cSpeed8, 4, 9
Random, obs8x, -4, 6
Random, obs8y, -6, 4
Random, sleep3338, 150, 250
Random, sleep1238, 5253, 6620
Random, RandTime8, 200, 800

PixelSearch, Yx, Yy, 430, 173, 450, 188, 0x00FF00, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs8x, Yy+obs8y, "T" RandTime8 "")
	Sleep, sleep3338
	Click
	Sleep, sleep1238
	RandomBezier( 0, 0, Yx, Yy, "T" RandTime8 " RO RD")
	GoTo, Obstacle9
}

Obstacle9:		
Random, cSpeed9, 4, 9
Random, obs9x, -4, 6
Random, obs9y, -6, 4
Random, sleep3339, 150, 250
Random, sleep1239, 6553, 8620
Random, RandTime9, 200, 800

PixelSearch, Yx, Yy, 742, 268, 756, 281, 0x00FF00, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs9x, Yy+obs9y, "T" RandTime9 "")
	Sleep, sleep3339
	Click
	Sleep, sleep1239
	RandomBezier( 0, 0, Yx, Yy, "T" RandTime9 " RO RD")
	GoTo, Obstacle10
}

Obstacle10:		
Random, cSpeed10, 4, 9
Random, obs10x, -4, 6
Random, obs10y, -6, 4
Random, sleep33310, 150, 250
Random, sleep12310, 5553, 7620
Random, RandTime10, 200, 800

PixelSearch, Yx, Yy, 494, 268, 515, 282, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs10x, Yy+obs10y, "T" RandTime10 "")
	Sleep, sleep3339
	Click
	Sleep, sleep1239
	RandomBezier( 0, 0, Yx, Yy, "T" RandTime10 " RO RD")
	GoTo, Obstacle11
}

Obstacle11:		
Random, cSpeed11, 4, 9
Random, obs11x, -4, 6
Random, obs11y, -6, 4
Random, sleep33311, 150, 250
Random, sleep12311, 5553, 7620
Random, RandTime11, 200, 800

PixelSearch, Yx, Yy, 391, 71, 414, 94, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs11x, Yy+obs11y, "T" RandTime11 "")
	Sleep, sleep33311
	Click
	Sleep, sleep12311
	RandomBezier( 0, 0, Yx, Yy, "T" RandTime11 " RO RD")
	GoTo, Obstacle12
}

Obstacle12:		
Random, cSpeed12, 4, 9
Random, obs12x, -4, 6
Random, obs12y, -6, 4
Random, sleep33312, 150, 250
Random, sleep12312, 4553, 7620
Random, RandTime12, 200, 800

PixelSearch, Yx, Yy, 394, 90, 413, 103, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs12x, Yy+obs12y, "T" RandTime12 "")
	Sleep, sleep33312
	Click
	Sleep, sleep12312
	RandomBezier( 0, 0, Yx, Yy, "T" RandTime12 " RO RD")
	GoTo, Obstacle13
}

Obstacle13:		
Random, cSpeed13, 4, 9
Random, obs13x, -4, 6
Random, obs13y, -6, 4
Random, sleep33313, 150, 250
Random, sleep12313, 5553, 7620
Random, RandTime13, 200, 800
Random, rnd7, 1, 100
Random, nuqq7, 50000, 90000
Random, pxx13, 1055, 1680
Random, pxy13, 0, 880

PixelSearch, Yx, Yy, 87, 171, 232, 322, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Yx+obs13x, Yy+obs13y, "T" RandTime13 "")
	Sleep, sleep33313
	Click
	Sleep, sleep565
	MouseMove, pxx13, pxy13, cSpeed13
	Click
	if(rnd7 <= 10){
	Sleep nuqq7
	GoTo, StartAgain
	}
	Sleep, sleep12313
	RandomBezier( 0, 0, Yx, Yy, "T" RandTime13 " RO RD")
	GoTo, StartAgain
}
}

2::Reload
3::Exitapp
