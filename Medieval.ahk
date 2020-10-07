;by cheva

;reload
$^+R::Reload
;suspend/resume
$^+S::Suspend, toggle

BS := false

`::
+`::
	if(BS) {
		BS := false
		Send, {LShift Up}
		Send, {W Up}
	}
	else {
		BS := true
		Send, {LShift Up}
		Send, {W Up}
		Send, {LShift Down}
		Send, {W Down}
	}
return