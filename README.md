# CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK
Certainly! Here's a structured description for your GitHub repository, aligned with the approach from the referenced project. Since you have your own files and images, you can integrate them accordingly.

---

# **CMOS Inverter Design and Analysis Using SKY130 PDK**

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

## **Repository Structure**
```
├── schematics/       # Contains Xschem schematic files for MOSFET characterization and CMOS inverter design
├── simulations/      # Includes NGSpice simulation scripts and result data
├── layouts/          # Houses Magic VLSI layout files
├── verification/     # Stores DRC and LVS reports
├── images/           # Directory for simulation waveforms, layout screenshots, and other relevant visuals
└── README.md         # Project documentation and overview
```

## **Results and Outcomes**
- Successfully extracted key parameters from NMOS and PMOS transistors, providing insight into their performance within the SKY130 process.
- Designed and simulated a CMOS inverter, achieving satisfactory VTC, noise margins, and propagation delays.
- Completed the physical layout of the inverter, with all DRC and LVS checks passing, ensuring readiness for fabrication.

## **Future Work**
- Extend the methodology to design and analyze more complex digital circuits, such as logic gates and flip-flops.
- Explore the effects of process variations on circuit performance and robustness.
- Implement power analysis to evaluate the inverter's efficiency under different operating conditions.

---

This structured description provides a comprehensive overview of your project, guiding visitors through the design and analysis process of a CMOS inverter using the SKY130 PDK. Incorporate your specific files and images into the respective directories to enhance the repository's clarity and depth. 
