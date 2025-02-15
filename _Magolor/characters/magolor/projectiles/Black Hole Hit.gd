extends DefaultFireball

var didhit = 0
var once = 1
var framecount = 0
func _enter():	
	
	host.screen_bump(Vector2(), 0.4, 0.4)
	$"%Charge".start_emitting()
	$"%BlackHole".start_emitting()
	host.play_sound("Inhale")
	
func _on_hit_something(o, h):
	._on_hit_something(o, h)
	host.change_state("Black Hole Rise")
	
func _tick():
	host.screen_bump(Vector2(), 0.4, 0.4)
	if host.creator.current_state() is CharacterHurtState:
		host.change_state("Fail")
	if host.creator.current_state().name == "Laughing":
		host.change_state("Fail")
		


	
func fizzle():
	.fizzle()
