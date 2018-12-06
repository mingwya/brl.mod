' ResumeChannel example
SuperStrict

Graphics 640, 480

Local sound:TSound = LoadSound(blitzmaxpath()+"\samples\hitoro\sounds\gameover.ogg")
Local channel:TChannel = CueSound(sound)

Repeat
	DrawText "Press A to play sound",10,10
	DrawText "Press C to Cue sound",10,30
	
	If KeyHit(KEY_A) Then
		ResumeChannel channel
	End If
	
	If KeyHit(KEY_C) Then
		Channel=CueSound(sound)
	End If

	Flip
Until AppTerminate() Or KeyHit(KEY_ESCAPE)
