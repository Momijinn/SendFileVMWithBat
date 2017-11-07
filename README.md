SendFileVMWithBat
====
VMにファイルをbatでおくるbat

## Description
hyper -v で作成したVM(バーチャルマシン)へファイルを送信するbatファイル.送信したいファイルをbatへドラッグ・アンド・ドロップするとファイルを送信する.

## Usage
送信したいファイルをbatへドラッグ・アンド・ドロップする

## Demo
こんなかんじでドラックアンドドロップするとVMへアップロードされる
<a href="https://imgur.com/1sWucYz"><img src="https://i.imgur.com/1sWucYz.png" title="source: imgur.com" /></a>

## Install
1. バーチャルマシンを起動する

2. バーチャルマシンに保存先のディレクトリを作成する

    作成する場所はユーザーディレクトリにすること

    (EX)home/miya/MVFile

3. "VMShareMain.bat"を開き以下のところを修正する

    setの部分を修正するが、空白を入れると起動しなくなるので注意
    ```bat
    rem ファイルを送信したいバーチャルマシンの仮想ディスクの名前
    set TargetVM=YOUR_VIRTUALMACHINE_DRIVE
    rem ファイルを送信したいバーチャルPCのユーザーネーム
    set VMname=VIRTUALMACHINE_USERNAME
    rem 送信ファイルするファイルをおくディレクトリ
    set CopyDirectory=COPYDIRECTORY
    ```

    (EX)
    ```bat
    rem ファイルを送信したいバーチャルマシンの仮想ディスクの名前
    set TargetVM=CentOS-7-1708
    rem ファイルを送信したいバーチャルPCのユーザーネーム
    set VMname=miya
    rem 送信ファイルするファイルをおくディレクトリ
    set CopyDirectory=VMFile
    ```

4. "VMShare.ps1"と"VMShareMain.bat"をひとまとめにしてドキュメント等の場所に置く

    (EX)
    ```
    Documents/
        ├VMFileShare/
            ├VMShare.ps1
            └VMShareMain.bat
    ```

5. "VMShareMain.bat"のショートカットを作成しデスクトップに配置.その後、プロパティを開き、管理者として実行にチェックをする

## Licence
This software is released under the MIT License, see LICENSE.

## Author
[Twitter](https://twitter.com/momijinn_aka)

[Blog](http://www.autumn-color.com/)