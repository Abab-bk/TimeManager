extends Node


func a_is_larger_than_b(a:TimeResource, b:TimeResource) -> bool:
    if a.hours > b.hours:
        return true
    elif a.hours == b.hours and a.minutes > b.minutes:
        return true
    elif a.hours == b.hours and a.minutes == b.minutes and a.seconds > b.seconds:
        return true
    else:
        return false


func a_is_smaller_than_b(a:TimeResource, b:TimeResource) -> bool:
    if a.hours < b.hours:
        return true
    elif a.hours == b.hours and a.minutes < b.minutes:
        return true
    elif a.hours == b.hours and a.minutes == b.minutes and a.seconds < b.seconds:
        return true
    else:
        return false


func is_next_day(_current_time:TimeResource) -> bool:
    var next_day_hours:int = _current_time.hours + 24
    var next_day_minutes:int = _current_time.minutes
    var next_day_seconds:int = _current_time.seconds
    
    var next_day:TimeResource = TimeResource.new(next_day_hours, next_day_minutes, next_day_seconds)
    
    return next_day_hours > get_current_time_resource().hours


func is_previous_day(_current_time:TimeResource) -> bool:
    var previous_day_hours:int = _current_time.hours - 24
    var previous_day_minutes:int = _current_time.minutes
    var previous_day_seconds:int = _current_time.seconds
    
    var previous_day:TimeResource = TimeResource.new(previous_day_hours, previous_day_minutes, previous_day_seconds)
    
    return previous_day_hours < get_current_time_resource().hours


func get_current_time_resource() -> TimeResource:
    var _unix_time:int = Time.get_unix_time_from_system()
    
    var hours:int = _unix_time / 3600
    var minutes:int = (_unix_time % 3600) / 60
    var seconds:int = (_unix_time % 3600) % 60
    
    var time_resource:TimeResource = TimeResource.new(hours, minutes, seconds)
    return time_resource


func get_time_resource(_unix_time:int) -> TimeResource:
    var hours:int = _unix_time / 3600
    var minutes:int = (_unix_time % 3600) / 60
    var seconds:int = (_unix_time % 3600) % 60
    
    var time_resource:TimeResource = TimeResource.new(hours, minutes, seconds)
    return time_resource
