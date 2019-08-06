set datetimef=%date% at %time:~0,2%:%time:~3,2%:%time:~6,2%
git add -A
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git pull
git push origin HEAD
:loop
IF /I "%1" == "loop" (
    ;timeout /t "%2"
    git status --porcelain > git.log
    for /f %%i in (git.log) do set gitlog = "%gitlog% %%i "
    git add -A
    git commit -am "%datetimef% %gitlog%"
    git pull
    git push origin HEAD
    goto loop
)