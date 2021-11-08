/*

Vittu käyrää 
OT - ylä offset
OB - ala offset
OL - Vasen offset
OR - Oikea offset
(PX) - Vakiot max 200

T Vakio 200

RD = Suhteellinen päätepiste
RO = Suhteellinen lähdepiste
Vakiona pois

*/

RandomBezierThieving( X0, Y0, Xf, Yf, O="" ) {
    /*match parametrit t vakio 200ms*/
	Time := RegExMatch(O,"i)T(\d+)",M)&&(M1>0)? M1: 200
    RO := InStr(O,"RO",0) , RD := InStr(O,"RD",0)
    N:=!RegExMatch(O,"i)P(\d+)(-(\d+))?",M)||(M1<2)? 2: (M1>19)? 19: M1
    If ((M:=(M3!="")? ((M3<2)? 2: ((M3>19)? 19: M3)): ((M1=="")? 5: ""))!="")
        Random, N, %N%, %M%
    OfT:=RegExMatch(O,"i)OT(-?\d+)",M)? M1: 100, OfB:=RegExMatch(O,"i)OB(-?\d+)",M)? M1: 100
    OfL:=RegExMatch(O,"i)OL(-?\d+)",M)? M1: 100, OfR:=RegExMatch(O,"i)OR(-?\d+)",M)? M1: 100
    MouseGetPos, XM, YM
    /* if -> offset / relative x1 -> x2 */
	If ( RO )
        X0 += XM, Y0 += YM
    If ( RD )
        Xf += XM, Yf += YM
    If ( X0 < Xf )
        sX := X0-OfL, bX := Xf+OfR
    Else
        sX := Xf-OfL, bX := X0+OfR
    If ( Y0 < Yf )
        sY := Y0-OfT, bY := Yf+OfB
    Else
        sY := Yf-OfT, bY := Y0+OfB
    Loop, % (--N)-1 {
        Random, X%A_Index%, %sX%, %bX%
        Random, Y%A_Index%, %sY%, %bY%
		Random, RngNumero, 1, 10
    }
	/* å	*/
    X%N% := Xf, Y%N% := Yf, E := ( I := A_TickCount ) + Time
    While ( A_TickCount < E ) {
        U := 1 - (T := (A_TickCount-I)/Time)
        Loop, % N + 1 + (X := Y := 0) {
            Loop, % Idx := A_Index - (F1 := F2 := F3 := 1)
                F2 *= A_Index, F1 *= A_Index
            Loop, % D := N-Idx
                F3 *= A_Index, F1 *= A_Index+Idx
            M:=(F1/(F2*F3))*((T+0.000001)**Idx)*((U-0.000001)**D), X+=M*X%Idx%, Y+=M*Y%Idx%
        }
		
        MouseMove, %X%, %Y%, 0
		MouseGetPos, mousx, mousy
		PixelGetColor, C, %mousx%, %mousy%
		if (C=0X0087FF && RngNumero <=3) {
        Click
        Sleep, 1
		}
     /* Liikutus alkupiste päätepiste  */
    MouseMove, X%N%, Y%N%, 0
    Return +1
	
	}


}
