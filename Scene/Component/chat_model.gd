extends Control

@onready var label: Label = $Label
@onready var nobody_who_chat: NobodyWhoChat = $NobodyWhoChat
var current_story_event: StoryEvent
@onready var story_teller: NobodyWhoChat = $StoryTeller

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func next_story_event():
	# last event
	# summary
	# chars
	var summary = ""
	story_teller.next_story_event(current_story_event, summary)










func _on_nobody_who_chat_response_updated(new_token: String) -> void:
	label.text += new_token

func _on_line_edit_text_submitted(new_text: String) -> void:
	print("text entered: ", new_text)
	nobody_who_chat.say(new_text)
	
