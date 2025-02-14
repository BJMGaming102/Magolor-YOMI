extends CharacterState

func _enter():
	$"%Surge".start_emitting()
	$"%Surge".stop_emitting()
	if data:
		var dir = xy_to_dir(data.x, data.y / 3, "-5")
		host.apply_force(dir.x, dir.y)

func _frame_7():
	if data:
		host.sprite.rotation = Vector2(data.x*host.get_facing_int(), data.y).angle()
		var dir = xy_to_dir(data.x, data.y, "8")
		host.apply_force(dir.x, dir.y)
		$"%Surge".start_emitting()
		# host.spawn_particle_effect_relative("res://_Magolor/characters/magolor/particles/Surge.tscn", Vector2(10, -17), Vector2(data.x, data.y))
		
func _frame_12():
	if data:
		host.sprite.rotation = Vector2(data.x*host.get_facing_int(), data.y).angle()
		var dir = xy_to_dir(data.x, data.y, "6")
		host.apply_force(dir.x, dir.y)
		
func _on_hit_something(o, h):
	._on_hit_something(o, h)
	host.apply_force(host.get_facing_int()*-8, -6)
	host.change_state("Fall")
	
func _exit():
	host.sprite.rotation = 0
	$"%Surge".start_emitting()
	$"%Surge".stop_emitting()
