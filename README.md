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