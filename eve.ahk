;by cheva

;vars
global BreakLoop := 0
global StopKeys := 1
;locked targets position
global LockedTop := 77
global LockedLeft := 1508
global LockedStep := -110
;overview position
global ViewTop := 220
global ViewLeft := 1700
global ViewStep := 16

;functions
ran(min, max)
{
	random, ran, min, max
	return ran
}

clkView(pos:=1)
{
	if(StopKeys == 0)
	{
		top := ViewTop + (ViewStep * (pos-1))
		lft := ViewLeft
		MouseGetPos, OrigX, OrigY
		Send, {Ctrl Down}
		MouseMove, %lft%, %top%
		MouseClick, left, , 
		Sleep, 100
		MouseClick, left, , 
		Send, {Ctrl Up}
		MouseMove, %OrigX%, %OrigY%
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	}
}

clkLocked(pos:=1)
{
	if(StopKeys == 0)
	{
		top := LockedTop
		lft := LockedLeft + (LockedStep * (pos-1))
		MouseGetPos, OrigX, OrigY
		MouseMove, %lft%, %top%
		MouseClick, left, , 
		Sleep, 100
		MouseClick, left, , 
		MouseMove, %OrigX%, %OrigY%
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	}
}

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;controls

;reload
$^+R::Reload
$^C::Reload

;suspend/resume
$^+S::Suspend, toggle

;pause/resume
$^+P::Pause, toggle

;enable mouse clicker (random time 1-10 sec, current mouse position)
$^+C::
	Send, {^+C}
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
	Loop
	{
		if (BreakLoop == 1)
		{
			BreakLoop = 0
			break
		}
		MouseClick, left, ,
		Sleep, % ran(1000, 10000)
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	}
return

;enable key clicker ([1-8] and control+[1-8])
$^+1::
	Send {^+1}
	StopKeys = 0
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
return

;[1-8] click locked
$1::
	Send, {1}
	clkLocked(1)
return

$2::
	Send, {2}
	clkLocked(2)
return

$3::
	Send, {3}
	clkLocked(3)
return

$4::
	Send, {4}
	clkLocked(4)
return

$5::
	Send, {5}
	clkLocked(5)
return

$6::
	Send, {6}
	clkLocked(6)
return

$7::
	Send, {7}
	clkLocked(7)
return

$8::
	Send, {8}
	clkLocked(8)
return

;control+[1-8] control+click overview
$^1::
	Send, {^1}
	clkView(1)
return

$^2::
	Send, {^2}
	clkView(2)
return

$^3::
	Send, {^3}
	clkView(3)
return

$^4::
	Send, {^4}
	clkView(4)
return

$^5::
	Send, {^5}
	clkView(5)
return

$^6::
	Send, {^6}
	clkView(6)
return

$^7::
	Send, {^7}
	clkView(7)
return

$^8::
	Send, {^8}
	clkView(8)
return
