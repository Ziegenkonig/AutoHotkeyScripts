toggle = 0
#MaxThreadsPerHotkey 2

F7::
Toggle := !Toggle
While Toggle{
Click
sleep 300000
}
return