class_name RelationshipManager
extends Node


func update_relationships(event: Event) -> void:
    
    for character_pair in get_pair_array_from_array(event.characters):
        var char1 = character_pair[0]
        var char2 = character_pair[1]
        var current_relationship = char1.relationships[char2] if char2 in char1.relationships else char1.relationships[char2] = Relationship.new()
        
        # ...

func update_relationships(event, current_relationship):
    pass

func get_pair_array_from_array(array: Array) -> Array:
    var pairs = []
    for i in range(array.size()):
        for j in range(i+1, array.size()):
            if i != j:
                pairs.append([array[i], array[j]])
    return pairs