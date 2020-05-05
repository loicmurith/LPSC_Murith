connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys Video 210276724184B"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys Video 210276724184B"} -index 0
dow /home/jo/Documents/Hepia/Cours/LPSC/Mandelbrot/ips/vivado/ublaze/2018.2/ublaze.sdk/TestApp/Debug/TestApp.elf
bpadd -addr &main
