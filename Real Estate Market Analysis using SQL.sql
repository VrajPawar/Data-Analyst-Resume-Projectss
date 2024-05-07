SELECT 
    *
FROM
    realestate.real_estate_data;

-- What is the average price of houses?
SELECT 
    AVG(Price) AS AVG_Price
FROM
    real_estate_data;

-- What is the average number of bedrooms and bathrooms?
SELECT 
    AVG(No_Of_Bathroom) AS AVG_Bathroom,
    AVG(No_Of_Bedrooms) AS AVG_Bedrooms
FROM
    real_estate_data;

-- How many houses are there in each city?
SELECT 
    COUNT(Brokered_by) AS NO_Of_House_In_city, City
FROM
    real_estate_data
GROUP BY city;


-- What is the distribution of house prices across different cities/states?
SELECT 
    City,
    COUNT(*) as No_Of_House,
    AVG(Price) AS Avg_Price,
    MIN(Price) AS MIN_Price,
    MAX(Price) AS MAX_Price
FROM
    real_estate_data
    group by city;

-- Which are the most expensive houses?
select City,MAX(price)as Expensive_Houses_Price from real_estate_data
group by City;

-- -- Which are the Cheapest houses?
select City,MIN(price)as Cheapest_Houses_Price from real_estate_data
group by City;

-- How many houses have more than X bedrooms or bathrooms?
select Count(*) as  No_of_house
from real_estate_data 
where No_Of_Bathroom > 4 ;

select Count(*) as  No_of_House
from real_estate_data 
where No_Of_Bedrooms > 4 ;

-- What is the average acreage of lots in each state/city?
Select State,AVG(Acre_lot) from real_estate_data
group by state;