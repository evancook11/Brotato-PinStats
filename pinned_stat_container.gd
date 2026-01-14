class_name PinnedStatContainer
extends HBoxContainer

var stat: StatData

onready var _icon = $Icon
onready var _value = $Value
var order


func _ready():
	_icon.texture = stat.small_icon
	
func update_stat(player_index: int):
	# Can't get capped stats unless I hard code the stats that can be capped
	var stat_value = Utils.get_stat(stat.stat_name.to_lower(), player_index) as int
	_value.text = str(stat_value)
	if stat_value > 0:
		_value.add_color_override("font_color", ProgressData.settings.color_positive)
	elif stat_value < 0:
		_value.add_color_override("font_color", ProgressData.settings.color_negative)
	else:
		_value.add_color_override("font_color", Color.white)
	
