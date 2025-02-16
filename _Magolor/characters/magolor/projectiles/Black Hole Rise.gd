extends DefaultFireball

var framecount = 0

func _enter():	
	host.reset_momentum()
	host.screen_bump(Vector2(), 0.4, 0.4)
	$"%BlackHole".stop_emitting()
	apply_enter_force()
	host.creator.change_state("Laughing")
	host.creator.opponent.sprite.visible = false
	host.stop_sound("Black Hole")
	host.play_sound("Success")
	
	
func _tick():
	apply_enter_force()
	host.creator.opponent.set_pos(host.get_pos().x, host.get_pos().y)
	framecount += 1
	host.screen_bump(Vector2(), 0.6, 0.6)
	host.stop_sound("Black Hole")
	
	if framecount > 80:
		host.creator.change_state("Wait")
		host.creator.opponent.sprite.visible = true
		host.stop_sound("Inhale")
		host.stop_sound("Black Hole")
		host.play_sound("Poof")
		host.stop_sound("Success")
		.fizzle()

	
func fizzle():
		
		.fizzle()
