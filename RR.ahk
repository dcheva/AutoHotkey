; by Cheva (c) 2017-2019
; ������� �4: ������� v1.0.2

;reload
$^+R::Reload
;reload
$NumpadIns::Reload
;suspend/resume
$^+S::Suspend, toggle

$^Numpad0::
	Loop
	{
		; ��������� + ������ (��������)
		Send, {Numpad0 Down}
		Sleep, 7000
		Send, {Numpad0 Up}

		; �����
		Sleep, 3000

		; ������                                 
		Send, {Numpad0 Down}
		Send, {NumpadEnter Down}
		Sleep, 7000
		Send, {NumpadEnter Up}
		Send, {Numpad0 Up}

		; �����
		Sleep, 3000

		; ���������
		Send, {Numpad0 Down}
		Sleep, 7000
		Send, {Numpad0 Up}

		; ������ + ������ (��� � ����� + �����)
		Send, {NumpadDot Down}
		Sleep, 2500 ; ������ �������� ��� �������
		Send, {Space}
		Sleep, 200
		Send, {Space}
		Sleep, 1000
		Send, {NumpadDot Up}

   		; ������ ����� �����
		Send, {Numpad0 Down}
		Send, {NumpadEnter Down}
		Sleep, 1000
		Send, {NumpadEnter Up}
		Send, {Numpad0 Up}
		if(break_g == 1)
			break

		; �����
		Sleep, 3000

   		; �������� ����� �������
		Send, {Numpad0 Down}
		Send, {NumpadEnter Down}
		Sleep, 10000
		Send, {NumpadEnter Up}
		Send, {Numpad0 Up}
		if(break_g == 1)
			break

		; �����
		Sleep, 3000
}
return

$Numpad5::6
$Numpad6::Y
$Space::
	Send, {Space}
	Send, {Numpad0 Up}
return
