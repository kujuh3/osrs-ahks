#include RandomBezier.ahk
;Resizeable
;TeaStall object marker 0xFF00FF
;Zoom 461
;Eagle eye view
;Ukon alla/Stallin edessä 0XFF0101 sininen tile marker
;Invassa tea cupit markattu punasella : 0x0000FF
Sleep, 2000

Loop {

WinActivate, OpenOSRS

Random, rng1, 0, 200
Random, rng2, 0, 150
Random, rng3, 0, 100
Random, RandTime1, 300, 600

AreWeInFrontOfStall:
PixelSearch, Ex, Ey, 391, 273, 430, 303, 0XFF0000, 1, Fast
	if (ErrorLevel = 0) {
	GoTo, Steal
	
	} else {
	PixelSearch, Rx, Ry, 609, 30, 767, 184, 0xFE0101, 1, Fast
	Sleep, 100
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Rx+1, Ry+1, "T" RandTime1 "")
	Click
	MouseMove, Rx+rng1, Ry+rng2, 2
	Sleep, 4000
	GoTo, Steal
	}



Steal:

Random cSpeed55, 4, 6
Random, obs90x, 0, -20
Random, obs90y, 60, 100
Random, sleep909, 100, 300
Random, sleep9090, 50, 200
Random, sleep90909, 80, 260
Random, sleep090, 1500, 2400
Random, RandTime2, 300, 600
Random, rng4, -500, 500
Random, rng5, -500, 500

PixelSearch, Qx, Qy, 446, 196, 604, 278,  0xFF00FF, 1, Fast
	if (ErrorLevel = 0) {
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Qx+obs90x, Qy+obs90y, "T" RandTime2 "")
	Sleep, sleep909
	Sleep, sleep90909
	Click
	if(rng1 >= 100){
	MouseGetPos, xpos, ypos
	MouseMove, xpos+obs90x, ypos+obs90y, cSpeed55
	Sleep, sleep9090
	Sleep, sleep090
	}
	else{
	MouseGetPos, xpos, ypos
	MouseMove, xpos+rng4, ypos+rng5, cSpeed55
	Sleep, sleep090
	GoTo, Drop
	}
	}

Drop:
Random cSpeed54, 4, 6
Random, invx, -10, 10
Random, invy, -10, 10
Random, sleep900, 100, 200
Random, sleep1, 400, 600
Random, RandTime3, 200, 400


PixelSearch, Wx, Wy, 573, 194, 754, 447,  0x0000FF, 1, Fast
	if (ErrorLevel = 0) {
	if(rng2 <= 80){
	loop{
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Wx+invx, Wy+invy, "T" RandTime3 "")
	MouseGetPos, xpos, ypos
	Sleep, sleep1
	Send {Shift Down}
	Click
	Send {Shift Up}
	MouseMove, xpos+rng3, ypos+rng2, cSpeed54
	Sleep, sleep900
	PixelSearch, Wx, Wy, 573, 194, 754, 447,  0x0000FF, 1, Fast
	if (ErrorLevel = 1) {
	GoTo, AreWeInFrontOfStall
	}
	}
	}
	else{
	MouseGetPos, xpos, ypos
	RandomBezier( xpos, ypos, Wx+invx, Wy+invy, "T" RandTime3 "")
	MouseGetPos, xpos, ypos
	Sleep, sleep1
	Send {Shift Down}
	Click
	Send {Shift Up}
	MouseMove, xpos+rng3, ypos+rng2, cSpeed54
	Sleep, sleep900
	GoTo, AreWeInFrontOfStall
	}
	}

}

2::Reload
3::Exitapp
