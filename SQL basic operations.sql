--  query to select only data from table whose First name is linda
select * from data
where FirstName = 'Linda';

-- to fine the data which has first name as vikas use below line 
select * from data
where FirstName = 'Vikas';
 
 -- use below query to get a desired output only by giving column name in selection querry.
select FirstName, LastName, Gender, Address1 from data;

-- below query is for getting combined data of 2 column with new column name
select (concat(FirstName, ' ' , LastName)) as Full_name, Gender, Address1 from data
where FirstName = 'Vikas';

-- below query is for getting combined data of 2 column with new column name which contain space in it.
select (concat(FirstName, ' ' , LastName)) as " Full name ", Gender, Address1 from data
where FirstName = 'Vikas';

select (concat(FirstName, ' ' , LastName)) as " Full name ", Gender, Address1 from data
where FirstName = 'Vikas';

-- use of or with where clause
select *, (concat(FirstName, ' ' , LastName)) as " Full name " from data
where Address1= 'Mumbai' or Education= "S.S.C.";

select * from data
where Address1= 'Mumbai' or Gender= "F";

-- use of or with where clause with not and like 
select *, (concat(FirstName, ' ' , LastName)) as " Full name " from data
where Address1 not like  'Mumbai' or Education not like "S.S.C.";

-- use of or with where clause
select * from data
where Address1= 'Mumbai' and Gender= "F";

-- use of between with where clause
select * from data
where CaseNo between 105 and 175;


-- use of count 
select count(*) from data
where CaseNo between 105 and 175;

-- use of order by ASC order 
select * from data
order by FirstName;

-- use of order by DESC order 
select * from data
order by FirstName DESC;

-- use of group by is mostly used by aggrigate munctions like count, min max etc.
select Distinct(education), count(education) as "No. of students" from data
group by Education;

-- use of in with where clause
select * from data
where Gender in ("M")  ;

-- use of not in with where clause
select * from data
where Gender not in ("F")  ;

-- different type of use of not
select * from data
where Gender <> "M";

select * from data
where Gender != "M";