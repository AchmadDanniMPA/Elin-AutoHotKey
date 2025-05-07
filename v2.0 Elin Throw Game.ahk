running := false

F6:: {
    global running
    running := !running
    if running {
        SoundBeep(1500)
        SetTimer(pressSpace, 650)   ; If yours doesn't work change this between 650-750
    } else {
        SoundBeep(1000)
        SetTimer(pressSpace, 0)
    }
}

pressSpace() {
    Send("{Space down}")
    Sleep(650)                      ; If yours doesn't work change this between 650-750
    Send("{Space up}")
}

^x::ExitApp
