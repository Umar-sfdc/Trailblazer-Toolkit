# Day 10: Salesforce Features: Schema Builder & Validation Rules

## 🚀 Overview
Schema Builder and Validation Rules are essential Salesforce tools for managing data structures and enforcing data integrity. They simplify object management and ensure data compliance with business rules.

---

## 🛠️ **Schema Builder**

### Definition
Schema Builder is a graphical interface in Salesforce that allows you to view, create, and modify objects, fields, and relationships. It provides a real-time, visual representation of your Salesforce data model.

### Key Features
- Drag-and-drop functionality for creating and editing objects and fields.
- Visualize relationships between objects (Lookup, Master-Detail, etc.).
- Provides access to field properties, record types, and field-level security.

### Limitations
- **Performance Issues**: Can be slow with complex data models or many objects.
- **No Advanced Customization**: Does not support editing formulas or triggers.
- **Limited to Metadata**: Cannot manage actual data or custom logic.

### Troublesome Scenarios
- **Overlapping Fields**: Misplaced relationships or duplicate fields can lead to confusion.
- **Performance in Large Orgs**: Viewing all objects in large organizations can become unwieldy.

### Examples
1. **Simple**: Create a new `Custom Object` and its fields using drag-and-drop.
2. **Intermediate**: Visualize the relationships between `Account`, `Contact`, and a custom `Order` object.
3. **Advanced**: Build a data model with complex relationships, including Lookup and Master-Detail fields, while ensuring all field dependencies are met.

---

## ✅ **Validation Rules**

### Definition
Validation Rules are logical expressions in Salesforce that ensure data entered by users meets specified criteria before saving a record.

### Key Features
- Enforce specific business rules.
- Prevent invalid data from being saved.
- Use formulas to define criteria.

### Limitations
- **Complex Formulas**: Writing complex validation formulas can be challenging.
- **Triggers Conflicts**: May interfere with automation logic if not carefully planned.
- **User Experience**: Excessive rules can frustrate users with frequent errors.
- **Bulk Data Loads**: Validation rules can block data imports if records don’t meet the criteria.

### Troublesome Scenarios
- **Conflicting Rules**: Overlapping or conflicting rules can cause unintended validation failures.
- **Global Changes**: Broad rules can impact multiple processes unintentionally.

### Examples
1. **Simple**: Ensure a `Phone Number` field is filled in for `Leads`.
   ```
   ISBLANK(Phone)
   ```
2. **Intermediate**: Allow creation of an `Opportunity` only if the `Close Date` is in the future.
   ```
   CloseDate < TODAY()
   ```
3. **Advanced**: Validate that a custom `Discount` field does not exceed 20% unless approved.
   ```
   AND(Discount__c > 0.2, ISPICKVAL(Approval_Status__c, "Not Approved"))
   ```

---

## 🎓 Key Differences Between Schema Builder and Validation Rules

| Feature               | Schema Builder                           | Validation Rules                       |
|-----------------------|------------------------------------------|----------------------------------------|
| **Primary Function**  | Visualize and manage data structures     | Enforce data entry rules               |
| **Use Case**          | Create/modify objects, fields, and relationships | Ensure data integrity during record creation |
| **Limitations**       | Limited customization, performance issues | Can block data imports, complex to manage |

---

## 🚦 When to Use

1. Use **Schema Builder** to design and modify the data model visually.
2. Use **Validation Rules** to enforce strict business requirements on data entry.

---

## 🌟 Summary
Both Schema Builder and Validation Rules are powerful tools for administrators and developers. Schema Builder helps design and visualize the data model, while Validation Rules enforce strict data quality and compliance. Understanding their limitations and best practices ensures seamless Salesforce implementation!
