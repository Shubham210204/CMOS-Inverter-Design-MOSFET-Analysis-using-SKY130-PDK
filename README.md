# **CMOS Inverter Design & MOSFET Analysis using SKY130 PDK**

## **Project Overview**  
This project focuses on the **design** and **analysis** of a **CMOS inverter** utilizing the open-source **SKY130 Process Design Kit (PDK)**. The objective is to understand the fundamental behavior of **NMOS** and **PMOS** transistors and their integration into a **CMOS inverter circuit**.  

## **Objectives**  
- **Characterize NMOS and PMOS transistors** to extract key parameters such as **threshold voltage (Vth), transconductance (gm),** and **drain-to-source resistance (Rds)**.  
- **Design and simulate a CMOS inverter** to evaluate its performance metrics, including **voltage transfer characteristics (VTC), noise margins,** and **propagation delay**.  
- **Develop the physical layout** of the **CMOS inverter**, ensuring **compliance with design rules** and verifying the **layout against the schematic**.

## **Contents**
1. [Tool and PDK Setup](#1-tool-and-pdk-setup)
   - [1.1 Tools Setup](#11-tools-setup)
   - [1.2 PDK Setup](#12-pdk-setup)
2. [Analysis of MOSFET Models](#2-analysis-of-mosfet-models)
   - [2.1 General MOS Analysis](#21-general-mos-analysis)
   - [2.2 Strong 0 and Weak 1](#22-strong-0-and-weak-1)
   - [2.3 Weak 0 and Strong 1](#23-weak-0-and-strong-1)
3. [CMOS Inverter Design and Analysis](#3-cmos-inverter-design-and-analysis)
   - [3.1 CMOS Inverter Analysis (Pre-Layout)](#32-cmos-inverter-analysis-pre-layout)
     - [3.1.1 DC Analysis and Important Design Parameters](#321-dc-analysis-and-important-design-parameters)
     - [3.1.2 DC Parametric Analysis](#322-dc-parametric-analysis)

📌 **Section 1 has been referenced from VSDOPEN21_BGR Readme file**

## **1. Tool and PDK Setup**

### **1.1 Tools Setup**
For designing and simulating our **CMOS Inverter**, we use the following tools:

✅ **Spice Netlist Simulation** → `Ngspice`  
✅ **Layout Design & DRC** → `Magic VLSI`  
✅ **LVS (Layout vs. Schematic)** → `Netgen`  
✅ **Schematic Capture** → `Xschem`  

> **⚠️ Note:** Make sure all necessary libraries for these tools are installed on your system.  
> 🔹 At least **50GB storage** and **8GB RAM** are recommended.

### **1.1.1 Ngspice**
**Ngspice** is an **open-source SPICE simulator** for electronic circuits.  
🔗 **[Ngspice Reference Manual](http://ngspice.sourceforge.net/docs.html)**  

### **Installation Steps**
```bash
sudo apt install -y ngspice
ngspice -v #verify install
```

### **1.1.2 Magic VLSI**
**Magic** is a **VLSI layout tool** for designing IC layouts.  

### **Installation Steps**
1. Follow the official installation guide at: [OpenCircuitDesign](http://opencircuitdesign.com/magic/)  
2. Recommended configuration options:
```bash
./configure --enable-sky130-pdk
make
sudo make install
```

### **1.1.3 Netgen**
**Netgen** is a tool for comparing netlists, a process known as **LVS (Layout vs. Schematic)**.  
This is an **important step in the VLSI design flow**, ensuring that the **schematic and layout** match.

### **Installation Steps**
```bash
git clone git://opencircuitdesign.com/netgen
cd netgen
./configure
make
sudo make install
```

### **1.1.4 Xschem**
**Xschem** is a **schematic capture tool** used for designing electronic circuits interactively.  
It provides a **graphical interface** and generates netlists for simulation.

### **Installation Steps**
```bash
git clone https://github.com/StefanSchippers/xschem.git
cd xschem
./configure
make
sudo make install
```

## **1.2 PDK Setup**
A **Process Design Kit (PDK)** contains libraries, rules, and models for **IC design and fabrication**.
We will use **Google's SKY130 (130nm) PDK**.

### **Installation Steps**
```bash
git clone https://github.com/RTimothyEdwards/open_pdks.git
cd open_pdks
./configure --enable-sky130-pdk
make
sudo make install
```

📌 **Here ends the Tools and PDK setup**

## **2. Analysis of MOSFET Models**

### **2.1 General MOS Analysis**  
- **Designed test circuits** for **NMOS and PMOS transistors** using **Xschem**.
<br> **NMOS schematic:** <img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/nmos.png?raw=true"> <br>
<br> **PMOS schematic:** <img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/pmos.png?raw=true"> <br>
- **Performed DC simulations** in **NGSpice** to extract parameters such as **Vth, gm,** and **Rds**.
<br> **NMOS parameters:**
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/Id_vs_Vgs.png?raw=true"> <br>
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/Id_vs_Vds.png?raw=true"> <br>
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/gm.png?raw=true"> <br>
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/rds.png?raw=true"> <br>
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/strong0_week1/S0W1.png?raw=true"> <br>
<br> **PMOS parameters:**
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/Ids_vs_Vgs.png?raw=true"> <br>
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/Ids_vs_Vds.png?raw=true"> <br>
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/gm.png?raw=true"> <br>
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/week0_strong1/W0S1.png?raw=true"> <br>
- **Analyzed the impact** of varying **transistor dimensions** (width and length) on their **electrical characteristics**.
