# Opportunity product group

CREATE TABLE ProductGroupData (ProductGroup VARCHAR(50),Amount DECIMAL(12 , 2));

INSERT INTO ProductGroupData (ProductGroup,Amount) VALUES('Engineering' , 9660432),('Liability' , 6682481),('Fire' , 5316746),('Marine' , 2864248),('Miscelleneous' , 4575511),('Motor' , 12485),('Employee Benefits' , 5454872);

SELECT * FROM ProductGroupData;

# Count of invoice by account executive

CREATE TABLE InvoiceData (InvoiceID INT(70), AccountExecutive VARCHAR(60));

INSERT INTO InvoiceData (InvoiceID,AccountExecutive) VALUES (54 , 'Divya Dhingra'),(26 , 'Vidit Shah'),(19 , 'Vinay'),(18 , 'Ankita Shah'),(12 , 'Animesh Rawat'),(10 , 'Shloka Shelat'),(7 , 'Shobit Agarwal'),(4 , 'Gautam Murkunde'),(4 , 'Abhinav Shivam'),(2 , 'Mark'),(1 , 'Neel');

SELECT * FROM InvoiceData;

#meeting by account executive

CREATE TABLE MeetingData (MeetingID INT(70), AccountExecutive VARCHAR(90) NOT NULL);

INSERT INTO MeetingData (MeetingID,AccountExecutive) VALUES (7 , 'Abhinav Shivam'),(5 , 'Vinay'),(4 , 'Animesh Rawat'),(4 , 'Shivani Sharma'),(3 , 'Manish Sharma'),(3 , 'Gilbert'),(2 , 'Mark'),(2 , 'Raju Kumar');

SELECT * FROM MeetingData;

#FUNNEL

use aug_24;
SELECT 
    stage,
    SUM(revenue_amount) AS total_revenue
FROM 
    opportunity_insurance
GROUP BY 
    stage
ORDER BY 
    total_revenue DESC;



# Top 5 Opportunites 

CREATE TABLE opportunities (
    opportunity_name VARCHAR(255),
    revenue_amount INT
);
INSERT INTO opportunities (opportunity_name, revenue_amount) VALUES
('Fire', 500000),
('EL-Group Mediclaim', 400000),
('DB -Mega Policy', 400000),
('CVP GMC', 350000),
('BE-Mega policy', 300000);

SELECT 
    opportunity_name, 
    SUM(revenue_amount) AS total_revenue
FROM 
    opportunities
GROUP BY 
    opportunity_name
ORDER BY 
    total_revenue DESC
LIMIT 5; 


#Funnel

SELECT 
    stage,
    SUM(revenue_amount) AS total_revenue
FROM 
    opportunity_insurance
GROUP BY 
    stage
ORDER BY 
    total_revenue DESC;
    
    #top 4
    
    SELECT
    
    opportunity_name,
    stage,
    revenue_amount 
FROM 
    opportunity_insurance
ORDER BY 
    revenue_amount DESC
LIMIT 4; 
    
    
    


