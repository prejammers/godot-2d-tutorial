extends HSlider

@onready var master_bus = AudioServer.get_bus_index("Master")

func _on_value_changed(value):
	AudioServer.set_bus_volume_db(master_bus, linear_to_db(value))
	AudioServer.set_bus_mute(master_bus, value < 0.025)
