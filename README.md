# Austin Police Department
---

## Enhancing Emergency Response: An Analysis of 911 Call Trends

---

### **Folders and Subdirectories**

#### **1. Project Documentation (`docs/`)**
#### Executive_Summary
Evalyn Summary Suggestion:
Over the years, incident-related issues have risen significantly, leading to an increase in 911 calls. This has necessitated a shift in strategy, ensuring officers are dispatched only to incidents that cannot be resolved over the phone. To support this approach, this report analyzes over Nine Hundred and Fifty-Two Thousand, Eight Hundred and Thirty-Three (952833) 911 calls to enhance emergency response efficiency, assess the mental health impact of critical incidents, and evaluate the effectiveness of resource allocation.
Using Python and SQL, we identified key trends, assessed performance metrics, and highlighted critical safety concerns. The findings aim to optimize unit dispatch processes, prioritize resources effectively, and ensure timely responses to the most urgent situations.

This report analyzes over Nine Hundred and Fifty-Two Thousand, Eight Hundred and Thirty-Three (952833) 911 calls to improve emergency response times, assess the impact of critical incidents on mental health, and evaluate the effectiveness of resource allocation. By leveraging Python and SQL queries, we uncovered trends, evaluated performance metrics, and identified key safety issues.  

##### Key findings include:  
911 Call summation: Total 911 calls for the whole year (2021-2024) was observed to be 952, 828 with the highest call summation falling on to 2022.
Response Times: Average response time was 2,254 seconds for the whole year, with an increase as the year moves closer to 2024.  
Unit Time on Scene: Average unit time on scene was 6,090 for the whole year round.
Critical Incidents: Mental health-related calls increased by 12% compared to the previous year.  
Resource Allocation: Areas with frequent calls had uneven officer deployment, contributing to slower responses in high-density zones.  
Recommendations include optimizing resource distribution, focusing on mental health interventions, and refining call categorization processes to enhance officer and community safety. 

#### Introduction
Emergency 911 services are the backbone of public safety, and efficient responses are crucial for minimizing harm. This project aimed to evaluate Nine Hundred and Fifty-Two Thousand, Eight Hundred and Thirty-Three (952833) 911 calls to identify patterns, improve response times, and assess the effectiveness of resource allocation. The analysis also considered the growing importance of addressing mental health-related incidents and community safety.  
Stakeholders include the Austin Police Department (APD), emergency responders, policymakers, and the broader community.  

#### Data Overview 
Dataset Description: 
Source: APD’s comprehensive database of 911 calls.  
Attributes: Call type, timestamp, response time, location, priority level, and mental health incident tags.  
Timeframe: 2021 to 2024.  
Data Cleaning Process:  
Handling Missing Values: 
Deduplication: **Are there duplicate values and how are they handled ****
Data Transformation: ***any calculated field and added columns****  
Tools and Methods: 
SQL queries for trend analysis
Python for supplementary data preprocessing
Tableau for visualization.  


- `Data_Cleaning_Process.md`: Explain the steps taken to clean and preprocess the data, including handling missing values, duplication, and transformation.

#### **2. Data and Preprocessing (`data/`)**
- **`raw/`**: Include raw data files (if permissible to share).
- **`data_dictionary.md`**: Describe each dataset's columns and meanings.

#### **3. Code and Scripts (`src/`)**
- `data_cleaning.py`: Python script for data cleaning and preprocessing.
- `analysis.sql`: SQL queries for trend and performance analysis.
- `visualizations.py`: Python script for generating visualizations.

#### **4. Visualizations and Dashboard (`visualizations/`)**
- **`dashboard_files/`**: Include Tableau workbooks or links to interactive dashboards.

#### **5. Results (`results/`)**
- **`Summary_Tables.md`**: Include summarized findings and statistics.
- **`Response_Time_Analysis.md`**: Detail insights from response time analysis.
- **`Critical_Incidents.md`**: Highlight findings on critical incidents, including mental health cases.

#### **6. Reports (`reports/`)**
- `Final_Report.md`: A professionally formatted report summarizing the analysis and recommendations.
- `Presentation_Slides.pdf`: The presentation used for stakeholders.

---

### **README.md Content**

#### **Project Title**
Enhancing Emergency Response: An Analysis of 911 Call Trends  

#### **Team**
- Evalyn Njagi (Analyst)
- Rukayat Tokosi (Analyst)
- Sunday Gabriel (Analyst)
- Toheeb Olaniyi (Project Lead)
- AbdulMuiz Akorede (Data Visualizer)
- Augustine Adams (Analyst)
- Olabisi Famoroti (Project Secretary)
- AbdulRasheed Aminu (Analyst)


#### **Duration**
28/10/2024 - (3 Weeks)  

#### **Overview**
This repository contains the analysis and insights derived from 952,833 emergency calls handled by the Austin Police Department (APD) between 2021 and 2024. The project focuses on improving response times, addressing mental health-related incidents, and optimizing resource allocation using Python, SQL, and Tableau.  

#### **Key Findings**
- **911 Call Volume:** Total calls were 952,828, with 2022 seeing the highest volume.  
- **Response Times:** The average response time was 2,254 seconds, with delays increasing closer to 2024.  
- **Critical Incidents:** Mental health-related calls rose by 12% from the previous year.  
- **Resource Allocation:** High-density areas experienced slower response times due to uneven officer distribution.  

#### **Recommendations**
- Optimize officer deployment to high-call-density areas during peak hours.  
- Provide training for mental health crisis intervention.  
- Utilize predictive analytics for better resource planning.  
- Promote community engagement to reduce non-emergency 911 calls.  

---
