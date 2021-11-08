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
Random cSpeed55, 2, 6
Random, obs90x, -2, 9
Random, obs90y, -10, 6
Random, sleep909, 100, 200
Random, sleep090, 12900, 13211


PixelSearch, Cx, Cy, 38, 322, 81, 356, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseMove, Cx+obs90x, Cy+obs90y, cSpeed55
	Sleep, sleep909
	Click
	Sleep, sleep090
	GoTo, Obstacle2
	}
	
Obstacle2:
Random cSpeed2, 2, 6
Random, obs2x, -2, 9
Random, obs2y, 1, 6
Random, sleep333, 100, 200
Random, sleep332, 4500, 4722


PixelSearch, Wx, Wy, 358, 390, 397, 423, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseMove, Wx+obs2x, Wy+obs2y, cSpeed2
	Sleep, sleep333
	Click
	Sleep, sleep332
	GoTo, Obstacle3
	}

Obstacle3:		
Random cSpeed3, 2, 6
Random, obs3x, 1, 3
Random, obs3y, -1, 6
Random, sleep111, 100, 200
Random, sleep22, 2400, 2644


PixelSearch, Ex, Ey, 367, 303, 392, 326, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseMove, Ex+obs3x, Ey+obs3y, cSpeed3
	Sleep, sleep111
	Click
	Sleep, sleep22
	GoTo, Obstacle4
	}

Obstacle4:		
Random cSpeed4, 2, 6
Random, obs4x, -4, 12
Random, obs4y, -4, 6
Random, sleep565, 100, 200
Random, sleep676, 8000, 8222


PixelSearch, Rx, Ry, 516, 263, 550, 296, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseMove, Rx+obs4x, Ry+obs4y, cSpeed4
	Sleep, sleep565
	Click
	Sleep, sleep676
	GoTo, Obstacle5
	}

Obstacle5:		
Random cSpeed5, 2, 6
Random, obs5x, -2, 10
Random, obs5y, -2, 4
Random, sleep787, 100, 200
Random, sleep988, 4800, 5000


PixelSearch, Tx, Ty, 454, 300, 500, 330, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseMove, Tx+obs5x, Ty+obs5y, cSpeed5
	Sleep, sleep787
	Click
	Sleep, sleep988
	GoTo, Obstacle6
	}

Obstacle6:		
Random cSpeed6, 2, 6
Random, obs6x, -4, 10
Random, obs6y, -20, 4
Random, sleep3334, 100, 200
Random, sleep1231, 7200, 7444


PixelSearch, Yx, Yy, 316, 73, 340, 103, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseMove, Yx+obs6x, Yy+obs6y, cSpeed6
	Sleep, sleep3334
	Click
	Sleep, sleep1231
	GoTo, Obstacle7
	}
	
Obstacle7:		
Random cSpeed7, 2, 6
Random, obs7x, -4, 10
Random, obs7y, -20, 4
Random, sleephhh, 100, 200
Random, sleepju, 9700, 9944


PixelSearch, Ax, Ay, 329, 160, 366, 197, 0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseMove, Ax+obs7x, Ay+obs7y, cSpeed7
	Sleep, sleephhh
	Click
	Sleep, sleepju
	GoTo, StartAgain
}

}

2::Reload
3::Exitapp
