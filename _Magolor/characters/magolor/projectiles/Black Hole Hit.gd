extends DefaultFireball

func _enter():	
	
	host.screen_bump(Vector2(), 0.4, 0.4)
	$"%Charge".start_emitting()
	$"%BlackHole".start_emitting()
	host.play_sound("Inhale")
	
func _on_hit_something(o, h):
	._on_hit_something(o, h)
	host.stop_sound("Inhale")
	host.stop_sound("Success")
	host.stop_sound("Black Hole")
	host.change_state("Black Hole Rise")
	
func _tick():
	host.screen_bump(Vector2(), 0.4, 0.4)
	if host.creator.current_state() is CharacterHurtState:
		host.change_state("Fail")
	if host.creator.current_state().name == "Laughing":
		host.change_state("Fail")
		
func detect(obj):
	if obj == host.get_fighter().get_opponent():
		var pos = host.get_pos()
		var opos = obj.get_pos()
		var dir = Vector2(opos.x - pos.x, opos.y - pos.y).normalized()
		if obj.is_grounded() == true:
			var move = xy_to_dir(dir.x, 0, "-15")
			obj.move_directly(move.x, move.y)
			obj.apply_force(move.x, move.y)
		else:
			var move = xy_to_dir(dir.x, dir.y, "-20")
			obj.move_directly(move.x, move.y)
			obj.apply_force(move.x, move.y)

		


	
func fizzle():
	.fizzle()
