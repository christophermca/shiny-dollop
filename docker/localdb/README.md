# Setup
## install SQL server - linux
```sh
sudo docker pull mcr.microsoft.com/mssql/server:2019-latest
```
## Create docker image
```sh
# p: de__op12
sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=<YourStrong@Passw0rd>" \
   -p 1433:1433 --name sql1 -h sql1 \
   -d mcr.microsoft.com/mssql/server:2019-latest
```


## Connect to sql server

```sh
sudo docker exec -it sql1 "bash"
```

# From sql container
```sh
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "<YourNewStrong@Passw0rd>"
```
** if Successful you will see the prompt 1> **

###Create a new database

The following steps create a new database named TestDB.

    ```SQL
      1> CREATE DATABASE TestDB
      2> SELECT Name from sys.Databases
      3> GO
    ```

###Insert data

Next create a new table, Inventory, and insert two new rows.

    ```SQL

      1> USE TestDB
      2> CREATE TABLE Inventory (id INT, name NVARCHAR(50), quantity INT)
      3> INSERT INTO Inventory VALUES (1, 'banana', 150); INSERT INTO Inventory VALUES (2, 'orange', 154);
      4> GO
    ```


###Select data

Now, run a query to return data from the Inventory table.

    From the sqlcmd command prompt, enter a query that returns rows from the Inventory table where the quantity is greater than 152:
    SQL

    ```
      SELECT * FROM Inventory WHERE quantity > 152;
      GO
    ```

###i Exit the sqlcmd command prompt

```SQL
  QUIT
```
