@echo off
del kr02_32.bin
C:\Dev\retroassembler\retroassembler.exe kr02_32.asm
fc /b kr02_32.bin KR02_32O.BIN
