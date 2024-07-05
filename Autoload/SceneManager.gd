extends Node

class_name SceneHandler

var successor = []
var scene_name
var resource_path

func _init(scene_n, scene_resource, scene_arr = []):
	scene_name = scene_n
	resource_path = scene_resource
	successor = scene_arr
	
func handle(request, parent):
	if request == scene_name:
		var Scene_Resource = ResourceLoader.load(resource_path)
		var scene = Scene_Resource.instantiate()
		scene.connect("scene_change_request", Callable(parent, "handle_request"))
		
		parent.add_child(scene)
	else:
		for i in successor.size():
			successor[i].handle(request, parent)
		pass
