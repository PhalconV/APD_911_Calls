SQL Queries

-- Q10. For each sector, rank the geographic areas by total number of 911 calls and show the response time for each area.
SELECT 
	geo_ID,
	CASE 
		WHEN geo_ID = '482089992192' THEN 'area_192' 
		WHEN geo_ID = '484539990016' THEN 'area_016' 
		WHEN geo_ID = '484910006272' THEN 'area_272' 
		WHEN geo_ID = '484529995776' THEN 'area_776'
		ELSE 'Area_Zero'  
	END AS GEO_ID_name,
	COUNT(*) AS area_count,
	AVG(response_time) AS avg_response_time
FROM [dbo].[apd_calls]
GROUP BY geo_ID
ORDER BY 2; ----sort by any columns

Sector	GEO_ID	total_911_calls	avg_response_time	Area_Rank
				
Adam	4.85E+11	66942	2392	1
Airport	4.85E+11	10006	406	1
Baker	4.85E+11	61231	1779	1
Baker	NULL	2	454	2
Charlie	4.85E+11	63765	2243	1
Charlie	NULL	1	956	2
David	4.85E+11	76010	1991	1
David	4.82E+11	63	2576	2
David	NULL	1	57	3
Edward	4.85E+11	83255	2908	1
Frank	4.85E+11	68641	2593	1
George	4.85E+11	31953	1471	1
Henry	4.85E+11	57237	2569	1
Ida	4.85E+11	57777	2045	1
Other	4.85E+11	0	710	1
				
				
--Q15. Which council districts have the highest average response times?
WITH cn_district AS (
	SELECT council_district, 
		AVG(response_time) AS avg_response_time
	FROM [dbo].[apd_calls]
	GROUP BY council_district
)

SELECT TOP 1
	council_district,
	avg_response_time AS highest_avg_response_time
FROM cn_district
ORDER BY avg_response_time DESC;

				--OR--

SELECT TOP 1 
	council_district, 
	AVG(response_time) AS avg_response_time
FROM [dbo].[apd_calls]
GROUP BY council_district
ORDER BY AVG(response_time) DESC;
council_district	avg_response_time		
1	2609			
				
				
29. What is the average number of units dispatched to incidents based on the incident type?
SELECT incident_type,
	AVG(number_of_units_arrived) AS avg_units_dispatched
FROM [dbo].[apd_calls]
GROUP BY incident_type
ORDER BY AVG(number_of_units_arrived);
incident_type	avg_units_dispatched		
Dispatched Incident	1			
				
				
What is the average response time for all incidents involving mental health issues?
SELECT 
    AVG(response_time) AS avg_response_time_mental_health
FROM 
    apd_calls
WHERE 
    mental_health_flag = 'Mental Health Incident';
avg_response_time_mental_health		
2378				
				
Find the average response time for each incident type and compare it with the overall average response time
WITH incident_avg AS (
    SELECT 
        incident_type,
        AVG(CAST(response_time AS BIGINT)) AS avg_response_time
    FROM 
        apd_calls
    GROUP BY 
        incident_type
),
overall_avg AS (
    SELECT 
        AVG(CAST(response_time AS BIGINT)) AS overall_avg_response_time
    FROM 
        apd_calls
)
SELECT 
    ia.incident_type,
    ia.avg_response_time,
    oa.overall_avg_response_time
FROM 
    incident_avg ia, overall_avg oa;
incident_type	avg_response_time	overall_avg_response_time	
Dispatched Incident	2254	2254		
				
				






What is the total number of mental health-related incidents, and how has this changed over time?
SELECT 
    DATEPART(YEAR, response_datetime) AS year,
    DATEPART(MONTH, response_datetime) AS month,
    COUNT(*) AS total_mental_health_incidents
FROM 
    apd_calls
WHERE 
    mental_health_flag = 'Mental Health Incident'
    AND TRY_CAST(response_time AS INT) IS NOT NULL  -- Ensures only numeric response_time values
GROUP BY 
    DATEPART(YEAR, response_datetime), 
    DATEPART(MONTH, response_datetime)
ORDER BY 
    year, month;
				
year	month	total_mental_health_incidents	
2021	6	1225		
2021	7	4219		
2021	8	4342		
2021	9	4129		
2021	10	3634		
2021	11	3428		
2021	12	3516		
2022	1	3082		
2022	2	3018		
2022	3	3579		
2022	4	3311		
2022	5	3706		
2022	6	3513		
2022	7	3419		
2022	8	3348		
2022	9	3365		
2022	10	3395		
2022	11	3043		
2022	12	3069		
2023	1	2921		
2023	2	2743		
2023	3	3114		
2023	4	3011		
2023	5	3198		
2023	6	2936		
2023	7	2792		
2023	8	3001		
2023	9	2833		
2023	10	2560		
2023	11	2337		
2023	12	2421		
2024	1	2383		
2024	2	2582		
2024	3	2843		
2024	4	2734		
2024	5	2913		
2024	6	2827		
2024	7	2787		
2024	8	2740		
2024	9	2899		
				
				
				

How many incidents were initiated by officers in the field compared to those dispatched via 911 calls?
select
	incident_type,
	count(*) AS incident_count
from
	apd_calls
group by
	incident_type;

incident_type	incident_count		
Dispatched Incident	952828			
				
				
				
20. What are the top 3 most frequent final problem descriptions?
SELECT TOP 3  final_problem_description,
COUNT(final_problem_description) AS frequent_final_problem_description
FROM apd_calls
GROUP BY final_problem_description
ORDER BY frequent_final_problem_description DESC;

final_problem_description	frequent_final_problem_description	
Trespass Urgent	73749			
Disturbance Other	55748			
Suspicious Person	55344			
				
				
26. Which incidents have the longest on-scene time, and how does this correlate with the incident type or priority level?
SELECT 
    incident_type, 
    priority_level, 
    MAX(unit_time_on_scene) AS max_on_scene_time, 
    AVG(unit_time_on_scene) AS avg_on_scene_time
FROM apd_calls
GROUP BY 
    incident_type, 
    priority_level
ORDER BY 
    max_on_scene_time DESC;
incident_type	priority_level	max_on_scene_time	avg_on_scene_time	
Dispatched Incident	Priority 0	2460453	12493	
Dispatched Incident	Priority 1	1348648	8508	
Dispatched Incident	Priority 3	1242710	4055	
Dispatched Incident	Priority 2	849306	4323	
				
				
				
28. How many incidents were initiated by officers in the field compared to those dispatched via 911 calls?
SELECT 
    incident_type, 
    COUNT(*) AS incident_count
FROM apd_calls
GROUP BY 
    incident_type;

incident_type	incident_count		
Dispatched Incident	952828			

