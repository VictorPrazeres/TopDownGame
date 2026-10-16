class_name Player extends CharacterBody2D

@export var data: PlayerData

var can_move := true
var movement: Vector2
var direction: Vector2

@onready var visuals: Node2D = $Visuals
@onready var anim_texture: AnimatedSprite2D = %AnimTexture


func _physics_process(_delta: float) -> void:
	if not can_move:
		return
	
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction != Vector2.ZERO:
		movement = direction * data.move_speed
		anim_texture.play("move")
	else:
		movement = Vector2.ZERO
		anim_texture.play("idle")
	
	velocity = movement
	move_and_slide()
	rotate_player()


func rotate_player() -> void:
	if direction != Vector2.ZERO:
		if direction.x >= 0.1:
			visuals.scale = Vector2(1.25, 1.25)
		else:
			visuals.scale = Vector2(-1.25, 1.25)
