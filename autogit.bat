git add -A
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git pull
git push origin HEAD
:loop
IF /I "%1" == "loop" (
    git add -A
    git commit -am "%date% at%time:~0,2%:%time:~3,2%:%time:~6,2%"
    git pull
    git push origin HEAD
    timeout /t "%2"
    goto loop
)