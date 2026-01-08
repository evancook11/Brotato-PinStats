class_name PinnedStatsContainer
extends VBoxContainer

var _player_index = 0
func _ready():
	for stat in ItemService.stats:
		if stat.is_primary_stat:
			var stat_container = preload("res://mods-unpacked/Revy-PinStats/pinned_stat_container.tscn").instance()
			stat_container.stat = stat
			add_child(stat_container)
			stat_container.update_stat(_player_index)


func _physics_process(delta):
	
	for child in get_children():
		child.update_stat(_player_index)
		if child.stat.is_pinned:
			child.show()
		else:
			child.hide()
