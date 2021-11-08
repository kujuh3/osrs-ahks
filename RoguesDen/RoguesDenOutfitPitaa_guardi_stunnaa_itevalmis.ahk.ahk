;RogesDenOutfitMiniGame
;CameraZoom359?!?!?!
;AlkaaBankkiauki
;Staminaoikeeala/EnergyYksylempi, (1dose)
;Bankkeri/MazeGuardi 0X0087FF
;SinineTileMapissa 0XFE0000
;KeltaneTileMapissa 0X00FEFE
;VihreeTileMapissa 0X00FE00
;MazenOvi 0XFF00FF
;MazenTile 0X0000FF


F10::
Sleep, 2000

Loop {

Random, Sleep2030, 20, 30
Random, Sleep50100, 50, 100
Random, Sleep200300, 200, 300
Random, Sleep15002500, 1500, 2500
Random, Sleep800010000, 8000, 10000
Random, Sleep60007000, 6000, 7000
Random, Sleep600800, 600, 800
Random, Sleep48005000, 4800, 5000
Random, Sleep37003900, 3700, 3900
Random, Sleep50005200, 5000, 5200
Random, Sleep17002000, 1700, 2000
Random, Sleep12001400, 1200, 1400
;MazenSleepit
Random, Sleep34003600, 3400, 3600
Random, Sleep27002900, 2700, 2900
Random, Sleep60006200, 6000, 6200
Random, Sleep39004100, 3900, 4100
Random, Sleep41004300, 4100, 4300
Random, Sleep46504850, 4650, 4850
Random, Sleep35503750, 3550, 3750
Random, Sleep1400014500, 14000, 14500
Random, Sleep77007900, 7700, 7900
Random, Sleep59006100, 5900, 6100
Random, Sleep56005800, 5600, 5800
Random, Sleep29003100, 2900, 3100
Random, Sleep19002100, 1900, 2100
Random, Sleep45004700, 4500, 4700
Random, Sleep65006700, 6500, 6700
Random, Sleep14001600, 1400, 1600
Random, Sleep1010010400, 10100, 10400
Random, Sleep21002300, 2100, 2300
Random, Sleep1610016400, 16100, 16400
Random, Sleep51005300, 5100, 5300
Random, Sleep53005500, 5300, 5500
Random, Sleep30003200, 3000, 3200
Random, Sleep2800300, 2800, 3000
Random, Sleep38004000, 3800, 4000
Random, Sleep31003300, 3100, 3300
Random, Sleep66006800, 6600, 6800
Random, Sleep68007000, 6800, 7000
Random, Sleep49005100, 4900, 5100
Random, Sleep57005900, 5700, 5900
Random, Sleep55005700, 5500, 5700
Random, Sleep69007100, 6900, 7100
Random, Sleep87008900, 8700, 8900
Random, Sleep500600, 500, 600

Random, cSpeed, 2, 5
Random, x1, -1, 1
Random, y1, -1, 1
Random, x2, -2, 2
Random, y2, -2, 2
Random, x3, -3, 3
Random, y3, -3, 3
Random, x4, -4, 4
Random, y4, -4, 4
Random, x5, -5, 5
Random, y5, -5, 5
Random, x6, -6, 6
Random, y6, -6, 6
Random, x7, -7, 7
Random, y7, -7, 7
Random, x8, -8, 8
Random, y8, -8, 8
Random, x10, -10, 10
Random, y10, -1, 10
Random, y9, 1, 3






OtetaaJaJuodaanPotut:
Mousemove, 428+x5, 275+y5, cSpeed
Random, cSpeed, 2, 5
Random, x5, -5, 5
Random, y5, -5, 5
	Sleep,Sleep50100
	Click
Mousemove, 428+x5, 275+y5, cSpeed
Random, cSpeed, 2, 5
Random, x5, -5, 5
Random, y5, -5, 5
	Sleep,Sleep200300
	Click
Mousemove, 428+x5, 275+y5, cSpeed
Random, cSpeed, 2, 5
Random, x5, -5, 5
Random, y5, -5, 5
	Sleep,Sleep200300
	Click
	Sleep,Sleep200300
Mousemove, 428+x5, 312+y5, cSpeed
Random, cSpeed, 2, 5
Random, x5, -5, 5
Random, y5, -5, 5
Random, x5, -5, 5
Random, y5, -5, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep200300
	Send {Esc}
	Sleep,Sleep50100
Mousemove, 582+x5, 264+y5, cSpeed
Random, cSpeed, 2, 5
Random, x5, -5, 5
Random, y5, -5, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep12001400
	Send {Shift Down}
	Sleep,Sleep200300
	Click
	Sleep,Sleep200300
	Send {Shift Up}
	Sleep,Sleep50100
Mousemove, 624+x5, 264+y5, cSpeed
Random, cSpeed, 2, 5
Random, x5, -5, 5
Random, y5, -5, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep12001400
	Send {Shift Down}
	Sleep,Sleep200300
	Click
	Sleep,Sleep200300
	Send {Shift Up}
	Sleep,Sleep50100
Mousemove, 666+x5, 264+y5, cSpeed
Random, cSpeed, 2, 5
Random, x5, -5, 5
Random, y5, -5, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep12001400
	Send {Shift Down}
	Sleep,Sleep200300
	Click
	Sleep,Sleep200300
	Send {Shift Up}
	Sleep,Sleep50100
Mousemove, 708+x5, 264+y5, cSpeed
Random, cSpeed, 2, 5
Random, x5, -5, 5
Random, y5, -5, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep12001400
	Send {Shift Down}
	Sleep,Sleep200300
	Click
	Sleep,Sleep200300
	Send {Shift Up}
	Sleep,Sleep50100

JuostaaMazee:
PixelSearch, Sininenx, Sineney, 583, 47, 745, 172, 0XFE0000, 1, Fast
	if (ErrorLevel =0) {
	Mousemove, Sininenx+x1, Sineney+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep37003900
}
PixelSearch, Keltanex, Keltaney, 583, 47, 745, 172, 0X00FEFE, 1, Fast
	if (ErrorLevel =0) {
	Mousemove, Keltanex+x1, Keltaney+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep51005300
}
PixelSearch, Ovix, Oviy, 186, 136, 338, 247, 0XFF00FF, 1, Fast
	if 	(ErrorLevel =0) {
	Mousemove, Ovix+x2, Oviy+y9, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep17002000
}
	
SolveMaze:
	Mousemove, 121+x2, 96+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep56005800
	Mousemove, 85+x2, 163+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep60006200
	Mousemove, 65+x2, 121+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep39004100
	Mousemove, 146+x1, 240+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep41004300
	Mousemove, 26+x2, 125+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep46504850
	Mousemove, 124+x2, 239+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep35503750
	Mousemove, 32+x2, 156+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep1400014500
	Mousemove, 43+x2, 69+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep77007900
	Mousemove, 127+x2, 121+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep59006100
	Mousemove, 609+x2, 54+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep77007900
	Mousemove, 261+x2, 140+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep56005800
	Mousemove, 661+x1, 54+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep59006100
	Mousemove, 286+x2, 80+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep29003100
	Mousemove, 621+x2, 61+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep59006100
	Mousemove, 261+x3, 174+y3, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep19002100
	Mousemove, 264+x4, 150+y4, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep45004700
	Mousemove, 637+x1, 42+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep65006700
	Mousemove, 261+x4, 177+y4, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep14001600
	Mousemove, 713+x1, 114+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep1010010400
	Mousemove, 266+x3, 222+y3, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep14001600
	Mousemove, 264+x5, 206+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep21002300
	Mousemove, 501+x3, 335+y3, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep1610016400
	Mousemove, 307+x8, 202+y6, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep34003600
	Mousemove, 697+x1, 114+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep51005300
	Mousemove, 488+x2, 344+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep53005500

KatotaanTulikoTiiliInvaan:
PixelSearch, Tilex, Tiley, 558, 232, 735, 491, 0X0000FF, 1, Fast
	if (ErrorLevel !=0) {
	GoTo, OtetaaUusTiiliMaasta
	}
	Mousemove, 377+x4, 162+y4, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep30003200
	Mousemove, 423+x10, 270+y10, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep2800300
	Mousemove, 391+x2, 259+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep39004100
	Mousemove, 287+x1, 231+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep21002300
	Mousemove, 358+x1, 225+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep, Sleep38004000
	Mousemove, 316+x1, 143+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep39004100
	Mousemove, 315+x1, 264+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep39004100
	Mousemove, 287+x1, 354+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep50005200
	Mousemove, 204+x1, 196+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep45004700
	Mousemove, 234+x1, 178+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep31003300
	Mousemove, 240+x1, 224+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep30003200
PixelSearch, Sininenx, Sineney, 628, 173, 650, 190, 0XFE0000, 1, Fast
	Mousemove, Sininenx, Sineney, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep66006800
PixelSearch, Vihreex, Vihreey, 626, 170, 664, 194, 0X00FE00, 1, Fast
	Mousemove, Vihreex, Vihreey, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep68007000
	Mousemove, 26+x2, 204+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep49005100
	Mousemove, 64+x3, 220+y3, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep50005200
	Mousemove, 170+x2, 204+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep31003300
	Mousemove, 85+x2, 184+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep57005900
	Mousemove, 613+x1, 70+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep55005700
	Mousemove, 645+x1, 66+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep50005200
	Mousemove, 645+x1, 42+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep69007100
	Mousemove, 681+x1, 146+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep87008900
	Mousemove, 420+x2, 280+y2, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep38004000

	MsgBox, Vedä homo loppuu, ei riitä taidot vääntää scriptii
	Reload


	
OtetaaUusTiiliMaasta:
	Mousemove, 266+x1, 203+y1, cSpeed
	Random, cSpeed, 2, 5
	Sleep,Sleep50100
	Click
	Sleep,Sleep200300
	GoTo, KatotaanTulikoTiiliInvaan

}
F12::ExitApp
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	