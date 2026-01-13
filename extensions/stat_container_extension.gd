extends "res://ui/menus/shop/stat_container.gd"

onready var _pin_button = TextureButton.new()
onready var _stat = ItemService.get_stat(key.to_lower())
var _pressed_sound = preload("res://ui/sounds/button_press.wav")
var _pitch_variation = 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	._ready()
	$HBoxContainer.add_child(_pin_button)

	_pin_button.connect("button_up", self, "_toggle_pinned_stat")
	_pin_button.texture_normal = preload("res://mods-unpacked/Revy-PinStats/assets/PinnedStats_pin.png")
	_pin_button.expand = true
	_pin_button.rect_min_size = _icon.rect_size
	_pin_button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
	_set_pin_opacity()



func _toggle_pinned_stat() -> void:
	_stat.is_pinned = !_stat.is_pinned
	SoundManager.play(_pressed_sound, 0, _pitch_variation)
	_set_pin_opacity()


func _set_pin_opacity() -> void:
	if _stat.is_pinned:
		_pin_button.modulate.a = 1
	else:
		_pin_button.modulate.a = 0.3
