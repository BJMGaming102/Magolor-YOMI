extends DefaultFireball

var didhit = 0
var once = 1
func _enter():	
	
	host.screen_bump(Vector2(), 0.4, 0.4)
	$"%Charge".start_emitting()
	$"%BlackHole".start_emitting()
	host.play_sound("Inhale")
	
func _on_hit_something(o, h):
	._on_hit_something(o, h)
	apply_enter_force()
	if once == 1:
		host.play_sound("Success")
		once = 0
		host.creator.change_state("Laughing")
	didhit = 1
	
func _tick():
	host.screen_bump(Vector2(), 0.4, 0.4)
	if didhit == 1:
		if current_tick < 119:
			host.creator.opponent.sprite.visible = false
			host.creator.opponent.set_pos(host.get_pos().x, host.get_pos().y)
	
	


func _frame_100():
	$"%Charge".stop_emitting()
	$"%BlackHole".stop_emitting()
	
func _frame_120():
	if didhit == 1:
		host.creator.opponent.sprite.visible = true
		host.stop_sound("Success")
		host.creator.change_state("Wait")
	host.play_sound("Poof")
	host.stop_sound("Inhale")
	
	
	.fizzle()
	
func fizzle():
	.fizzle()
