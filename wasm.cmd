@echo off
C:\dev\wla_dx_v10.6_Win64\wla-8080.exe -i -v2 -D MEMSIZE=8000h -o rk86-monitor.o rk86-monitor.asm
C:\dev\wla_dx_v10.6_Win64\wlalink.exe -r -v link.cfg rk86-monitor.bin
