**The aim of this project is to learn how to configure a reconfigurable hardware platform and program it to do a specific job, and to do that the below tasks emerged during the design process:**

-	Realizing the idea of implementing a FIR filter using the hardware.
-	Configure a codec chip which is connected to the FPGA chip and initialize it in DSP mode.
-	Receiving streams of serial data from the codec chip and convert them to parallel data in a bus, and send them to another block inside the FPGA.
-	Sending back streams of serial data from the FPGA to the codec chip.
-	Dealing with an arithmetic operations and finding an optimum way to reduce the computational cost during the digital processing inside the FPGA.
-	Simulating a code and see the output for a particular block, by using (Modelsim software).
-	Debugging the system and observe the code mistakes during the real time operation, by using (SignalTap).
