### **110 Sequence Detector using UVM & Physical Design**  

#### **Overview**  
This project implements a **110 sequence detector** using **Verilog and SystemVerilog with UVM** for verification. The UVM testbench was developed and executed in **EDA Playground**. The physical design flow was completed using open-source EDA tools, including **OpenROAD, Klayout, and Yosys**.  

---

### **Implementation Details**  

#### **1️⃣ Sequence Detector (110)**
- Designed in **Verilog** to detect the "110" sequence.  
- Implemented a **Moore Finite State Machine (FSM)** for detection.  
- Simulated and verified using **UVM (Universal Verification Methodology).**  

#### **2️⃣ Universal Verification Methodology (UVM)**
- Developed a **UVM testbench** in **EDA Playground**.  
- Testbench includes **generator, driver, monitor, scoreboard, and agent**.  
- Simulation performed in **EDA Playground** to validate the sequence detector.  

#### **3️⃣ Physical Design**
- **Logic synthesis** performed using **Yosys**.  
- **Floorplanning, placement, clock tree synthesis, and routing** done using **OpenROAD**.  
- **Final layout visualization** in **KLayout**.  
- Design constraints specified in **SDC (Synopsys Design Constraints)** format.  

---

### **Tools Used**  
| Tool          | Purpose |  
|--------------|---------|  
| **EDA Playground**  | Running UVM testbench simulations |  
| **OpenROAD**       | Complete physical design flow |  
| **Yosys**         | RTL synthesis |  
| **KLayout**       | Layout visualization |  

---
### **Project Result Screenshot's**  

1. **Verilog Design & Testbench Code with Simulation Output**  
   *(Screenshot showing the Verilog code for the sequence detector, testbench, and its output in EDA Playground.)*
   
![image](https://github.com/user-attachments/assets/880deff1-1402-4292-b7bc-c1c9e44960eb)

2. **Waveform Output of the Sequence Detector**  
   *(Graphical waveform representation of the sequence detector's output, showing how the "110" sequence is detected.)*
   
![image](https://github.com/user-attachments/assets/0f1cde94-9bdb-4ce5-a32b-1226685e009d)

3. **Physical Design in OpenROAD**  
   *(Screenshot of the sequence detector's project in OpenROAD, showing floorplanning, placement, and routing.)*
   
![image](https://github.com/user-attachments/assets/be7f588e-831a-45f8-a58d-1842dcac9e71)

4. **Final Layout of the Sequence Detector**        
   *(Final GDS layout of the sequence detector visualized in KLayout, showing the completed physical design.)*
   
![image](https://github.com/user-attachments/assets/84fc1c85-27b9-4116-9851-6065d6bc55c6)

### **How to Run the Project**  

#### **Running the UVM Testbench**  
1. Open **[EDA Playground](https://www.edaplayground.com/)**.  
2. Upload the **UVM testbench files** from the `/UVM/` folder.  
3. Select **UVM simulator** and run the testbench.  

#### **Running the Physical Design Flow**  
1. Clone the repository:  
   ```bash
   git clone https://github.com/faisaltashildar/110-Sequence-Detector-UVM-PD.git
   cd 110-Sequence-Detector-UVM-PD
   ```  
2. Run **Yosys** for synthesis:  
   ```bash
   yosys -s synth.ys
   ```  
3. OpenROAD for placement and routing:  
   ```bash
   openroad -gui
   source pd.tcl
   ```  
4. View the final design layout in **KLayout**:  
   ```bash
   klayout final.gds
   ```  

---

### **Future Enhancements**  
✅ Extend the detector to recognize other sequences.  
✅ Automate the UVM testing process further.  
✅ Optimize the physical design for better timing and power efficiency.  

---

### **Contributors**  
- **[Mohammed Faisal Tashildar](https://github.com/faisaltashildar)**
- **[Ankit Kamanalli](https://github.com/Ask5665)**  
