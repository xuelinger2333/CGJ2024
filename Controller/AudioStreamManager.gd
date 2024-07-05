extends Node
#使用前在字典中注册，
#播放范例：AudioStreamManager.play("ocean", false);后面的表示播放一遍
var musicDictionary = {
	#"ocean": "res://Texture/music/02_Seaside_Village.wav",
	#"start": "res://Texture/music/03_Hearts_Separated_by_the_Ocean.wav"
}

var is_loop = false
var currentMusic
func _ready():
	pass # Replace with function body.
func play(name, loop = false):
	is_loop = loop
	var music = load(musicDictionary[name])
	assert(music != null)
	if currentMusic == name:
		return
	else:
		currentMusic = name
	$AudioStreamPlayer.stream = music
	$AudioStreamPlayer.play()	
	pass

func _on_audio_stream_player_finished():
	if is_loop == true:
		$AudioStreamPlayer.play()	
	pass # Replace with function body.
