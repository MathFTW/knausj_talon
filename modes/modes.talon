#defines the various mode commands
# mode: all
not mode: user.presentation

-
# welcome back:
#     user.mouse_wake()
#     user.history_enable()
#     user.talon_mode()
sleep all:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
    app.notify("Talon Sleep all")
talon sleep: 
    speech.disable()
    app.notify("Talon Sleep")
talon wake up: 
    speech.enable()
    app.notify("Talon wake up")
# begin: these commands are really for windows & mac with Dragon.
# dragon mode: user.dragon_mode()
# talon mode: user.talon_mode()
# end: these commands are really for windows & mac on Dragon.
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    app.notify("Dictation mode")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    app.notify("Command mode")
    mode.enable("command")

^presentation mode$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    app.notify("Presentation Mode")
    mode.enable("user.presentation")
    

