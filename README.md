# Modeling and modern control of distributed generation systems based on microturbine and storage in intelligent operation of distribution network


Abstract: 
-

This repository is the Final thesis for my Master degree at the University of Zanjan. In this project, I tested various interface converters (i. e. AC-DC-AC and AC-AC) for a Micro-Turbine Generation (MTG) system with and without storage. The main challenge of MTG is its high-frequency output voltage and current, so accurate control of interface converters plays a vital role. In order to achieve desirable output voltage and current, Model Predictive Control (MPC) is tested in MTG configuration (i. e. inverter side). The results showed that MTG with MPC has higher flexibility and its performance improved significantly. Moreover, for providing secure power on the demand side, energy storage is considered to save excessive amounts of power.


Novelty of project
-
The main novelties of this project can be summarized in this points:
- a comprehensive analysis of MTG with different interface converters and the role of storage in such a system.
- applying MPC to MTG's system for controlling interface converters as a new approach.
- applying MPC to MT for controlling fuel and speed as a novel method.
- using a new filter configuration (called Remover Ripple Circuit (RRC)) on the MTG's output for obtaining sinusoidal voltage and current. 

What is Microturbine Generation System?
-

Microturbine (MT) generation (MTG) system is a relatively new Distributed Generation (DG) and fast growing technology that is appropriate for small scale generation because of compact size, quick start, long lifetime, reliability and durability, low initial and maintenance costs, low emission level, and ability of operation with alternative fuels including natural gas, biogas and diesel. The MTG is indeed a small gas turbine that operates based on Brayton thermodynamic cycle. Smaller size and higher power density are desirable factors to use MT in any low power demand areas instead of the conventional gas turbines. The MT generates power within the range of 25-1000 kW and its efficiency is around 20-30%, where up to 80% can also be achieved by Combined Heat and Power (CHP) system. These generation systems are used for a wide range of applications such as peak shaving, CHP, remote power, premium power, transportation system, resource recovery, baseload power and stand by services. For more information read our chapter: https://www.sciencedirect.com/science/article/pii/B9780128042083000042


Repository
-
All the simulations are carried out in MATLAB software. In the repository, you can find three different folders that each one consisting of various Simulink files. 
AC-DC-AC folder means the MTG is connected to load or grid through a double conversion interface. In such interfaces, at first high-frequency AC voltage is converted to DC voltage and then through an inverter, it is converted to AC voltage with 50/60 Hz frequency and suitable amplitude. In this folder, the rectifier may be uncontrolled (diode rectifier folder) or controlled (thyristor rectifier folder). Various scenarios are tests for each type including off-grid, on-grid, both modes and with/without storage.
in AC-AC mode, the simulations are carried out just with a cyclo converter. the results of AC-AC is not as good as double conversion due to high-frequency voltage from the MTG side. There are some papers about working on Matrix converter and you can read and clone them.
The MPC folder consists of files in which this method is used for controlling MTG's inverter in various situations. Last but not least, the file with storage, RRC or filter postfixes means simulation with storage and new RRC filter, respectively. 


Notes
-
- All simulation files are created already (2014-2016) and after that I just published papers, So mainly I had no time to update them. Before posting this repository, I tested all of them and files works without error. If you encounter any error especially in MPC files, tell me in the issue section.
- For more information about this project and papers related to it, please visit the project page in ResearchGate: https://www.researchgate.net/project/Modeling-and-modern-control-of-distributed-generation-systems-based-on-microturbine-and-storage-in-intelligent-operation-of-distribution-network
