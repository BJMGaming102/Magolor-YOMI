extends CharacterState

func _frame_8():
	if data:
		if data.CheckButton == true:
			for i in 3:
				var temp = host.spawn_object(load("res://_Magolor/characters/magolor/projectiles/MagicBombSmall.tscn"), 12, 0)
				temp.set_grounded(false)
				temp.set_facing(host.get_facing_int())
				host.drain_super_meter(80)
				match i:
					0:
						temp.apply_force_relative(fixed.add(fixed.mul(fixed.mul(str(data.Spread.x), "0.5"), "0.02"), "2"), "3")

					1:
						temp.apply_force_relative(fixed.add(fixed.mul(fixed.mul(str(data.Spread.x), "0.75"), "0.03"), "2.5"), "2")

					2: 
						temp.apply_force_relative(fixed.add(fixed.mul(fixed.mul(str(data.Spread.x), "1"), "0.04"), "3"), "1")
		else:
			var temp = host.spawn_object(load("res://_Magolor/characters/magolor/projectiles/MagicBombSmall.tscn"), 12, 0)
			temp.set_grounded(false)
			temp.set_facing(host.get_facing_int())
			temp.apply_force_relative(fixed.add(fixed.mul(fixed.mul(str(data.Spread.x), "1"), "0.05"), "0"), "1")
