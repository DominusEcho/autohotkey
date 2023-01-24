#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

SetCapsLockState, AlwaysOff

; Alt+CapsLock
!CapsLock::

	GetKeyState, capsstate, CapsLock, T ;(T indicates a Toggle. capsstate is an arbitrary varible name)
    if capsstate = U
        SetCapsLockState, AlwaysOn
    else
        SetCapsLockState, AlwaysOff
    return

CapsLock & D::
  mouseclick, middle
return

CapsLock & Q::
  Send {Home}
return

CapsLock & E::
  Send {End}
return

CapsLock & Z::
   Send {Media_Play_Pause}
return

; Ctrl+Shift+c Search Selected
^+c::
 Send ^c
 Sleep 50
 Run, https://duckduckgo.com/?q=%clipboard%
return
