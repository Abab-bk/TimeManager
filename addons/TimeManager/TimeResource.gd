class_name TimeResource extends Resource

var hours:int = 0
var minutes:int = 0
var seconds:int = 0

func _init(_hours:int, _minutes:int, _seconds:int):
    hours = _hours
    minutes = _minutes
    seconds = _seconds


func get_time_string() -> String:
    var time_string:String = ""
    
    time_string += str(hours) + ":"
    time_string += str(minutes) + ":"
    time_string += str(seconds)
    
    return time_string


func get_next_day_time() -> TimeResource:
    var next_day_hours:int = hours + 24
    var next_day_minutes:int = minutes
    var next_day_seconds:int = seconds
    
    var next_day:TimeResource = TimeResource.new(next_day_hours, next_day_minutes, next_day_seconds)
    return next_day


func get_previous_day_time() -> TimeResource:
    var previous_day_hours:int = hours - 24
    var previous_day_minutes:int = minutes
    var previous_day_seconds:int = seconds
    
    var previous_day:TimeResource = TimeResource.new(previous_day_hours, previous_day_minutes, previous_day_seconds)
    
    return previous_day


func is_larger_than_time(_time:TimeResource) -> bool:
    if hours > _time.hours:
        return true
    elif hours == _time.hours and minutes > _time.minutes:
        return true
    elif hours == _time.hours and minutes == _time.minutes and seconds > _time.seconds:
        return true
    else:
        return false


func is_smaller_than_time(_time:TimeResource) -> bool:
    if hours < _time.hours:
        return true
    elif hours == _time.hours and minutes < _time.minutes:
        return true
    elif hours == _time.hours and minutes == _time.minutes and seconds < _time.seconds:
        return true
    else:
        return false
