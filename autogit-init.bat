del .git
git init
echo #%1 > README.MD
git add -A
git commit -m "first commit"
git checkout -b %1
git remote add origin https://github.com/dcheva/%1.git
git push origin HEAD