#**CMOS Inverter Design & MOSFET Analysis using SKY130 PDK**

## **Project Overview**
This project focuses on the design and analysis of a CMOS inverter utilizing the open-source SKY130 Process Design Kit (PDK). The objective is to understand the fundamental behavior of NMOS and PMOS transistors and their integration into a CMOS inverter circuit.

## **Objectives**
- Characterize NMOS and PMOS transistors to extract key parameters such as threshold voltage (Vth), transconductance (gm), and drain-to-source resistance (Rds).
- Design and simulate a CMOS inverter to evaluate its performance metrics, including voltage transfer characteristics (VTC), noise margins, and propagation delay.
- Develop the physical layout of the CMOS inverter, ensuring compliance with design rules and verifying the layout against the schematic.

## **Design and Simulation Flow**

### **1. MOSFET Characterization**
- **Tools Used:** Xschem, NGSpice
- **Description:**
  - Designed test circuits for NMOS and PMOS transistors using Xschem.

nmos schematic(1.8v transistor model):
![nmos](https://github.com/user-attachments/assets/9d480514-c689-4462-950c-b2d4755d6ae5)

<br>
  - Performed DC simulations in NGSpice to extract parameters such as Vth, gm, and Rds.

Plot of drain current(Id) vs Vgs at constant Vds(1.8v):
![Id_vs_Vgs](https://github.com/user-attachments/assets/60c330c9-dae1-4f22-aef2-00e4cda62eaf)

Plot of drain current(Id) vs Vds at different values of Vgs:
![Id_vs_Vds](https://github.com/user-attachments/assets/7bf9ccd8-26db-4638-8d82-b17848e9be5d)

Plot of transconductance(gm):<br>
{gm = derivative of Id with respect to Vgs at constant Vds}
![gm](https://github.com/user-attachments/assets/07cf63ea-f41d-45eb-8347-688351cc95b5)

Plot of drainresistance(rds):<br>
{rds = derivative of Id with respect to Vds at constant Vgs}
![rds](https://github.com/user-attachments/assets/452e19b3-cfb8-4f59-92b5-fef218f563c7)

nmos as strong 0 and week 1:
![S0W1](https://github.com/user-attachments/assets/ea80825a-68fe-4997-bf48-e5a71814f5e9)
<br>

## **Similarly for pmos**

pmos schematic(1.8v transistor model):
![pmos](https://github.com/user-attachments/assets/e14df906-f64f-4eeb-a7c4-defd9040fe59)

Plot of drain current(Id) vs Vgs at constant Vds(1.8v):
![Ids_vs_Vgs](https://github.com/user-attachments/assets/0da45123-95d2-4058-a785-602f98e2af6e)

Plot of drain current(Id) vs Vds at different values of Vgs:
![Ids_vs_Vds](https://github.com/user-attachments/assets/72ff5ada-b25a-41f6-b86c-fdc9d63162c8)

Plot of transconductance(gm):<br>
{gm = derivative of Id with respect to Vgs at constant Vds}
![gm](https://github.com/user-attachments/assets/77dca3fe-619a-460f-ab3d-110780ddc2f9)

pmos as week 0 and strong 1:
![W0S1](https://github.com/user-attachments/assets/e3ec926a-acd6-43d2-a09e-d62be515916d)

<br>
  - Analyzed the impact of varying transistor dimensions (width and length) on their electrical characteristics.
<br>

### **2. CMOS Inverter Schematic Design and Simulation**
- **Tools Used:** Xschem, NGSpice
- **Description:**
  - Created the schematic of the CMOS inverter in Xschem, integrating the characterized NMOS and PMOS transistors.

cmos inverter schematic:
![inverter](https://github.com/user-attachments/assets/d5abeaa2-9e0a-477a-aa83-5871a042b096)

<br>
  - Conducted transient and DC simulations in NGSpice to obtain the VTC, calculate noise margins, and assess propagation delays.

Voltage transfer characteristics:
![vtc](https://github.com/user-attachments/assets/25ac1a5e-106a-4d45-a86e-120de1f09448)

Transient analysis:
![vout_vs_vin](https://github.com/user-attachments/assets/7c3ac565-2be3-4e1c-a1d2-03b1992759c7)

Rise time and Fall time analysis:
![rise_time_ _fall_time](https://github.com/user-attachments/assets/22092259-e953-42a0-b12b-61ba14134f04)

Delay analysis(propagation delay):
![prop_delay](https://github.com/user-attachments/assets/23f27680-e5c5-4d0d-8971-379426836312)

Noise analysis:
![noise_margin](https://github.com/user-attachments/assets/3c8b2cbe-4c19-494a-9728-c73fc2b393fa)

<br>
  - Optimized transistor sizing to achieve desired switching thresholds and performance.
<br>

### **3. Layout Design and Verification**
- **Tools Used:** Magic VLSI, Netgen
- **Description:**
  - Developed the physical layout of the CMOS inverter using Magic VLSI, adhering to the design rules specified in the SKY130 PDK.
  - Performed Design Rule Checks (DRC) within Magic to ensure layout compliance.
  - Utilized Netgen to execute Layout Versus Schematic (LVS) checks, confirming that the layout accurately represents the schematic design.
<br><br>
Final layout of cmos inverter:
![layout](https://github.com/user-attachments/assets/446c5726-0211-424b-ab18-c1fdb88eeba7)
<br><br>

## **Results and Outcomes**
- Successfully extracted key parameters from NMOS and PMOS transistors, providing insight into their performance within the SKY130 process.
- Designed and simulated a CMOS inverter, achieving satisfactory VTC, noise margins, and propagation delays.
- Completed the physical layout of the inverter, with all DRC and LVS checks passing, ensuring readiness for fabrication.<br><br>
Tools Used:
Xschem | NGSpice | Magic VLSI | Netgen | SKY130 PDK
