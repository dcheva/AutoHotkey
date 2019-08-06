; by Cheva (c) 2017-2019
; ETS/ATS keys

;reload
$^+R::Reload
;reload
$NumpadIns::Reload
;suspend/resume
$^+S::Suspend, toggle

BS := false

$Backspace::
	if(BS) {
		BS := false
		Send, {Backspace Down}
	}
	else {
		BS := true
		Send, {Backspace Up}
	}
return

$!A::Send, {A Down}

$Numpad5:: Send, {Down}

;-) click
Numpad0::LButton
NumpadDot::MButton
NumpadEnter::RButton
