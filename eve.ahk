;by cheva
BreakLoop = 0
StopKeys = 0
BreakV = 0
;functions
ran(min, max)
 {
   random, ran, min, max
   return ran
 }
	
SoundPlay %A_WinDir%\Media\Speech On.wav

$^+C::
	Send ^+C
	SoundPlay %A_WinDir%\Media\Speech On.wav
	Loop
	{
		if (BreakLoop == 1)
		{
			BreakLoop = 0
			break 
		}
		MouseClick, left, , 
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
		Sleep, % ran(1000, 10000)
	}
return

$^+1::
	Send {^+1}
	StopKeys = 0
	SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
return

$1::
	Send 1
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1508, 77
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$2::
	Send 2
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1398, 77
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$3::
	Send 3
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1288, 77
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$4::
	Send 4
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1178, 77
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return



$5::
	Send 5
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1068, 77
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$6::
	Send 6
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 958, 77
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$7::
	Send 7
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 848, 77
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$8::
	Send 8
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 738, 77
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$^1::
	Send 1
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		Send, {Ctrl Down}
		MouseClick, left, 1666, 220
		Send, {Ctrl Up}
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$^2::
	Send ^2
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		Send, {Ctrl Down}
		MouseClick, left, 1666, 236
		Send, {Ctrl Up}
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$^3::
	Send ^3
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		Send, {Ctrl Down}
		MouseClick, left, 1666, 252
		Send, {Ctrl Up}
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$^4::
	Send ^4
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1666, 268
		Send, {Ctrl Down}
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		Send, {Ctrl Up}
		MouseMove, %OrigX%, %OrigY%
	}
return

$^5::
	Send ^5
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1666, 284
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$^6::
	Send ^6
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		Send, {Ctrl Down}
		MouseClick, left, 1666, 300
		Send, {Ctrl Up}
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$^7::
	Send ^7
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		Send, {Ctrl Down}
		MouseClick, left, 1666, 316
		Send, {Ctrl Up}
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$^8::
	Send ^8
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		Send, {Ctrl Down}
		MouseClick, left, 1666, 332
		Send, {Ctrl Up}
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$^C::
	Send ^c
	BreakLoop = 1
	StopKeys = 1
	BreakV = 1
	SoundPlay %A_WinDir%\Media\Speech Off.wav
return
