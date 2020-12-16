Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")

' Play Audio
oPlayer.URL = "require/mp/audio.mp3"
oPlayer.controls.play
While oPlayer.playState <> 1 ' 1= Stopped
	WScript.Sleep 100
Wend

' Release the Audio File
oPlayer.close