extends Control

@onready var label: Label = $Label
@onready var nobody_who_chat: NobodyWhoChat = $NobodyWhoChat

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_nobody_who_chat_response_updated(new_token: String) -> void:
	label.text += new_token
	


func _on_line_edit_text_submitted(new_text: String) -> void:
	print("text entered: ", new_text)
	nobody_who_chat.say(new_text)
	
