@echo off
setlocal

set CC=cl /nologo /O2 /I. /Z7 /c
set LD=lib /nologo
set RM=del

if not exist "win" mkdir win

%CC% sokol_audio.c && %LD% sokol_audio.obj /OUT:win/sokol_audio.lib && %RM% sokol_audio.obj
