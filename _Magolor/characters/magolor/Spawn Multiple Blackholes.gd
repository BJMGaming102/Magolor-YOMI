extends CharacterState

onready var proj_scene = preload("res://_Magolor/characters/magolor/projectiles/BlackHoleObj.tscn")

func _frame_10():
	var dir = xy_to_dir(data.x, data.y)
	host.spawn_object(proj_scene, data.x*2.5*host.get_facing_int(), data.y*2.5)
	host.spawn_object(proj_scene, data.x*-2.5*host.get_facing_int(), data.y*2.5)
