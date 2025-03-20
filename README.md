# **CMOS Inverter Design & MOSFET Analysis using SKY130 PDK**

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
<br>

## **1. Tool and PDK Setup**

### **1.1 Tools Setup**
For designing and simulating our **CMOS Inverter**, we use the following tools:

✅ **Spice Netlist Simulation** → `Ngspice`  
✅ **Layout Design & DRC** → `Magic VLSI`  
✅ **LVS (Layout vs. Schematic)** → `Netgen`  
✅ **Schematic Capture** → `Xschem`  

> **⚠️ Note:** Make sure all necessary libraries for these tools are installed on your system.  
> 🔹 At least **50GB storage** and **8GB RAM** are recommended.
<br>

### **1.1.1 Ngspice**
**Ngspice** is an **open-source SPICE simulator** for electronic circuits.  
🔗 **[Ngspice Reference Manual](http://ngspice.sourceforge.net/docs.html)**  

### **Installation Steps**
```bash
sudo apt install -y ngspice
ngspice -v #verify install
```
<br>

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
<br>

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
<br>

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
<br>

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
<br><br>

## **2. Analysis of MOSFET Models**

### **2.1 General MOS Analysis**
