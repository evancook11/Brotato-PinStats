extends "res://main.gd"

# Called when the node enters the scene tree for the first time.
func _ready():

	var pinned_stats_container = PinnedStatsContainer.new()
	var life_container_p1 = $UI / HUD / LifeContainerP1
	life_container_p1.add_child(pinned_stats_container)
