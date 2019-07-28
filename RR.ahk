; by Cheva (c) 2017-2019
; Ловилка Р4: Спининг v1.0.2

;reload
$^+R::Reload
;reload
$NumpadIns::Reload
;suspend/resume
$^+S::Suspend, toggle

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

$Numpad5::6
$Numpad6::Y
$Space::
	Send, {Space}
	Send, {Numpad0 Up}
return
