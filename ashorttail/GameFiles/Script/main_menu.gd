extends Control

@export_category("Exports")
@export var title : String
@export var subTitle : String
@export var PlayScene : PackedScene

var version = ProjectSettings.get_setting("application/config/version")
#region Nodes
#Titles
@onready var titleLabel = $MenuMargin/TitleMargin/Control/titleLabel
@onready var subtitleLabel = $MenuMargin/SubTitleMargin/Control2/subtitleLabel
#buttons
@onready var playbutton = $MainMenuButtons/Control/VBoxContainer/PlayButton
@onready var optionsbutton = $MainMenuButtons/Control/VBoxContainer/OptionsButton
@onready var creditsbutton = $MainMenuButtons/Control/VBoxContainer/CreditsButton
@onready var exitbutton = $MainMenuButtons/Control/VBoxContainer/ExitButton
#endregion

#region Functions

func setNames(name,node): 
	node.text = name
#endregion

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setNames(title,titleLabel)
	setNames(subTitle,subtitleLabel)
	
	if PlayScene == null:
		playbutton.hide()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#region Signals

func _on_play_button_pressed() -> void:
	pass # Replace with function body.

func _on_options_button_pressed() -> void:
	pass # Replace with function body.

func _on_credits_button_pressed() -> void:
	pass # Replace with function body.

func _on_exit_button_pressed() -> void:
	pass # Replace with function body.

#endregion
