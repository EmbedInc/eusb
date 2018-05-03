@echo off
rem
rem   BUILD_EUSB_EXPIC
rem
rem   Build the EUSB firmware from the PICPRG library.
rem
setlocal

call treename_var (cog)source/pic/fwtype.all tnam
if exist "%tnam%" (
  call src_get pic fwtype.all
  )
call src_get_ins_aspic pic adda
call src_get_ins_aspic pic fwtype
call src_get_ins_aspic pic mulu
call src_get_ins_aspic pic port
call src_get_ins_aspic pic regs
call src_get_ins_aspic pic stack
call src_get_ins_aspic pic std
call src_get_ins_aspic pic std_def
call src_get_ins_aspic pic task
call src_get_ins_aspic pic task_setup
call src_get_ins_aspic pic usb
call src_get_ins_aspic pic usb0

call src_ins_aspic picprg eusblib -set make_version
call src_get_ins_aspic picprg eusb
call src_get_ins_aspic picprg eusb_usb
call src_get_ins_aspic picprg eusb_usb0
call src_get_ins_aspic picprg picprg
call src_get_ins_aspic picprg picprg_cmd
call src_get_ins_aspic picprg picprg_core12
call src_get_ins_aspic picprg picprg_f16
call src_get_ins_aspic picprg picprg_f16e
call src_get_ins_aspic picprg picprg_f18
call src_get_ins_aspic picprg picprg_f30
call src_get_ins_aspic picprg picprg_name
call src_get_ins_aspic picprg picprg_op
call src_get_ins_aspic picprg picprg_prom
call src_get_ins_aspic picprg picprg_sert

call src_aspic picprg eusb_ad
call src_aspic picprg eusb_adda
call src_aspic picprg eusb_cmd
call src_aspic picprg eusb_core12
call src_aspic picprg eusb_f16
call src_aspic picprg eusb_f16e
call src_aspic picprg eusb_f18
call src_aspic picprg eusb_f30
call src_aspic picprg eusb_init
call src_aspic picprg eusb_intr
call src_aspic picprg eusb_led
call src_aspic picprg eusb_main
call src_aspic picprg eusb_mulu
call src_aspic picprg eusb_name
call src_aspic picprg eusb_op
call src_aspic picprg eusb_port
call src_aspic picprg eusb_prom
call src_aspic picprg eusb_regs
call src_aspic picprg eusb_sert
call src_aspic picprg eusb_stack
call src_aspic picprg eusb_task
call src_aspic picprg eusb_uart
call src_aspic picprg eusb_usb
call src_aspic picprg eusb_usb0
call src_aspic picprg eusb_vdd
call src_aspic picprg eusb_vpp
call src_aspic picprg eusb_wait

call src_libpic picprg eusb

call src_aspic picprg eusb_strt
call src_expic picprg eusb
