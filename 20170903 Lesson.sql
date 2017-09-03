SHOW DATABASES;
USE world;
SHOW TABLES;




select *
   from world.country
   limit 10;

select Code,
   Name,
   Continent
   from world.country
   limit 10;
   
#計算國家數量   
select count(*) as no_of_country
   from world.country;
   #計算表格有幾個欄位 
select count(*)
  from information_schema.COLUMNS
  where TABLE_NAME="country";
#計算新變數 
select *
     ,Population/SurfaceArea as Density
     From world.country;
#選多個國家,直接用IN 
select *
   from world.country
   where Code in ('TWN','JPN');
   #負面表列，使用 NOT IN 這個關鍵字
   select *
   from world.country
   WHERE Continent NOT IN ('Asia', 'Africa', 'Oceania', 'Europe', 'Antarctica');
   
   select *
   from world.country
   where Population>200000000;
   
   SELECT *
  FROM world.country
  WHERE Population BETWEEN 100 AND 10000;
  #模糊比對
  SELECT *
  FROM world.country
  WHERE Name LIKE 'United%';
   
   SELECT *
  FROM world.country
  WHERE Name LIKE '%land';
  
  SELECT *
    FROM world.country
    WHERE Name LIKE 'T%n';

SELECT *
  FROM world.country
  WHERE Name LIKE '____';
  
  #Quiz1
  select Name
   ,Continent
   ,Region
   from world.country
   where Region in ('Eastern Asia');
   
    
  #Quiz2
 select Name
   ,Continent
   from world.country
   where Name in ('Spain','Italy','Malta');
   
   #Quiz3
   select Name
   ,Population
   ,Population/SurfaceArea as Density
   from world.country
   where Population>200000000;
   
   


