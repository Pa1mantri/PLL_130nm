# On chip PLL
This project simulates the designed on chip PLL to determine it's performance characteristics pre-layout.

# Phase Locked Loop
Phase-Locked Loops (PLLs) are critical components in modern electronic systems, widely utilized for frequency synthesis, clock recovery, and signal modulation. Their ability to maintain a stable output frequency that is phase-locked to a reference signal makes them indispensable in applications ranging from telecommunications to consumer electronics.
This PLL design using sky130nm PDK works at supply voltage of 1.8v. The design includes PFD(Phase frequency detector), CP(charge pump), Loop filter, VCO(Voltage Controlled Oscillator) and a Frequency Divider.

# Cirucit Design of a Phase Frequency Detector
D-flipflop based phase frequency detector. This design uses two D-flipflops, an AND gate and an inverter. A and B pulse signals are given as inputs. These two signals are being conpared in phase and frequency. If A leads B, output QA transistions high, while QB transistions low. Similarly, when B leads A, QB transitions high and QA transitions low. If both signals are in phase, neither QA nor QB transitions. When both QA and QB are high, the reset logic through the and and inverter gate resets both the filpflops.

`` .lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt``  It is a library format file. It includes silicon devices models for several process corners. TT models usually contains only the primitives. Standard cells are present in standard cell spice file.

`` .inlcude /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice`` It is a spice netlist containing the definition of the subcircuits of all digital gates.

![Screenshot 2024-11-03 110908](https://github.com/user-attachments/assets/512338ba-d237-4b74-8432-64f4dc7bd4b2)

The disadvantage of using a DFF-based PDF is the dead zone. Every flip-flop has a delay associated with it, which makes it difficult for the PFD to detect any phase or frequency difference between the two signals if the phase or frequency difference is less than the flip-flop delay.

![Screenshot 2024-11-03 111055](https://github.com/user-attachments/assets/7ce21966-6b3f-49c1-9661-a9aff7592b21)

# Circuit Design of a Charge Pump

![Screenshot 2024-11-08 223318](https://github.com/user-attachments/assets/2fa3e3ca-8b3a-43ee-ae44-25cdcfd09d9e)

M1,M2,M3 and M4 transistors are part of Bias network. M6 and M7 acts as switches. M5 and M8 acts as Current Source and sink. ``cp_bisas`` voltage sets the reference current to be used by the M5 and M8 transistors.

**Charge Pump with Loop filter**
![Screenshot 2024-11-08 223712](https://github.com/user-attachments/assets/c67b582f-d444-457a-a232-5fc07acc21dc)

Loop filter consists of resistor in series with a capacitor and a parallel capacitor.

**Simulation of charge pump with loop filter** 
![Screenshot 2024-11-08 223814](https://github.com/user-attachments/assets/505cdd3e-3e1c-4a73-a610-1298ae903643)

# Circuit Design of a VCO

A ring oscillator Voltage-Controlled Oscillator (VCO) consists of odd number of inverting stages connected in a ring configuration, generating an oscillating waveform. By controlling the bias voltage of the transistors within the stages, the oscillation frequency can be adjusted. This VCO serves as the controlled oscillator in the PLL, with its frequency locked to the reference signal through the feedback loop.

![Screenshot 2024-11-08 225957](https://github.com/user-attachments/assets/7a981232-fdbe-42e9-afbc-702d08c31964)

