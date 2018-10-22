@echo off
rem
rem   Define the shell variables for running builds from this source library.
rem
set srcdir=picprg
set buildname=eusb
call treename_var "(cog)source/%srcdir%/%buildname%" sourcedir
set fwname=eusb
set pictype=18F2550
set picclass=PIC
