# TimeManager

A time Plugin for Godot.

## Why

I am developing a mobile game using Godot. As you know, mobile games often require features like seven-day login rewards and daily quests.

To implement these features, we need to perform time calculations. However, I couldn't find any existing plugins that could handle these functionalities...

That's why I created this plugin.

## How

* Download and install the plugin.

* Activate the plugin, which will add an Autoload: TimeManager.

* Use

## Usage

Its sImple，see code：

```gdscript
extends Panel

@export var current_day:int

@onready var title_label:Label = %TitleLabel
@onready var check_btn:Button = %CheckBtn

var target_time:TimeResource = TimeResource.new(0, 0, 0)

func _ready() -> void:
    check_btn.pressed.connect(func():
        var _current_time:TimeResource = TimeManager.get_current_time_resource() as TimeResource

        if _current_time.is_larger_than_time(target_time):
            print("Sign-in successful.")
            return
        print("Cannot sign-in yet, as the time has not arrived.")
        )

    title_label.text = "Day %s" % str(current_day)
    target_time = TimeManager.get_current_time_resource() as TimeResource

    for i in current_day:
        target_time = target_time.get_next_day_time()

```

## Why

我使用 Godot 开发手机游戏，我们知道，手游里要有七天签到、每日任务等等。

这就需要我们计算时间，但是，我发现没有一个插件可以做到这些...

所以我制作了这个插件。

## How

- 下载，安装。

- 激活插件，插件会为你添加一个 Autoload：TimeManager

- 使用

## Usage

很简单，看代码：

```gdscript
extends Panel

@export var current_day:int

@onready var title_label:Label = %TitleLabel
@onready var check_btn:Button = %CheckBtn

var target_time:TimeResource = TimeResource.new(0, 0, 0)

func _ready() -> void:
    check_btn.pressed.connect(func():
        var _current_time:TimeResource = TimeManager.get_current_time_resource() as TimeResource

        if _current_time.is_larger_than_time(target_time):
            print("签到成功")
            return
        print("时间不到，无法签到")
        )

    title_label.text = "第 %s 天" % str(current_day)
    target_time = TimeManager.get_current_time_resource() as TimeResource

    for i in current_day:
        target_time = target_time.get_next_day_time()

```
