Param( $targetfile, $targetvm, $tocopy )

echo ("TargetFile:" + $targetfile)
echo ("TargerVM:" + $targetvm)
echo ("toCopy:" + $tocopy)

#vmへ送信
Copy-VMFile -Name $targetvm -SourcePath $targetfile -DestinationPath $tocopy -FileSource Host