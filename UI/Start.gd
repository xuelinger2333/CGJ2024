extends Control

signal scene_change_request(next_scene)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	scene_change_request.emit("game")
	self.queue_free()
	pass # Replace with function body.
