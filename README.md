# Happy Coding

## Guidelines and scripts execution order for creating and populating the databases in this repo:

### Connect to postgresql and creating a database
First of all, in order to create a database on your local postgreSQL installation, log in into your server with your username (it may be postgres or another user you created) and password. In your command prompt, type:

```
psql -U postgres
```

Something like this should appear (depending on the database you're connected to)

```
postgres=# 
```

From here you can type

```SQL
CREATE DATABASE postgresql_practice;
```
For a list of your databases you can use the command:
```
\l
```
to switch to our newly created database type:
```
\c postgresql_practice
```
Now you have:
```
postgresql_practice=#
```
### Execute scripts on your database

In order to execute an SQL script you can use the command:
```
\i path_to_script
```
for example:
```
\i scripts/01_create_tables.sql
```
Be sure to use forward slashes for the path, or you will encounter error "C:: Permission denied" on windows.

### Populating the tables
After the tables are created, we want to populate them.

In the 'data' folder you can find 3 .csv files taken from [this Kaggle dataset](https://www.kaggle.com/datasets/asaniczka/data-science-job-postings-and-skills).

In order to import the .csv data into our tables we need to perform the \copy command in psql. 

But, before doing so, we need to set the encoding of the client to UTF8 (since it currently may be WIN1252), or we would get an error. L'et's do it by typing:
```
\encoding UTF8
```
Now we can go on with the import:
```
\copy job_postings FROM '<full_path_to>\data\data_science_jobs_2024\job_postings.csv' DELIMITER ',' CSV HEADER
```


