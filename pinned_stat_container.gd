class_name PinnedStatContainer
extends HBoxContainer

var stat: StatData

onready var _icon = $Icon
onready var _value = $Value


func _ready():
	_icon.texture = stat.small_icon
	
func update_stat(player_index: int):
	# Can't get capped stats unless I hard code the stats that can be capped
	_value.text = str(Utils.get_stat(stat.stat_name.to_lower(), player_index) as int)
	
