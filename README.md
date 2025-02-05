Data Analytics Power Bi Report
------------------------------

Contents:
---------

Milestone 1:

Milestone 2:

Milestone 3:

Milestone 4:

Milestone 5:

Milestone 6:

Milestone 7:

Milestone 8:

Milestone 9:

Milestone 10:

----------------------------

Milestone 1
-
A virutal windows machine was created using microsoft azure, and power bi downloaded and installed, so it could be run on a Mac.

Milestone 2
-
An azure SQL database (db) as connected too, and the 'Orders' dataframe (df) imported. 

Using Power Quereies, the 'Orders' df was modified seperating the [Order date] and [shipping date] columns (cols) and removing null values from [Order date].
[Card Number] col was also deleted for privacy.

'Products' df imported from a .csv file then duplicates removed from the [product_code] col.

'Stores' df imported from Azure blob storage and all misnamed values in the [Region] col renamed correctly.

Three 'Customers'.csv df, each showing different regions of customers, combined and transformed into one df. Then
[First Name] and [Last Name] combined into one [Full Name] col in the 'Customers' df and index col delted.

All col names in all df were changed to the named convention of captials and spaces e.g. [Naming Convention].

Milestone 3
-
A new continous date df 'Date Table' was created. The date range starting from the start of the year that that earliest order date was made,
and going up to the last shipping date (using the end of the year of the last shipping date was recomended to be avoided). 

Dax formulas to calculate these columns: 

- [Month Number]
- [Month Name],
- [Quarter],
- [Year],
- [Start of Year],
- [Start of Quarter],
- [Start of Month],
- [Start of Week]

were created and then added to the 'Date Table'.

Relationships between the fact table 'Orders' to the other dimensions tables were ascertained and connected forming a star schema. 
Here is a list of the relationships:

- Products[product_code] to Orders[product_code]
- Stores[store code] to Orders[Store Code]
- Customers[User UUID] to Orders[User ID]
- Date[date] to Orders[Order Date]
- Date[date] to Orders[Shipping Date]

Date[date] to Orders[Order Date] was made the active relationship over Date[date] to Orders[Shipping Date]
as the shipping order is earlier in the date and chain hireachy. 

A measure table called 'Total Orders' was created.
Within this measures table several measures from the 'Orders' table were created:

- [Total Orders]
- [Total Revenue]
- [Total Customers]
- [Total Quantity]
- [Profit YTD]
- [Revenue YTD]

A date hierarchy of in the 'Date Table' was then created in this order:

- [Start of Year] --> [Start of Quarter] --> [Start of Month] --> [Start of Week] --> [Date]

Then a new column in the 'Stores' table was created called [Country]. This took the [Country Code] column values and parsed them into
there full names

A geography hierarchy in the 'Stores' table was then created:

- [World region] --> [Country] --> [Country Region]

The follow columns in the 'Stores t=Table' were the assigned the following correct data categories:

- Region : Continent
- Country : Country
- Country Region : State or Province

Milestone 4
-
Firstly 4 report pages were created:
- Executive Summary
- Customer Detail
- Product Detail
- Stores Map

Then a colour theme was chosen and navigation sidebar bases for each of the report pages were formed.

Milestone 5
- 
This milestones aim was to create a report page for customer details.
Firstly a card visual for [Total Customers], redubbed [Unique Customers] for the page was created.
Then a new measure created [Revenue per Customer], that was then also given a card visual.

Then two doughnut charts were created:
one showing customer counts for each country.
one showing customer counts for each product category. 

Then a line chart was created, that had the date hirearchy 'from Start of Year' to 'Start of Month' on the X axis.
And [Total Customers] on the Y axis.
This was fitted with a trend line and a 95% confidence interval forecast for the predicted customers over the next 2 years (tbd).

Then a table wasre created showing the top 20 customers full names.
The revenue per each of those customers.
And the number of orders of each of those customers.

Then 3 more customer cards were created each showing a new measure:
The top customers name.
The top customers total revenue.
The top customers number of orders. 

Lastly a date slicer was added, so the information can calculated and accessed dynamically by date. 

Milestone 6
-












