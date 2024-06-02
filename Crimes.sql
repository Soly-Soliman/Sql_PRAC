SELECT *  FROM chicago_crime
use School_Data

--Find the total number of crimes recorded in the CRIME table.
select count (id) as total_number from Chicago_crime
--Retrieve first 10 rows from the CRIME table.
select top (10) * from dbo.chicago_crime
--How many crimes involve an arrest?
select count (id) from dbo.chicago_crime where Arrest = 'True'
--Which unique types of crimes have been recorded at GAS STATION locations?
select distinct primary_type  from chicago_crime where location_description  = 'GAS STATION' 

select  *  from chicago_socioeconomic_data

select  community_area_name  from chicago_socioeconomic_data where Community_Area_Name  like 'B%'

select  *  from chicago_socioeconomic_data where Community_Area_number  between 10 and 15 

-- Which schools in Community Areas 10 to 15 are healthy school certified?
select  Name_of_school  from Chicago_Public_Schools where Healthy_School_Certified = 'yes' and Community_Area_Number BETWEEN 10 AND 15
select *  from Chicago_Public_Schools

select avg (Safety_Score) from Chicago_Public_Schools
select  Community_Area_Name, AVG(College_Enrollment) as AVG_ENROLLMENT from CHICAGO_PUBLIC_SCHOOLS group by Community_Area_Name order by AVG_ENROLLMENT desc
select  top (5)Community_Area_Name from Chicago_Public_Schools group  by Community_Area_Name order by avg (College_Enrollment)  desc 

select Community_Area_Name from Chicago_Public_Schools 
where SAFETY_SCORE = (select min(SAFETY_SCORE) from Chicago_Public_Schools)

select COMMUNITY_AREA_NAME, SAFETY_SCORE from chicago_public_schools where SAFETY_SCORE = 
( select MIN(SAFETY_SCORE) from chicago_public_schools )




B. select CD.community_area_number, CD.community_area_name, CD.per_capita_income from census_data CD, chicago_public_schools CPS where CD.community_area_number=CPS.community_area_number and CPS.safety_score =