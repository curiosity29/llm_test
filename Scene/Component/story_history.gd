class_name StoryHistory
extends Control

@onready var template_rich_text_label: RichTextLabel = $ScrollContainer/VBoxContainer/RichTextLabel
@onready var event_container: VBoxContainer = $ScrollContainer/EventContainer



func track_event(event: StoryEvent):
	
	var new_entry = template_rich_text_label.duplicate()
	event_container.add_child(new_entry)
	
	template_rich_text_label.text = event.main_text

	
	template_rich_text_label = new_entry

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Event.story_event_finished.connect(track_event)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
