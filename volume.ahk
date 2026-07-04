; =============================================================================
; Projeto: Controle de Volume
; Copyright (c) 2026 Guilherme Fachin
;
; Licensed under the Fachin Software License (FSL) Version 0.9 – Draft
; See the LICENSE file for details.
; =============================================================================

#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook
Persistent
#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook
Persistent

; ---------- Executar como Administrador ----------
if !A_IsAdmin {
    Run '*RunAs "' A_ScriptFullPath '"'
    ExitApp
}

; ---------- Atalhos de volume ----------
; ScrollLock → Muta / desmuta
ScrollLock::SoundSetMute -1

; Pause/Break → Diminui volume
Pause:: {
    vol := SoundGetVolume()
    SoundSetVolume Max(vol - 1, 0)
}

; Insert → Aumenta volume
Insert:: {
    vol := SoundGetVolume()
    SoundSetVolume Min(vol + 1, 100)
}




