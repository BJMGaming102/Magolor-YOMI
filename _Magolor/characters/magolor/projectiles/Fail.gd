extends DefaultFireball

func _enter():
		$"%Charge".stop_emitting()
		$"%BlackHole".stop_emitting()
		host.stop_sound("Inhale")
		host.stop_sound("Black Hole")
		host.stop_sound("Poof")
		host.stop_sound("Success")
		host.play_sound("Death")
		fizzle()
		.fizzle()

func _fizzle():
	.fizzle()
