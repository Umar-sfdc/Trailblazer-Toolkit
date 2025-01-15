# Understanding SOQL in Salesforce

SOQL (Salesforce Object Query Language) is a query language used to retrieve data from Salesforce objects. It is similar to SQL but specifically designed for Salesforce's database structure. With SOQL, you can query data from standard or custom objects efficiently.

## Basics of SOQL

### Syntax
```sql
SELECT field1, field2, ... FROM objectName [WHERE conditions] [GROUP BY field] [HAVING conditions] [ORDER BY field ASC|DESC] [LIMIT n]
```

### Key Points
1. **Field List:** Specify the fields you want to retrieve.
2. **Object Name:** Indicate the object to query.
3. **Conditions:** Use `WHERE` for filtering data.
4. **Sorting:** Use `ORDER BY` for sorting results.
5. **Limiting Results:** Use `LIMIT` to restrict the number of records returned.

### Simple Query Example
```sql
SELECT Id, Name FROM Account
```
This retrieves the `Id` and `Name` of all accounts.

---

## SOQL Clauses and Keywords

### 1. **WHERE Clause**
The `WHERE` clause filters records based on specific criteria.

#### Example 1:
```sql
SELECT Name, Industry FROM Account WHERE Industry = 'Technology'
```
Fetches all accounts in the `Technology` industry.

#### Example 2:
```sql
SELECT Name FROM Account WHERE AnnualRevenue > 1000000
```
Returns accounts with annual revenue greater than 1,000,000.

---

### 2. **LIKE Operator**
The `LIKE` operator performs partial matching using wildcards `%` (any characters) and `_` (single character).

#### Example 1:
```sql
SELECT Name FROM Account WHERE Name LIKE 'A%'
```
Fetches accounts where the name starts with `A`.

#### Example 2:
```sql
SELECT Name FROM Contact WHERE Email LIKE '%@gmail.com'
```
Fetches contacts with Gmail addresses.

---

### 3. **BETWEEN Operator**
The `BETWEEN` operator checks if a value is within a range.

#### Example 1:
```sql
SELECT Name FROM Opportunity WHERE CloseDate BETWEEN 2025-01-01 AND 2025-12-31
```
Fetches opportunities closing in 2025.

#### Example 2:
```sql
SELECT Name FROM Account WHERE AnnualRevenue BETWEEN 500000 AND 1000000
```
Fetches accounts with revenue between 500,000 and 1,000,000.

---

### 4. **IN Operator**
The `IN` operator checks if a value matches any value in a list.

#### Example 1:
```sql
SELECT Name FROM Account WHERE Industry IN ('Technology', 'Healthcare')
```
Fetches accounts in `Technology` or `Healthcare` industries.

#### Example 2:
```sql
SELECT Name FROM Contact WHERE Id IN ('003XXXXXXXXXXXXXXX', '003YYYYYYYYYYYYYYY')
```
Fetches specific contacts by ID.

---

### 5. **OR and AND Operators**
The `OR` and `AND` operators combine multiple conditions.

#### Example 1:
```sql
SELECT Name FROM Account WHERE Industry = 'Technology' OR AnnualRevenue > 1000000
```
Fetches accounts in `Technology` or with revenue greater than 1,000,000.

#### Example 2:
```sql
SELECT Name FROM Contact WHERE FirstName = 'John' AND LastName = 'Doe'
```
Fetches contacts named `John Doe`.

---

### 6. **NOT Operator**
The `NOT` operator negates a condition.

#### Example 1:
```sql
SELECT Name FROM Account WHERE NOT Industry = 'Technology'
```
Fetches accounts not in the `Technology` industry.

#### Example 2:
```sql
SELECT Name FROM Opportunity WHERE NOT CloseDate > 2025-01-01
```
Fetches opportunities closing before or on 2025-01-01.

---

### 7. **GROUP BY Clause**
The `GROUP BY` clause groups records by a field and is often used with aggregate functions.

#### Example 1:
```sql
SELECT Industry, COUNT(Id) FROM Account GROUP BY Industry
```
Counts accounts grouped by industry.

#### Example 2:
```sql
SELECT OwnerId, SUM(Amount) FROM Opportunity GROUP BY OwnerId
```
Calculates the total opportunity amount for each owner.

---

### 8. **HAVING Clause**
The `HAVING` clause filters groups based on aggregate conditions.

#### Example 1:
```sql
SELECT Industry, COUNT(Id) FROM Account GROUP BY Industry HAVING COUNT(Id) > 10
```
Fetches industries with more than 10 accounts.

#### Example 2:
```sql
SELECT OwnerId, SUM(Amount) FROM Opportunity GROUP BY OwnerId HAVING SUM(Amount) > 100000
```
Fetches owners with opportunities totaling over 100,000.

---

## Real-Time Scenario: Fetching High-Value Opportunities by Industry

### Problem Statement
You need to retrieve the top 5 industries with the highest total opportunity amount, provided the total exceeds 500,000.

### Solution
```sql
SELECT Industry, SUM(Amount) FROM Opportunity
WHERE CloseDate >= 2024-01-01
GROUP BY Industry
HAVING SUM(Amount) > 500000
ORDER BY SUM(Amount) DESC
LIMIT 5
```

#### Explanation:
1. Filters opportunities closing in 2024 or later.
2. Groups opportunities by industry.
3. Filters groups with total amount greater than 500,000.
4. Orders groups by total amount in descending order.
5. Limits results to the top 5 industries.

---

By mastering SOQL, you can efficiently query and analyze Salesforce data to support business needs.

