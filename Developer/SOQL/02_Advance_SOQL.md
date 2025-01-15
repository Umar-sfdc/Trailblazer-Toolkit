# Parent-to-Child and Child-to-Parent SOQL Queries in Salesforce

In Salesforce, SOQL (Salesforce Object Query Language) allows you to navigate relationships between objects to retrieve related data. These relationships are either parent-to-child or child-to-parent.

## Parent-to-Child SOQL Queries
Parent-to-child queries are used to retrieve data from a parent object along with its related child records. This is achieved using subqueries.

### Syntax
```sql
SELECT ParentField1, ParentField2, (SELECT ChildField1, ChildField2 FROM ChildRelationshipName)
FROM ParentObjectName
```

### Example 1: Retrieve Accounts and Their Related Contacts
```sql
SELECT Name, Industry, (SELECT FirstName, LastName FROM Contacts)
FROM Account
```
- **Explanation:**
  - Retrieves `Name` and `Industry` from `Account`.
  - Includes related `FirstName` and `LastName` from `Contacts`.

### Example 2: Retrieve Opportunities and Their Line Items
```sql
SELECT Name, Amount, (SELECT PricebookEntryId, Quantity FROM OpportunityLineItems)
FROM Opportunity
```
- **Explanation:**
  - Retrieves `Name` and `Amount` from `Opportunity`.
  - Includes related `PricebookEntryId` and `Quantity` from `OpportunityLineItems`.

### Advanced Example: Filter on Child Records
```sql
SELECT Name, (SELECT LastName FROM Contacts WHERE Email LIKE '%@gmail.com')
FROM Account
```
- **Explanation:** Filters child records (`Contacts`) with Gmail email addresses.

---

## Child-to-Parent SOQL Queries
Child-to-parent queries allow you to access fields of a parent object from a child object. This is achieved using dot notation.

### Syntax
```sql
SELECT ChildField1, ChildField2, ParentRelationshipName.ParentField1
FROM ChildObjectName
```

### Example 1: Retrieve Contacts with Their Account Information
```sql
SELECT FirstName, LastName, Account.Name, Account.Industry
FROM Contact
```
- **Explanation:**
  - Retrieves `FirstName` and `LastName` from `Contact`.
  - Includes `Name` and `Industry` from the related `Account`.

### Example 2: Retrieve Opportunity Line Items with Their Opportunity Details
```sql
SELECT Quantity, PricebookEntryId, Opportunity.Name, Opportunity.Amount
FROM OpportunityLineItem
```
- **Explanation:**
  - Retrieves `Quantity` and `PricebookEntryId` from `OpportunityLineItem`.
  - Includes `Name` and `Amount` from the related `Opportunity`.

### Advanced Example: Filter on Parent Records
```sql
SELECT FirstName, LastName, Account.Name
FROM Contact
WHERE Account.Industry = 'Technology'
```
- **Explanation:** Filters contacts whose parent account is in the `Technology` industry.

---

## Combining Parent-to-Child and Child-to-Parent Queries
You can combine both types of queries to retrieve comprehensive data.

### Example: Accounts, Related Contacts, and Their Parent Account Owner
```sql
SELECT Name, Owner.Name, (SELECT FirstName, LastName FROM Contacts)
FROM Account
```
- **Explanation:**
  - Retrieves `Name` of the account and `Name` of the owner.
  - Includes related `FirstName` and `LastName` from `Contacts`.

---

## Real-Time Scenario: Retrieve Opportunities with Account and Contact Details
### Problem Statement
You need to fetch opportunities along with their account details and contacts associated with the account.

### Solution
```sql
SELECT Name, Amount, Account.Name, Account.Industry,
       (SELECT FirstName, LastName FROM Account.Contacts)
FROM Opportunity
```
- **Explanation:**
  - Retrieves `Name` and `Amount` from `Opportunity`.
  - Includes `Name` and `Industry` from the related `Account`.
  - Fetches `FirstName` and `LastName` of all `Contacts` related to the `Account`.

---

By mastering parent-to-child and child-to-parent SOQL queries, you can efficiently navigate Salesforce data relationships and retrieve the precise information required for your business processes.

