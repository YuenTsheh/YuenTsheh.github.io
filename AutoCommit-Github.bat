::  ��������ʹ�õ�ǰʱ������Ϊ commit ����Ϣ
set commit_msg= %date:~0,10%   %time% AutoCommit.bat by YuenTsheh
git status 
git add * 
git commit -m "%commit_msg%" 

git pull github master
git push github master

:: make a pause �������������ȴ�
:: pause
:: Exit �����Ƴ���ǰ����
Exit
