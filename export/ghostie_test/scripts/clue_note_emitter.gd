extends Sprite2D

signal something_here

func _on_area_2d_body_entered(body):
	something_here.emit()
	
