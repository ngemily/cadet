; Recommended, but not required:
SendMode Input
#NoEnv
#SingleInstance force

#Include <dual/dual>
dual := new Dual({delay: 40, timeout: 300, doublePress: 200})

#Include <dual/defaults>

#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.

; Left-ctrl on caps lock, dual with Escape
*LCtrl::
*LCtrl UP::dual.combine(A_ThisHotkey, "Escape")

; Right-ctrl on Enter
*Enter::
*Enter UP::dual.combine("RCtrl", A_ThisHotkey)

; Right click with AppsKey
; Performs paste in babun terminal
AppsKey::
	SendEvent {Blind}{RButton down}
	KeyWait AppsKey  ; Prevents keyboard auto-repeat from repeating the mouse click.
	SendEvent {Blind}{RButton up}

#If

; Note the `*`! It allows you to press a key even if a modifier is stuck.
; Reset keyboard modifier state
*PrintScreen::dual.reset()
