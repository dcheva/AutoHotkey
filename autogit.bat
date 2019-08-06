git add -A
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git pull
git push origin HEAD
:loop
IF /I "%1" == "loop" && "$2" GEQ "100" (
	timeout /t "%2"
	git add -A
	git commit -am "%date% %time%"
	git pull
	git push origin HEAD
	goto loop
)