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
   - [3.1 Why CMOS Circuits](#31-why-cmos-circuits)
   - [3.2 CMOS Inverter Analysis (Pre-Layout)](#32-cmos-inverter-analysis-pre-layout)
     - [3.2.1 DC Analysis and Important Design Parameters](#321-dc-analysis-and-important-design-parameters)
     - [3.2.2 DC Parametric Analysis](#322-dc-parametric-analysis)
   - [3.3 Layout Design and Verification](#33-layout-design-and-verification)
4. [Results and Outcomes](#4-results-and-outcomes)

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

### **1.2 PDK Setup**
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
- **Designed test circuits** for **NMOS and PMOS transistors(1.8v models)** using **Xschem**.

<br> **NMOS schematic:** <img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/nmos.png?raw=true"> <br>

<br> **PMOS schematic:** <img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/pmos.png?raw=true"> 
<br>
<br>

- **Performed DC simulations** in **NGSpice** to extract parameters such as **Vth, gm,** and **Rds**.

**NMOS parameters:**
<br>Plot of drain current(Id) vs gate-source voltage(Vgs):
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/Id_vs_Vgs.png?raw=true">

<br>Plot of drain current(Id) vs drain-source voltage(Vds):
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/Id_vs_Vds.png?raw=true"> 

<br>Plot of transconductance(gm):
<br>{gm = derivative(Id) with respect to Vgs at constant Vds}
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/gm.png?raw=true"> 

<br>Plot of drain resistance(Rds):
<br>{Rds = derivative(Id) with respect to Vds at constant Vgs}
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/rds.png?raw=true"> 

<br> **PMOS parameters:**
<br>Plot of drain current(Id) vs gate-source voltage(Vgs):
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/Ids_vs_Vgs.png?raw=true">

<br>Plot of drain current(Id) vs drain-source voltage(Vds):
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/Ids_vs_Vds.png?raw=true"> 

<br>Plot of transconductance(gm):
<br>{gm = derivative(Id) with respect to Vgs at constant Vds}
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/gm.png?raw=true">  

### **2.2 Strong 0 and Weak 1**
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/nmos/S0W1.png?raw=true">

### **2.3 Weak 0 and Strong 1**
<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/mos_characteristics/pmos/W0S1.png?raw=true">
<br>

- **Analyzed the impact** of varying **transistor dimensions** (width and length) on their **electrical characteristics**.

## **3. CMOS Inverter Design and Analysis**

### **3.1 Why CMOS Circuits?**
CMOS (Complementary Metal-Oxide-Semiconductor) circuits are widely used in digital electronics due to several advantages:

✅ **Low Power Consumption** → Power is only consumed during switching.  
✅ **High Noise Margins** → Ensures better signal integrity.  
✅ **Scalability** → Used in advanced process nodes (e.g., **7nm, 5nm**).  
✅ **Better Performance** → Offers higher speed and efficiency.
<br>

📌 **Key Feature:** CMOS circuits use **both NMOS and PMOS transistors**, minimizing power dissipation and improving overall efficiency.

### **3.2 CMOS Inverter Analysis (Pre-Layout)**

A **CMOS Inverter** consists of:
- **PMOS transistor** (Pull-up Network)
- **NMOS transistor** (Pull-down Network)

<br>Inverter schematic:<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/inverter/inverter.png?raw=true">
<br>

> **Working Principle:**  
> - When the input is **low (0V)**, the **PMOS** is **ON** → Output is **high (VDD)**.  
> - When the input is **high (VDD)**, the **NMOS** is **ON** → Output is **low (0V)**.
<br>

#### **3.2.1 DC Analysis and Important Design Parameters**
In **DC Analysis**, we study how the **inverter output voltage (Vout)** varies with the **input voltage (Vin)**.

<br>Plot of vout vs vin:<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/inverter/vout_vs_vin.png?raw=true">
<br>
<br>

📌 **Key Parameters in CMOS Inverter Design:**
1. **Voltage Transfer Characteristics (VTC)** → Defines the switching behavior. <img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/inverter/vtc.png?raw=true">
<br>

2. **Noise Margins (NMH, NML)** → Ensures signal stability. <img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/inverter/noise_margin.png?raw=true">
<br>

3. **Propagation Delay (t_pd)** → Measures the time required for output transition. <img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/inverter/prop_delay.png?raw=true">
<br>

4. **Rise Time and Fall Time** → Measures the time required for switching the signal.  <img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/inverter/rise_time_&_fall_time.png?raw=true">
<br>

##### **📝 SPICE Simulation Example (DC Analysis)**
```spice
M1 vout vin GND GND nmos w=1u l=0.15u
M2 vout vin VDD VDD pmos w=2u l=0.15u
VDD VDD 0 1.8V
Vin vin 0 DC 0 1.8V 0.1V
.dc Vin 0 1.8 0.01
.plot V(vout)
.end
```
🔹 This **SPICE code** runs a **DC sweep analysis**, plotting **Vout vs. Vin** to observe the inverter behavior.
<br>

#### **3.2.2 DC Parametric Analysis**
📌 **Purpose:** To analyze the effect of **VDD variation, transistor sizing, and temperature** on inverter behavior.

🔍 **Key Factors Affecting Performance:**
- **Varying VDD** → Impacts switching threshold voltage.  
- **Transistor Sizing (W/L Ratio)** → Affects driving strength and noise margin.  
- **Temperature Effects** → Changes in mobility and threshold voltage.  

##### **📝 SPICE Simulation Example (DC Parametric Analysis)**
```spice
.param VDD=1.8
M1 vout vin GND GND nmos w=1u l=0.15u
M2 vout vin VDD VDD pmos w=2u l=0.15u
Vin vin 0 DC 0 {VDD} 0.1V
.dc Vin 0 {VDD} 0.01
.plot V(vout)
.end
```
🔹 This simulation **sweeps the input voltage** and observes how different **VDD values** impact **VTC curves**.

### **3.3 Layout Design and Verification**
  - Developed the **physical layout** of the **CMOS inverter** using **Magic VLSI**, adhering to the **design rules** specified in the **SKY130 PDK**.<img src="https://github.com/Shubham210204/CMOS-Inverter-Design-MOSFET-Analysis-using-SKY130-PDK/blob/main/images/inverter/layout.png?raw=true">
<br>

  - Performed **Design Rule Checks (DRC)** within **Magic** to ensure layout compliance.
  - Utilized **Netgen** to execute **Layout Versus Schematic (LVS) checks**, confirming that the **layout accurately represents the schematic design**.

## **4. Results and Outcomes**
- Successfully **extracted key parameters** from **NMOS and PMOS transistors**, providing insight into their **performance within the SKY130 process**.
- Designed and simulated a **CMOS inverter**, achieving satisfactory **Voltage Transfer Characteristics (VTC), noise margins, and propagation delays**.
- Completed the **physical layout** of the inverter, with all **DRC and LVS checks passing**, ensuring **readiness for fabrication**.


