extends DefaultFireball

onready var hitbox1 = $Close
onready var hitbox2 = $Far

func _tick():
	._tick()

func _frame_1():
	.fizzle()

func fizzle():
	.fizzle()
