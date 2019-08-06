set datetimef = %date% at%time:~0,2%:%time:~3,2%:%time:~6,2%
git add -A
set m = ""
FOR %%a IN (%*) DO (
  set m  = %m + a
)
git commit -am "%m"
git pull
git push origin HEAD
:loop
IF /I "%1" == "loop" (
    git add -A
    git commit -am "%datetimef%"
    git pull
    git push origin HEAD
    timeout /t "%2"
    goto loop
)