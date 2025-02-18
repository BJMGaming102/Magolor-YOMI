extends DefaultFireball
var frame = 0

func _enter():
	$"%Flying Effects".start_emitting()

func detect(obj):
	host.change_state("Boom2!")
	
func _tick():
	if host.is_grounded():
		host.change_state("Boom2!")
