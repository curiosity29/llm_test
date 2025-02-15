extends Node

var story_events: Array[StoryEvent]

func _ready() -> void:
	Event.story_event_finished.connect(track_event)
	
func track_event(event: StoryEvent):
	story_events.append(event)
