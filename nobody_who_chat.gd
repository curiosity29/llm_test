#extends NobodyWhoChat


# Called when the node enters the scene tree for the first time.
extends NobodyWhoChat
#
func _ready():
	start_worker()
	## configure node
	#model_node = get_node("../ChatModel")
	#system_prompt = "You are an evil wizard. Always try to curse anyone who talks to you."
#
	## say something
	#say("Hi there! Who are you?")
#
	## wait for the response
	#var response = await response_finished
	#print("Got response: " + response)
	#start_worker()
	## in this example we just use the `response_finished` signal to get the complete response
	## in real-world-use you definitely want to connect `response_updated`, which gives one word at a time
	## the whole interaction feels *much* smoother if you stream the response out word-by-word.
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
