class_name PinnedStatsContainer
extends VBoxContainer

var _player_index = 0
var _stat_order = [
	"stat_curse",
	"stat_max_hp",
	"stat_hp_regeneration",
	"stat_lifesteal",
	"stat_percent_damage",
	"stat_melee_damage",
	"stat_attack_speed",
	"stat_crit_chance", 
	"stat_engineering",
	"stat_range",
	"stat_armor",
	"stat_dodge",
	"stat_speed",
	"stat_luck",
	"stat_harvesting"
]

func _ready():
	for stat in ItemService.stats:
		if stat.is_primary_stat:
			var stat_container = preload("res://mods-unpacked/Revy-PinStats/pinned_stat_container.tscn").instance()
			stat_container.stat = stat
			stat_container.order = _stat_order.find(stat.stat_name)
			add_child(stat_container)
			stat_container.update_stat(_player_index)
	var children = get_children()
	children.sort_custom(self, "compare_children")
	for i in children.size():
		move_child(children[i], i)

func compare_children(a, b):
	return a.order < b.order

func _physics_process(delta):
	
	for child in get_children():
		child.update_stat(_player_index)
		if child.stat.is_pinned:
			child.show()
		else:
			child.hide()
