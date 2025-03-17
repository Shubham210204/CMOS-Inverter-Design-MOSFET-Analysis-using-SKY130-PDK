## **Project Overview**
This project focuses on the design and analysis of a CMOS inverter utilizing the open-source SKY130 Process Design Kit (PDK). The objective is to understand the fundamental behavior of NMOS and PMOS transistors and their integration into a CMOS inverter circuit.

## **Objectives**
- Characterize NMOS and PMOS transistors to extract key parameters such as threshold voltage (Vth), transconductance (gm), and drain-to-source resistance (Rds).
- Design and simulate a CMOS inverter to evaluate its performance metrics, including voltage transfer characteristics (VTC), noise margins, and propagation delay.
- Develop the physical layout of the CMOS inverter, ensuring compliance with design rules and verifying the layout against the schematic.

## **Design and Simulation Flow**

### **1. MOSFET Characterization**
- **Tools Used:** Xschem, NGSpice
- **Description:**
  - Designed test circuits for NMOS and PMOS transistors using Xschem.
  - Performed DC simulations in NGSpice to extract parameters such as Vth, gm, and Rds.
  - Analyzed the impact of varying transistor dimensions (width and length) on their electrical characteristics.

### **2. CMOS Inverter Schematic Design and Simulation**
- **Tools Used:** Xschem, NGSpice
- **Description:**
  - Created the schematic of the CMOS inverter in Xschem, integrating the characterized NMOS and PMOS transistors.
  - Conducted transient and DC simulations in NGSpice to obtain the VTC, calculate noise margins, and assess propagation delays.
  - Optimized transistor sizing to achieve desired switching thresholds and performance.

### **3. Layout Design and Verification**
- **Tools Used:** Magic VLSI, Netgen
- **Description:**
  - Developed the physical layout of the CMOS inverter using Magic VLSI, adhering to the design rules specified in the SKY130 PDK.
  - Performed Design Rule Checks (DRC) within Magic to ensure layout compliance.
  - Utilized Netgen to execute Layout Versus Schematic (LVS) checks, confirming that the layout accurately represents the schematic design.


## **Results and Outcomes**
- Successfully extracted key parameters from NMOS and PMOS transistors, providing insight into their performance within the SKY130 process.
- Designed and simulated a CMOS inverter, achieving satisfactory VTC, noise margins, and propagation delays.
- Completed the physical layout of the inverter, with all DRC and LVS checks passing, ensuring readiness for fabrication.
