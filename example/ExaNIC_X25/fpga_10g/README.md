# Verilog Ethernet ExaNIC X25 Example Design

## Introduction

This example design targets the Exablaze ExaNIC X25 FPGA board.

The design by default listens to UDP port 1234 at IP address 192.168.1.128 and
will echo back any packets received.  The design will also respond correctly
to ARP requests.  

*  FPGA: xcku3p-ffvb676-2-e
*  PHY: 10G BASE-R PHY IP core and internal GTY transceiver

## How to build

:warning: *<ins>To build the IP core for the reference design example here
you need a Vivado license</ins>*. In case you don't have it, you can either
fetch it from [here](https://www.xilinx.com/support/licensing_solution_center.html)
or use the the default "30 day evaluation license"  that comes with Vivado default
installation.

Run `make` to build.  Ensure that the Xilinx Vivado toolchain components are
in PATH.  

## How to test

Run make program to program the ExaNIC X25 board with Vivado.  Then run

    netcat -u 192.168.1.128 1234

to open a UDP connection to port 1234.  Any text entered into netcat will be
echoed back after pressing enter.

It is also possible to use hping to test the design by running

    hping 192.168.1.128 -2 -p 1234 -d 1024
