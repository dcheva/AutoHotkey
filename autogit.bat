set datetimef = %date% at%time:~0,2%:%time:~3,2%:%time:~6,2%
git add -A
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git pull
git push origin HEAD
:loop
IF /I "%1" == "loop" (
    set t = %2
    IF /I %t% LEQ 60 do (set t=60)
    git add -A
    git commit -am "%datetimef%"
    git pull
    git push origin HEAD
    timeout /t %t%
    goto loop
)