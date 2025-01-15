# Polymorphic Relationships in SOQL

In Salesforce, a polymorphic relationship refers to a field that can reference multiple object types. These relationships are often found in standard fields like `WhoId` and `WhatId` on `Task` and `Event` objects.

## Understanding Polymorphic Fields
A polymorphic field can relate to more than one type of object. For example:
- `WhoId` can reference `Contact` or `Lead`.
- `WhatId` can reference objects like `Account`, `Opportunity`, or a custom object.

### Why Use Polymorphic Relationships?
1. **Flexibility:** They allow a single field to relate to multiple object types.
2. **Efficiency:** Reduce the need for creating separate relationship fields for each object type.
3. **Simplicity:** Simplify data model design and make querying easier.

---

## Accessing Polymorphic Relationships in SOQL
To query polymorphic relationships, you can filter and retrieve data by checking the object type using the `TYPEOF` keyword.

### Basic Syntax with `TYPEOF`
```sql
SELECT Id, Subject, WhoId, TYPEOF WhoId WHEN Contact THEN Name, Email WHEN Lead THEN Name, Company END
FROM Task
```
- **Explanation:**
  - Fetches `Id` and `Subject` from `Task`.
  - Checks if `WhoId` references a `Contact` or `Lead` and retrieves relevant fields.

---

## Examples of Polymorphic Relationship Queries

### Example 1: Fetch Tasks with `WhoId` Details
```sql
SELECT Id, Subject, TYPEOF WhoId WHEN Contact THEN Name, Phone WHEN Lead THEN Name, Company END
FROM Task
```
- Retrieves tasks and distinguishes whether `WhoId` is a `Contact` or `Lead`.

### Example 2: Fetch Events with `WhatId` Details
```sql
SELECT Id, Subject, TYPEOF WhatId WHEN Account THEN Name, Industry WHEN Opportunity THEN Name, Amount END
FROM Event
```
- Fetches events and identifies the type of object in `WhatId` (e.g., `Account` or `Opportunity`).

### Example 3: Filter Tasks by Object Type
```sql
SELECT Id, Subject FROM Task WHERE WhoId.Type = 'Contact'
```
- Fetches tasks where `WhoId` references a `Contact`.

### Example 4: Fetch Notes Linked to Multiple Object Types
```sql
SELECT Id, Title, ParentId, TYPEOF ParentId WHEN Account THEN Name WHEN Opportunity THEN Name END
FROM Note
```
- Retrieves notes and identifies whether `ParentId` relates to `Account` or `Opportunity`.

### Example 5: Fetch Task Details Including Lead and Contact Information
```sql
SELECT Id, Subject, TYPEOF WhoId WHEN Contact THEN FirstName, LastName WHEN Lead THEN FirstName, Company END
FROM Task
```
- Differentiates between `Contact` and `Lead` data in `WhoId`.

### Example 6: Filter Based on Specific Object Fields
```sql
SELECT Id, Subject, TYPEOF WhoId WHEN Contact THEN Name WHEN Lead THEN Name END
FROM Task WHERE WhoId.Type = 'Lead'
```
- Retrieves tasks where `WhoId` is specifically a `Lead`.

### Example 7: Fetch Activities Linked to Accounts or Opportunities
```sql
SELECT Id, Subject, TYPEOF WhatId WHEN Account THEN Name, Industry WHEN Opportunity THEN Name, StageName END
FROM Task
```
- Retrieves tasks linked to either `Account` or `Opportunity` and fetches related fields.

---

## Real-Time Scenario: Polymorphic Relationship Example

### Problem Statement
A company wants to analyze tasks and events to identify whether they are linked to contacts, leads, accounts, or opportunities. They also need to fetch relevant details for each type of related object.

### Solution
```sql
SELECT Id, Subject, TYPEOF WhoId WHEN Contact THEN Name, Phone WHEN Lead THEN Name, Company END,
       TYPEOF WhatId WHEN Account THEN Name, Industry WHEN Opportunity THEN Name, Amount END
FROM Task
```
- **Explanation:**
  - Distinguishes the type of record referenced by `WhoId` (e.g., `Contact` or `Lead`) and fetches respective fields.
  - Differentiates the type of record referenced by `WhatId` (e.g., `Account` or `Opportunity`) and fetches respective fields.

By understanding polymorphic relationships and leveraging `TYPEOF` in SOQL, you can retrieve comprehensive data while maintaining flexibility and efficiency in your queries.

