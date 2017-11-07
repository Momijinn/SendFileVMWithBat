@echo off

rem 注意:setの定義にて空白をあけると死ぬ

set TargetFile=%1
rem ファイルを送信したいバーチャルマシンの仮想ディスクの名前
set TargetVM=YOUR_VIRTUALMACHINE_DRIVE
rem ファイルを送信したいバーチャルPCのユーザーネーム
set VMname=VIRTUALMACHINE_USERNAME
rem 送信ファイルするファイルをおくディレクトリ
set CopyDirectory=COPYDIRECTORY
set ToCopy=/home/%VMname%/%CopyDirectory%

rem 実行 一時的に実行ポリシーをゆるくしてから再度しめる
powershell Set-ExecutionPolicy RemoteSigned
powershell -ExecutionPolicy Unrestricted -File %0\..\VMShare.ps1 %TargetFile% %TargetVM% %ToCopy%
powershell Set-ExecutionPolicy Restricted

pause