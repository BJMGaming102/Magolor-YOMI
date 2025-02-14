extends DefaultFireball

func _tick():
	if host.creator.current_state() is CharacterHurtState:
		$"%Poof".start_emitting()
		fizzle()
