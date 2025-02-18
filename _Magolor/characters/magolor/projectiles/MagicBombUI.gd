extends  ActionUIData

onready var button = $CheckButton

func on_button_selected():
	if is_instance_valid(fighter):
		button.pressed = false
		button.disabled = true

		var supers = fighter.supers_available
		if supers >= 1:
			button.disabled = false
