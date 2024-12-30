# APD 911 Calls Project Report

## Enhancing Emergency Response: An Analysis of 911 Call Trends  

### Team Name: The Data Detectives

**Project Members:**  
- Evalyn Njagi (Analyst)  
- Rukayat Tokosi (Analyst)  
- Sunday Gabriel (Analyst)  
- Toheeb Olaniyi (Project Lead)  
- AbdulMuiz Akorede (Data Visualizer)  
- Augustine Adams (Analyst)  
- Olabisi Famoroti (Project Secretary)  
- AbdulRasheed Aminu (Analyst)  

**Duration:** 28/10/2024 - (3 Weeks)  

---

## Executive Summary

Over the years, incident-related issues have risen significantly, leading to an increase in 911 calls. This necessitates a shift in strategy to ensure officers are dispatched only to incidents that cannot be resolved over the phone. This project analyzes **952,833** 911 calls to enhance emergency response efficiency, assess the mental health impact of critical incidents, and evaluate resource allocation effectiveness.

Key findings:  
- **911 Call Summation:** Total calls from 2021 to 2024 reached 952,833, with the highest volume in 2022.  
- **Response Times:** Average response time was **2,254 seconds (37.5 minutes)**, increasing closer to 2024.  
- **Unit Time on Scene:** Average time on scene was **6,090 seconds (101.5 minutes)**.  
- **Critical Incidents:** Mental health-related calls increased by 12% compared to the previous year.  
- **Resource Allocation:** Uneven officer deployment in high-density zones led to slower responses.  

### Recommendations:
1. Optimize resource distribution.
2. Focus on mental health interventions.
3. Refine call categorization to enhance safety for officers and communities.

---

## Introduction

Emergency 911 services are the backbone of public safety, and efficient responses are crucial for minimizing harm. This project evaluates **952,833** 911 calls from **2021 to 2024** to identify patterns, improve response times, and assess resource allocation effectiveness. Special attention was given to mental health-related incidents.

### Stakeholders:  
- Austin Police Department (APD)  
- Emergency responders  
- Policymakers  
- Broader community  

---

## Data Overview

### Dataset Description:  
- **Source:** APD's 911 call database.  
- **Attributes:** Call type, timestamp, response time, location, priority level, mental health flags.  
- **Timeframe:** 2021 to 2024.  

### Data Cleaning Process:
1. **Handling Missing Values:** Rows with insufficient data were removed, and remaining nulls were filled with 0.  
2. **Deduplication:** Duplicates were assessed and retained when discrepancies existed between incident records.  
3. **Data Transformation:** Datetime columns were standardized for trend analysis.  

**Tools Used:**  
- SQL for trend analysis  
- Python for preprocessing  
- Tableau for visualization  

---

## Analysis

### Call Volume Trends:
- **Total Calls:** 952,833  
- **Priority Breakdown:**  
  - Priority 0: 12.68%  
  - Priority 1: 18.64%  
  - Priority 2: 50.33%  
  - Priority 3: 18.55%  

### Response Time Insights:
- **Average Response Time:** 2,254 seconds (37.5 minutes).  
- **Peak Issues:**  
  - Disturbances: 349,350 incidents.  
  - Welfare Checks: 220,516 incidents.  
  - Suspicious Activities: 183,839 incidents.  
  - Trespassing: 168,174 incidents.  

### Officer & Subject Injuries:
- Minimal injuries: 1 officer and 3 subjects.  
- Officer Edward managed the highest workload (137,979 cases).  

### Temporal Patterns:
- Higher call volumes during late-night and early-morning hours, especially on weekends (12 AM to 3 AM).  

---

## Data Cleaning Details

### Handling Missing Values:
- Identified using `.isna().sum()` and removed rows with insufficient data.  

### Duplication:
- Assessed duplicates in `Incident Number` and retained records with discrepancies.  

### Data Transformation:
- Converted datetime columns for consistent formatting, enabling trend analysis.  

### Final Dataset Check:
- Verified dataset consistency and displayed all columns for comprehensive review.  

---
