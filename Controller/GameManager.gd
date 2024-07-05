extends Control
#使用场景前先注册，注册完变量，把名字填到start后面的数组
#使用信号切换场景，切换场景后要自己queue free
var game = SceneHandler.new("game", "res://UI/game.tscn", [])
var start = SceneHandler.new("start", "res://UI/Start.tscn", [game])


func _ready():
	handle_request("start")
	pass 
	
func _process(delta):
	pass
	
func handle_request(request):
	start.handle(request, self)
	pass

	
