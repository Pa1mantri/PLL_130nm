# On chip PLL
This project simulates the designed on chip PLL to determine it's performance characteristics pre-layout.

# Phase Locked Loop
Phase-Locked Loops (PLLs) are critical components in modern electronic systems, widely utilized for frequency synthesis, clock recovery, and signal modulation. Their ability to maintain a stable output frequency that is phase-locked to a reference signal makes them indispensable in applications ranging from telecommunications to consumer electronics.
This PLL design using sky130nm PDK works at supply voltage of 1.8v. The design includes PFD(Phase frequency detector), CP(charge pump), Loop filter, VCO(Voltage Controlled Oscillator) and a Frequency Divider.

# Cirucit Design of a Phase Frequency Detector
D-flipflop based phase frequency detector. This design uses two D-flipflops, an AND gate and an inverter. A and B pulse signals are given as inputs. These two signals are being conpared in phase and frequency. If A leads B, output QA transistions high, while QB transistions low. Similarly, when B leads A, QB transitions high and QA transitions low. If both signals are in phase, neither QA nor QB transitions. When both QA and QB are high, the reset logic through the and and inverter gate resets both the filpflops.

![Screenshot 2024-11-03 110908](https://github.com/user-attachments/assets/512338ba-d237-4b74-8432-64f4dc7bd4b2)

![Screenshot 2024-11-03 111055](https://github.com/user-attachments/assets/7ce21966-6b3f-49c1-9661-a9aff7592b21)

# Circuit Design of a Charge Pump

