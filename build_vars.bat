@echo off
rem
rem   Define the variables for running builds from this source library.
rem
set srcdir=picprg
set buildname=eusb
call treename_var "(cog)source/picprg/eusb" sourcedir
set fwname=eusb
set pictype=18F2550
set picclass=PIC
set t_parms=
call treename_var "(cog)src/%srcdir%/debug_%fwname%.bat" tnam
make_debug "%tnam%"
call "%tnam%"
