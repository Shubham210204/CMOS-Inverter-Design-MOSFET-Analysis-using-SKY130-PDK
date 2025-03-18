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


  - Performed DC simulations in NGSpice to extract parameters such as Vth, gm, and Rds.

Plot of drain current(Id) vs Vgs at constant Vds(1.8v):
![Id_vs_Vgs](https://github.com/user-attachments/assets/60c330c9-dae1-4f22-aef2-00e4cda62eaf)

Plot of drain current(Id) vs Vds at different values of Vgs:
![Id_vs_Vds](https://github.com/user-attachments/assets/7bf9ccd8-26db-4638-8d82-b17848e9be5d)

Plot of transconductance(gm):
{gm = derivative of Id with respect to Vgs at constant Vds}
![gm](https://github.com/user-attachments/assets/07cf63ea-f41d-45eb-8347-688351cc95b5)

Plot of drainresistance(rds):
{rds = derivative of Id with respect to Vds at constant Vgs}
![rds](https://github.com/user-attachments/assets/2104603a-2d9d-4ba4-812c-d66a8ce8f195)


  - Analyzed the impact of varying transistor dimensions (width and length) on their electrical characteristics.

### **2. CMOS Inverter Schematic Design and Simulation**
- **Tools Used:** Xschem, NGSpice
- **Description:**
  - Created the schematic of the CMOS inverter in Xschem, integrating the characterized NMOS and PMOS transistors.
  - Conducted transient and DC simulations in NGSpice to obtain the VTC, calculate noise margins, and assess propagation delays.
  - Optimized transistor sizing to achieve desired switching thresholds and performance.

### **3. Layout Design and Verification**
- **Tools Used:** Magic VLSI, Netgen
- **Description:**
  - Developed the physical layout of the CMOS inverter using Magic VLSI, adhering to the design rules specified in the SKY130 PDK.
  - Performed Design Rule Checks (DRC) within Magic to ensure layout compliance.
  - Utilized Netgen to execute Layout Versus Schematic (LVS) checks, confirming that the layout accurately represents the schematic design.


## **Results and Outcomes**
- Successfully extracted key parameters from NMOS and PMOS transistors, providing insight into their performance within the SKY130 process.
- Designed and simulated a CMOS inverter, achieving satisfactory VTC, noise margins, and propagation delays.
- Completed the physical layout of the inverter, with all DRC and LVS checks passing, ensuring readiness for fabrication.
