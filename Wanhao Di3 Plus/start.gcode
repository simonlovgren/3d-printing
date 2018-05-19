; Start GCODE Block

G21             ; Metric values
G90             ; Absolute positioning
M82             ; Set extruder to absolute mode
M107            ; Start with the fan off
G28 X0 Y0       ; Move X/Y to min endstops
G28 Z0          ; Move Z to min endstops
G1 Z15.0 F9000  ; Move the extruder up 15mm
G92 E0          ; Zero the extruded length
G1 F200 E8      ; Extrude 8mm of feed stock (3->8 compensating for -5 in end code)
G92 E0          ; Zero the extruded length again
G1 F9000        ; Set feed rate
; Put printing message on LCD screen
M117 Printing...

; EOF Start GCODE Block