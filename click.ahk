;by cheva

global X:=240 ; basic margin

;reload
$NumpadIns::Reload
$!+R::Reload
;suspend/resume
$!+S::Suspend, toggle

;-) clickers
; set margin
!0::
	X:=240
	return
!9::
	X:=220
	return
!8::
	X:=200
	return
!7::
	X:=180
	return
!6::
	X:=160
	return
!5::
	X:=140
	return

; Buyer first click
!x::
	; Place cursor on second row on Buy icon
	MouseClick, Left, 0, -40, 1, 2, ,R
	MouseClick, Left, % 0-X, 40, 1, 4, ,R
	MouseMove, % X, 0, 2, R
	return
; Buyer clicks
!z::
	; WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative
	MouseClick, Left
	MouseClick, Left, % 0-X, 0, 1, 4, ,R
	MouseMove, % X, 0, 2, R
	return
;; Eater clicks
; reload page
!c::
	;; Place cursor check to eat
	;MouseClick, Left
	;MouseClick, Left, -640, 50, 1, 10, ,R
	;MouseMove, 640, -50, 2, R
	Send {F5}
	return

; abort listing
!a::
	; Place cursor on minus
	MouseClick, Left
	MouseClick, Left, -380, 0, 1, 2, ,R
	MouseMove, 380, 0, 2, R
	return
	
; Ловилка Р4: Спининг v1.0.2
$^Numpad0::
	Loop
	{
		; нормально + подъем (подсечка)
		Send, {Numpad0 Down}
		Sleep, 7000
		Send, {Numpad0 Up}

		; пауза
		Sleep, 3000

		; быстро
		Send, {Numpad0 Down}
		Send, {NumpadEnter Down}
		Sleep, 7000
		Send, {NumpadEnter Up}
		Send, {Numpad0 Up}

		; пауза
		Sleep, 3000

		; нормально
		Send, {Numpad0 Down}
		Sleep, 7000
		Send, {Numpad0 Up}

		; подъем + подсак (или в садок + выход)
		Send, {NumpadDot Down}
		Sleep, 2500 ; точное значение для подъема
		Send, {Space}
		Sleep, 200
		Send, {Space}
		Sleep, 1000
		Send, {NumpadDot Up}

   		; заброс после садка
		Send, {Numpad0 Down}
		Send, {NumpadEnter Down}
		Sleep, 1000
		Send, {NumpadEnter Up}
		Send, {Numpad0 Up}
		if(break_g == 1)
			break

		; пауза
		Sleep, 3000

   		; подтяжка после подъема
		Send, {Numpad0 Down}
		Send, {NumpadEnter Down}
		Sleep, 10000
		Send, {NumpadEnter Up}
		Send, {Numpad0 Up}
		if(break_g == 1)
			break

		; пауза
		Sleep, 3000
}
return

