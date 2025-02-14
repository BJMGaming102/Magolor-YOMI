extends CharacterState

func _enter():
	$"%Laughing".start_emitting()
	host.play_sound("Teehee")
	
func _exit():
	$"%Laughing".stop_emitting()
