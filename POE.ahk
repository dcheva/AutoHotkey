; by Cheva (c) 2017-2020
; POE keys

;reload
$^+R::Reload
;reload
;suspend/resume
$^+S::Suspend, toggle

;-) set counter please
CNT := 0

;-) reset BACKSPACE
BS := false

;-) and check if BS triggered
$Backspace::
	if(BS) {
		BS := false
	}
	else {
		BS := true
	}
return

$RButton::
    if(BS) {
	{					
		SendInput {RButton Down}
		While Getkeystate("RButton","P")
		{
			Sleep, 800
		}
		SendInput {RButton Up}
		SendInput {LControl Down}
		SendInput {T}
		SendInput {LControl Up}
	}
    }
return