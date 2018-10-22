@echo off
rem
rem   Build the firmware from this source directory.
rem
setlocal
call build_fwinit

call src_aspic %srcdir% %buildname%_ad
call src_aspic %srcdir% %buildname%_adda
call src_aspic %srcdir% %buildname%_cmd
call src_aspic %srcdir% %buildname%_core12
call src_aspic %srcdir% %buildname%_f16
call src_aspic %srcdir% %buildname%_f16b
call src_aspic %srcdir% %buildname%_f16e
call src_aspic %srcdir% %buildname%_f18
call src_aspic %srcdir% %buildname%_f30
call src_aspic %srcdir% %buildname%_init
call src_aspic %srcdir% %buildname%_intr
call src_aspic %srcdir% %buildname%_led
call src_aspic %srcdir% %buildname%_main
call src_aspic %srcdir% %buildname%_mulu
call src_aspic %srcdir% %buildname%_name
call src_aspic %srcdir% %buildname%_op
call src_aspic %srcdir% %buildname%_port
call src_aspic %srcdir% %buildname%_prom
call src_aspic %srcdir% %buildname%_regs
call src_aspic %srcdir% %buildname%_sert
call src_aspic %srcdir% %buildname%_stack
call src_aspic %srcdir% %buildname%_task
call src_aspic %srcdir% %buildname%_uart
call src_aspic %srcdir% %buildname%_usb
call src_aspic %srcdir% %buildname%_usb0
call src_aspic %srcdir% %buildname%_vdd
call src_aspic %srcdir% %buildname%_vpp
call src_aspic %srcdir% %buildname%_wait

call src_libpic %srcdir% %buildname%

call src_aspic %srcdir% %buildname%_strt
call src_expic %srcdir% %buildname%

rem   Do SRC_GET on files just so that promotion is performed when enabled.
rem
src_get %srcdir% doc.txt
src_get %srcdir% build.bat
