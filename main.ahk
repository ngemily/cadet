; Recommended, but not required:
SendMode Input
#NoEnv
#SingleInstance force

#Include <dual/dual>
dual := new Dual({delay: 40, timeout: -1, doublePress: 200})

#Include <dual/defaults>

#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.

#If

; Note the `*`! It allows you to press ScrollLock even if a modifier is stuck.
*ScrollLock::dual.reset()
