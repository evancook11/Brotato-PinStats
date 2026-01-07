extends Node

const PINSTATS_LOG = "Revy-PinStats"

func _init():
	ModLoaderLog.info("Init", PINSTATS_LOG)
	ModLoaderMod.install_script_extension("res://mods-unpacked/Revy-PinStats/extensions/stat_container_extension.gd")
	ModLoaderMod.install_script_extension("res://mods-unpacked/Revy-PinStats/extensions/stat_data_extension.gd")

func _ready():
	ModLoaderLog.info("Ready", PINSTATS_LOG)

