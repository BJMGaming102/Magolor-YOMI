extends CharacterState

func _enter():
	$"%Surge".start_emitting()
	$"%Surge".stop_emitting()
	if data:
		host.reset_momentum()
		var dir = xy_to_dir(data.Direction.x, data.Direction.y / 3, "-5")
		host.apply_force(dir.x, dir.y)

func _frame_7():
	if data:
			host.sprite.rotation = Vector2(data.Direction.x*host.get_facing_int(), data.Direction.y).angle()
			host.reset_momentum()
			if data.CheckButton == false:
				var dir = xy_to_dir(data.Direction.x, data.Direction.y, "7.5")
				host.apply_force(dir.x, dir.y)
			else:
				var dir = xy_to_dir(data.Direction.x, data.Direction.y, "12.5")
				host.apply_force(dir.x, dir.y)
			$"%Surge".start_emitting()
			$"%Sonic Boom".start_emitting()
			# host.spawn_particle_effect_relative("res://_Magolor/characters/magolor/particles/Surge.tscn", Vector2(10, -17), Vector2(data.x, data.y))
		
func _frame_12():
	if data:
		host.sprite.rotation = Vector2(data.Direction.x*host.get_facing_int(), data.Direction.y).angle()
		host.reset_momentum()
		if data.CheckButton == false:
			var dir = xy_to_dir(data.Direction.x, data.Direction.y, "6")
			host.apply_force(dir.x, dir.y)
		else:
			var dir = xy_to_dir(data.Direction.x, data.Direction.y, "10")
			host.apply_force(dir.x, dir.y)
func _on_hit_something(o, h):
	._on_hit_something(o, h)
	host.reset_momentum()
	if data.CheckButton == false:
		host.apply_force(host.get_facing_int()*-4, -6)
	else:
		host.apply_force(host.get_facing_int()*-2, -3)
	host.change_state("Fall")
	
func _exit():
	host.sprite.rotation = 0
	$"%Surge".start_emitting()
	$"%Surge".stop_emitting()
	$"%Sonic Boom".stop_emitting()
