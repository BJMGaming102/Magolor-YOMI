extends DefaultFireball

func _enter():
	host.set_grounded(false)
	host.play_sound("Black Hole")
	$"%Charge".stop_emitting()
	$"%BlackHole".stop_emitting()
	$"%BlackHolePoof".stop_emitting()

func _frame_10():
	$"%BlackHole".start_emitting()
	

func _frame_60():
	host.change_state("Black Hole")
