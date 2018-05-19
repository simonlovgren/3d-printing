; End GCODE Block

M400                         ; Finish moves (so that we do not miss the last lines)
M104 S0                      ; Extruder heater off
M140 S0                      ; Heated bed heater off (if you have it)
G91                          ; Relative positioning
G1 E-1 F300                  ; Retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+1 E-5 F9000             ; Move Z up a bit (1mm) and retract filament even more
M400                         ; Finish moves
G90                          ; Absolute positioning
G28 Y0                       ; Move print bed Home position for accurate move to front
G1 F2500 Y190                ; Move build plate to front
M400                         ; Finish moves
M84                          ; Steppers off

; EOF End GCODE Block