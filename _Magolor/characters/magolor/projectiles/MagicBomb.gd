extends DefaultFireball
var frame = 0

func detect(obj):
	host.change_state("Boom!")
	
func _frame_50():
	host.change_state("Boom!")
