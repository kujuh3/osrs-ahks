#include RandomBezierThieving.ahk
#include RandomBezierSeeds.ahk
#include RandomBezierBanking.ahk
#include RandomBezier.ahk

;Client pos 0,0. W:773 H:536
;MasterFarmer
;CameraNorthUp
;360Zoom
;ThievingPluginEnabled
;Lobsters in bank				(Oikea alakulma)
;HideAllButFarmer
;Gnome trainer, Romeo, Stray Dog, Fortunato, Town Crier, Olivia, Diango, Market guard, Martin the master gardener, diango, Imp, Bank guard, Market guard
;Paskat seedit, 0X0000FF		(#FF0000)
;Lobsterit, 0X4DFF00	 		(#00FF4D)
;MasterFarmer, 0X0087FF			(#FF8700) MINIMAP 0X005EB2
;StunCheck, 0X00C8FF			(Theving plugin, vasen yläkulma)
;HpBar, 0X091D7C				(Status plugin, Inventoryn vasemmalla puolella)
;BankilleJuoksuTile, 0XFF0101	(#0000FF)
;BankkerinTile, 0X00FFFF 		(#FFFF00)
;InvertoryTags, SquareSize7
;GroundMarkers, SquareSize14, MinimapSize13
;NpcIndicator, SquareSize22


sleep, 2000


Loop {


FailSafeDropping:
PixelSearch, Alarivix, Alariviy, 583, 416, 747, 441, 0X0000FF, 1, Fast
	if (ErrorLevel =0) {
	GoTo, DropSeeds
	}
	
KatotaanMissäHiiriOn:
	MouseGetPos, mousx, mousy
	PixelGetColor, C, %mousx%, %mousy%
	if (C =0X0087FF) {
	GoTo, Thieving
	}
	else {
	GoTo, ViedääHiiriMasterille
	}
	
ViedääHiiriMasterille:
	
Random, HiiriMasterillx, 5, 20
Random, HiiriMasterilly, 5, 20 
Random, RandTimeHiiriMasterille, 100, 200

PixelSearch, Masterx, Mastery, 8, 33, 763, 523, 0X0087FF, 1, Fast
    if (ErrorLevel =0)    {
    MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, Masterx+HiiriMasterillx, Mastery+HiiriMasterilly, "T" RandTimeHiiriMasterille "OT2 OB2 OL2 OR2")
	}
	
Thieving:

Random, Thief1x, 5, 12
Random, Thief1y, 5, 12 
Random, RandTimeThieving, 400, 500

PixelSearch, Thiefx, Thiefy, 8, 33, 763, 523, 0X0087FF, 1, Fast
    if (ErrorLevel =0)    {
    MouseGetPos, xpos, ypos
    RandomBezierThieving(xpos, ypos, Thiefx+Thief1x, Thiefy+Thief1y, "T" RandTimeThieving "OT1 OB1 OL1 OR1")
	}
	GoTo, StunCheck

StunCheck:
PixelSearch, StatusTopx, StatusTopy, 47, 59, 120, 75, 0X00C8FF, 1, Fast
	if (ErrorLevel =0) {
	GoTo, DropSeeds
	}
		else {
		GoTo, FailSafeDropping
	}
	
DropSeeds:
Random, SeedsRand, 4, 10
Random, Seedx, 3, 8
Random, Seedy, 3, 8
Random, RandTimeSeeds, 300, 550

Loop, %SeedsRand% {

PixelSearch, Seeditx, Seedity, 576, 198, 754, 443, 0X0000FF, 1, Fast
	if (ErrorLevel =0) {
	MouseGetPos, xpos, ypos
    RandomBezierSeeds(xpos, ypos, Seeditx+Seedx, Seedity+Seedy, "T" RandTimeSeeds "OT20 OB20 OL20 OR20")
	Send {Shift Down}
	Click
	Send {Shift Up}
	}
}

CheckHP:
Random, AfkTime, 30000, 90000
Random, AfkChange, 0, 100
Random, AfkChange1, 0, 100
Random, AfkSmallSleep, 100, 300
Random, pxx1, 1055, 1680
Random, pxy1, 0, 880

PixelSearch, Px, Py, 587, 91, 589, 93, 0X0408A6, 1, Fast
	if (ErrorLevel != 0) {
	GoTo, EatFood
	}
		else {
		GoTo, FailSafeDropping
		}

EatFood:

Random, StunSafeSleep, 3500, 4500

PixelSearch, Foodx, Foody, 576, 198, 754, 443, 0X4DFF00, 1, Fast
	if (ErrorLevel =0) {
	Random, x2, -6, 6
	Random, y2, -6, 6
	Random, FoodSleep, 30, 60
	Random, RandTimeFood, 200, 500

	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, Foodx+x2, Foody+y2, "T" RandTimeFood "OT50 OB50 OL50 OR50")
	Sleep, FoodSleep
	Click
	GoTo, FailSafeDropping
	}
		else {
		Sleep, StunSafeSleep
		GoTo, WalkToBank
	}

WalkToBank:
	Random, BankSleep, 200, 300
	Random, BankAfk, 10000, 15000
	Random, BankSleepChance, 0, 100
	Random, Bankx1, 1055, 1680
	Random, Banky1, 0, 880
	Random, RandTimeBank, 200, 600
	Random, RandTimeBank2, 200, 400
	Random, AFKSleep, 7000, 15000
	
PixelSearch, Bankkix, Bankkiy, 580, 27, 763, 198, 0XFE0000, 1, Fast
	if (ErrorLevel =0) {
	Random, x2, -4, 4
	Random, y2, -2, 4
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, Bankkix+x2, Bankkiy+y2, "T" RandTimeBank "OT50 OB50 OL50 OR50")
	Click
	Sleep, BankSleep
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, Bankx1, Banky1, "T" RandTimeBank2 "")
	Sleep, AFKSleep
	GoTo, Banking
	}
	
PixelSearch, Bankkix, Bankkiy, 580, 27, 763, 198, 0XFF0101, 1, Fast
	if (ErrorLevel =0) {
	Random, x2, -4, 4
	Random, y2, -2, 4
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, Bankkix+x2, Bankkiy+y2, "T" RandTimeBank "OT50 OB50 OL50 OR50")
	Click
	Sleep, BankSleep
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, Bankx1, Banky1, "T" RandTimeBank2 "")
	Sleep, AFKSleep
	GoTo, Banking
	}	

Banking:

PixelSearch, BankBoothx, BankBoothy, 9, 259, 529, 503, 0XFFFF00, 1, Fast
	if (ErrorLevel =0) {
	Random, x3, 0, 8
	Random, y3, 0, 8
	Random, RandTimeBankBooth, 250, 350
	
	MouseGetPos, xpos, ypos
	RandomBezierBanking(xpos, ypos, BankBoothx+x3, BankBoothy+y3, "T" RandTimeBankBooth "OT50 OB50 OL50 OR50")
	GoTo, DepositAll
	}
	
DepositAll:

Random, x4, -10, 10
Random, y4, -10, 10
Random, x6, -10, 10
Random, y6, -10, 10
Random, RandTimeDeposit, 200, 400
Random, RandTimeDeposit2, 100, 200

PixelSearch, Px, Py, 385, 326, 418, 357, 0X1D1F83, 10, Fast
	if (ErrorLevel =0) {
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, 462+x4, 340+y4, "T" RandTimeDeposit "OT10 OB10 OL10 OR10")
	Click
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, 442+x6, 303+y6, "T" RandTimeDeposit2 "OT10 OB10 OL10 OR10")
	Click
	Sleep, 800
	GoTo, BackToNpc
}

BackToNpc:
Random, x5, -5, 5
Random, y5, -5, 5
Random, RandTimeNPC, 200, 400

PixelSearch, Lobox, Loboy, 576, 198, 754, 443, 0X4DFF00, 1, Fast
	if (ErrorLevel =0) {
	MouseGetPos, xpos, ypos
	RandomBezier(xpos, ypos, 635+x5, 89+y5, "T" RandTimeNPC "OT100 OB100 OL100 OR100")
	Click
	GoTo, FailSafeDropping
	}
	else {
	GoTo, DepositAll
	}
}


2::Reload
3::Exitapp






