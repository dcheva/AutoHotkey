;by cheva

BreakLoop = 0
StopKeys = 0
BreakV = 0
	
SoundPlay %A_WinDir%\Media\Speech On.wav

^+V::
	Send ^+V
	SoundPlay %A_WinDir%\Media\Speech On.wav
	Loop
	{
		if (BreakV == 1)
		{
			BreakV = 0
			break 
		}
		Send V 
		Sleep 5678
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
	}
return

^+C::
	Send ^+C
	SoundPlay %A_WinDir%\Media\Speech On.wav
	Loop
	{
		if (BreakLoop == 1)
		{
			BreakLoop = 0
			break 
		}
		Send {RButton} 
		Sleep 3456
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	}
return

^+1::
	Send {^+1}
	StopKeys = 0
	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
return

$1::
	Send 1
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1508, 55
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$2::
	Send 2
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1398, 55
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$3::
	Send 3
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1288, 55
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$4::
	Send 4
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1178, 55
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$5::
	Send 5
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 1068, 55
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$6::
	Send 6
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 958, 55
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$7::
	Send 7
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 848, 55
		SoundPlay %A_WinDir%\Media\Speech Disambiguation.wav
		MouseMove, %OrigX%, %OrigY%
	}
return

$8::
	Send 8
	if(StopKeys == 0)
	{
		MouseGetPos, OrigX, OrigY
		MouseClick, left, 738, 55
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
