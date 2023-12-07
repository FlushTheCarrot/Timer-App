extends Control

var NUMBER_ : int = 0
var DEBUG_MODE : bool = true
@onready var Points_Display = $DisplayTime
@onready var Main_Timer : Object = $MainTimer

func _ready() -> void:
    if (DEBUG_MODE): print("Debug_Mode : ACTIVE")


func _process(delta: float) -> void:
     if (NUMBER_ < 1):
        NUMBER_ = 1


func _on_add_time_toggled(toggled_on:bool) -> void:
    Main_Timer.wait_time = NUMBER_
    Points_Display.text = str(NUMBER_)
    NUMBER_ += 1
    if (DEBUG_MODE): print(NUMBER_)



func _on_remove_time_toggled(toggled_on:bool) -> void:
    Main_Timer.wait_time = NUMBER_
    Points_Display.text = str(NUMBER_)
    NUMBER_ -= 1
    if (DEBUG_MODE): print(NUMBER_)












