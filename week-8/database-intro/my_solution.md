#8.4 Introduction to Database Schemas and SQL

***
##Release 5
1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states
   ...> ORDER BY population DESC;
5. SELECT state_name FROM states
   ...> where region_id=7;
6. SELECT state_name, population_density FROM states
   ...> WHERE population_density > 50
   ...> ORDER BY population_density ASC;
7. SELECT state_name FROM states
   ...> WHERE population BETWEEN 1000000 AND 1500000;
8. SELECT state_name, region_id FROM states
   ...> ORDER BY region_id ASC;
9. SELECT region_name FROM regions
   ...> WHERE region_name LIKE '%Central';
10. SELECT regions.region_name, states.state_name
   ...> FROM states
   ...> INNER JOIN regions
   ...> ON regions.id=states.region_id
   ...> ORDER BY states.region_id ASC;

***
##Release 6
![My schema](https://raw.githubusercontent.com/almightyboz/phase-0/master/week-8/database-intro/imgs/cher_schema.jpg.png)

***
##Reflection

**What are databases for?**
Storing information for programs. Compared to storing information in data structures in Ruby or JavaScript, databases are smaller, easier to navigate, and load more quickly.

**What is a one-to-many relationship?**
A design principle for deciding what information should be on which tables. Information in one row on table A can be be related to and referenced in many rows in table B. The tables are linked in a way that limits duplication of elements, while preserving the relationships between discrete pieces of information. As an example, think of a table of user information and compare it to a related table detailing what devices each user has. Each user can have multiple devices, but devices can't have more than one owner.

**What is a primary key? What is a foreign key? How can you determine which is which?**
In the relational model, each table has column with a unique value for each row. A table's primary key is this very column. Tables that want to link to that table (or any table) contain this same column as a foreign key, while having their own primary keys.

**How can you select information out of a SQL database? What are some general guidelines for that?**
Once I understood exactly what information I was extracting, I would begin by understanding the schema behind said database. Which tables are which, whose columns are whose, what columns contain foreign or primary keys, etc. Selecting information then requires telling which columns of information to display from which tables, restricted to which ranges, similar to what, ordered in such a fashion, joined in such a manner, etc.