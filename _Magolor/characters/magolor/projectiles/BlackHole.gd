extends DefaultFireball

func _enter():
	host.set_grounded(false)
	$"%Charge".stop_emitting()
	$"%BlackHole".stop_emitting()
	$"%BlackHolePoof".stop_emitting()
	
func _frame_1():
	host.play_sound("Black Hole")

func _frame_10():
	$"%BlackHole".start_emitting()
	

func _frame_60():
	host.change_state("Black Hole Idle")
	
func _tick():
	if host.creator.current_state() is CharacterHurtState:
		host.change_state("Fail")
