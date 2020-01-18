:: cd D:\z_my_gitHub_repositories\gp-docs

:: 加入你要自己输入 commit message
:: set /p commit_msg=Please input commit message:

:: 这条命令使用当前时间来作为 commit 的信息
set  commit_msg= %date:~0,10%   %time% AutoCommit.bat by Darian

git status 
git add * 
git commit -m "%commit_msg%"
git pull
git push
Exit