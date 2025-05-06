# Day 09: Salesforce Features: Lookup Filters & Roll-Up Summary Fields

## 🚀 Overview
Salesforce provides powerful tools like **Lookup Filters** and **Roll-Up Summary Fields** to enhance data management and relationships. These features ensure data quality, integrity, and efficient aggregation of data.

---

## 🔍 **Lookup Filters**

### Definition
A **Lookup Filter** restricts the valid records that can be selected in a lookup relationship. It ensures users can only associate records that meet specific criteria.

- **Purpose**: Enforce data consistency and streamline record association.
- **Configuration**: Defined at the field level in Salesforce.

### Features
- Can use criteria based on fields, formulas, or specific record values.
- Allows optional or mandatory enforcement.
- Supports cross-object filtering.

### Where We Can Apply Lookup Filters
- **External Lookup**: ❌ Not Applicable
- **Internal Lookup**: ❌ Not Applicable
- **Lookup Relationship**: ✅ Applicable
- **Master-Detail Relationship**: ✅ Applicable

### Examples
1. **Simple**: Allow only `Active Accounts` in a `Contact`'s Account lookup field.
2. **Intermediate**: Restrict a `Job Application`'s Position lookup to `Open Positions` only.
3. **Advanced**: Ensure that a `Case`'s Product lookup filters only `Products` associated with the selected `Account`.

---

## 🛠️ **Cross-Object Fields**

### Definition
Cross-object fields are fields that allow data access or calculations across related objects.

- **Where Created**: Always created on the child object in Salesforce.
- **Use Case**: Allows referencing parent object data in formulas or roll-up summary fields.

---

## 📊 **Roll-Up Summary Fields**

### Definition
A **Roll-Up Summary Field** aggregates child record data in a parent record for **Master-Detail Relationships**. It computes values like **SUM**, **COUNT**, **MIN**, **MAX**, or **AVG** from related child records.

- **Purpose**: Provide a summary of related records at the parent level.
- **Configuration**: Defined at the parent object level in Salesforce.

### Types of Roll-Up Summary Calculations
- **COUNT**: Counts the number of child records.
- **MIN**: Retrieves the smallest value in a field.
- **MAX**: Retrieves the largest value in a field.
- **SUM**: Adds up a numeric field.
- **AVG**: (Calculated manually) Average values can be derived using custom calculations.

### Where Roll-Up Summary Fields Are Available
- **Available**: On parent objects in Master-Detail Relationships.
- **Not Available**: In Lookup Relationships or external objects.

### Examples
1. **Simple**: Display the total number of `Line Items` on an `Invoice`.
2. **Intermediate**: Calculate the total `Revenue` of all `Opportunities` for an `Account`.
3. **Advanced**: Determine the earliest `Start Date` from all `Project Milestones` under a `Project`.

---

## 🎓 Key Differences Between Lookup Filters and Roll-Up Summary Fields

| Feature               | Lookup Filter                               | Roll-Up Summary Field                     |
|-----------------------|---------------------------------------------|-------------------------------------------|
| **Primary Function**  | Restricts valid records in lookup fields    | Aggregates data from child records        |
| **Relationship Type** | Applicable to Lookup and Master-Detail      | Only for Master-Detail Relationships      |
| **Impact**            | Enforces data selection criteria            | Provides computed/aggregated field values |

---

## 🚦 When to Use

1. Use **Lookup Filters** to control data input and enforce business rules for related records.
2. Use **Roll-Up Summary Fields** to provide calculated insights or aggregated values at the parent level.

---

## 🌟 Summary
By effectively leveraging **Lookup Filters** and **Roll-Up Summary Fields**, you can maintain data accuracy, enforce business rules, and gain actionable insights in Salesforce. Choose the right feature based on your requirements for optimal results!
