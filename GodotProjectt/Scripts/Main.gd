extends Node


func _process(delta):
	$CanvasLayer/Label.text = str($Player.coins)

