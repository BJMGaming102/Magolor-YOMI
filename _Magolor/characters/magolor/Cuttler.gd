extends CharacterState

func _tick():
	if current_tick >= 10:
		if current_tick <=15:
			var dir = xy_to_dir(data.x, data.y, "4")
			host.apply_force(dir.x, dir.y)

func _frame_10():
	host.has_hyper_armor = true
	
func _frame_16():
	host.has_hyper_armor = false
	
	
