#class_name Summarizer
extends Node


func summarize_events(event: StoryEvent) -> String:

	return event.main_text
