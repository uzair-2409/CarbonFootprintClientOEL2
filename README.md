
Carbon Footprint Calculator – ASP.NET Web Service Project
=========================================================

Overview
--------
This project provides an ASP.NET-based web service (CarbonService.asmx) and a frontend Web Forms application (FootprintCalculator.aspx) to calculate and display the carbon footprint of environmental projects. It accepts user input for energy usage, transportation distance, and waste produced, along with custom emission factors.

The frontend allows users to enter project metadata, calculate carbon impact, and view a detailed breakdown.

Features
--------
- Input project name, location, duration, and scope
- Input energy consumption, transport distance, waste amount
- Input custom emission factors:
  - Energy (kg CO₂/kWh)
  - Transport (kg CO₂/km)
  - Waste (kg CO₂/tonne)
- Calculation of individual and total carbon footprints
- Clean and readable HTML results display

Technologies Used
-----------------
- ASP.NET Web Forms (.NET Framework)
- C#
- Web Services (ASMX)
- Visual Studio 2022

Project Structure
-----------------
CarbonFootprintService/     # Web service project
    CarbonService.asmx      # Contains footprint calculation methods

CarbonFootprintClient/      # Frontend consumer project
    FootprintCalculator.aspx
    Web.config
    App_Start/

Setup Instructions
------------------

1. Prerequisites
   - Visual Studio 2022 or later
   - .NET Framework installed (version 4.7.2 or similar)

2. Clone or Download the Repository
   git clone https://github.com/uzair-2409/CarbonFootprintCalculator.git

3. Open the Solution
   - Open CarbonFootprintCalculator.sln in Visual Studio.

4. Run the Web Service
   - Set CarbonFootprintService as the Startup Project.
   - Press F5 to build and run.
   - Copy the URL of CarbonService.asmx (e.g., http://localhost:12345/CarbonService.asmx).

5. Add Web Reference in Client
   - Set CarbonFootprintClient as the Startup Project.
   - Right-click References > Add Service Reference > Advanced > Add Web Reference
   - Paste the URL from step 4.
   - Name the web reference: CarbonRef
   - Click Add Reference

6. Run the Client
   - Press F5 to launch the frontend (FootprintCalculator.aspx).
   - Fill in the project and environmental details.
   - Click Calculate to see your result.

Sample Output
-------------
📋 Project Summary
Project Name: Solar Optimization
Location: Berlin
Duration: 60 days
Scope: Panel Upgrade

🌱 Carbon Footprint Breakdown
Energy: 1200.00 kg CO₂
Transport: 200.00 kg CO₂
Waste: 400.00 kg CO₂

Total Carbon Footprint: 1800.00 kg CO₂

License
-------
This project is provided for educational and academic purposes.

Author
------
Prepared by: Uzair Arif
Lab Guidance: Noor us Sabah
