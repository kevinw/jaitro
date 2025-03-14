#!/bin/bash -xe

cc -O2 -c sokol_audio.c -o sokol_audio.o && ar rcs mac/sokol_audio.a sokol_audio.o && rm sokol_audio.o