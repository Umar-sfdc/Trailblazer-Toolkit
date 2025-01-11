# 🔗 Lookup and Master-Detail Relationships in Salesforce

Salesforce provides **relationships** to connect objects and their records in a meaningful way. Two primary types of relationships are **Lookup** and **Master-Detail**.

---

## 🔎 **Lookup Relationship**

A **Lookup Relationship** is a loose association between two objects. It allows one object to reference another without enforcing strict dependency.

### 🛠️ **Key Features**:

1. **Independent Records**  
   - Records in a Lookup Relationship can exist independently. Deleting a parent does not affect child records.

2. **Optional Field**  
   - The lookup field can be optional or required.

3. **Multiple Lookups**  
   - An object can have multiple Lookup Relationships.

4. **No Roll-Up Summary**  
   - Lookup Relationships do not support roll-up summary fields.

---

### 🟢 **Example 1 (Simple)**: Link an Account to a Contact
**Use Case**: Connect a `Contact` to an `Account` so you know which account the contact belongs to.

- **Parent Object**: Account  
- **Child Object**: Contact

---

## 🔗 **Master-Detail Relationship**

A **Master-Detail Relationship** is a tightly bound relationship where the child object is dependent on the parent.

### 🛠️ **Key Features**:

1. **Cascade Deletion**  
   - Deleting the parent record also deletes all child records.

2. **Roll-Up Summary**  
   - Master-Detail Relationships support roll-up summary fields on the parent object.

3. **Required Field**  
   - The Master-Detail field is always required.

4. **Ownership Inheritance**  
   - Child records inherit sharing and security from the parent record.

---

### 🟡 **Example 2 (Intermediate)**: Link an Opportunity to a Quote
**Use Case**: Create a Master-Detail Relationship between `Opportunity` and `Quote` to manage sales quotes for specific opportunities.

- **Parent Object**: Opportunity  
- **Child Object**: Quote

---

### 🔴 **Example 3 (Advanced)**: Link a Custom Object to an Account
**Use Case**: Create a Master-Detail Relationship between a custom object `Invoices__c` and `Account` to track all invoices for an account.

- **Parent Object**: Account  
- **Child Object**: Invoices__c

---

## 🤔 **When to Use**:

- **Lookup**: When the child can exist independently or when the relationship is optional.  
- **Master-Detail**: When the child is completely dependent on the parent, and roll-up summaries or cascading deletions are needed.

---

## 📝 **Key Differences**

| Feature               | Lookup Relationship               | Master-Detail Relationship        |
|-----------------------|-----------------------------------|-----------------------------------|
| **Record Dependency** | Independent                      | Dependent                        |
| **Roll-Up Summary**   | Not Supported                    | Supported                        |
| **Cascade Delete**    | Optional                         | Enforced                         |
| **Sharing Rules**     | Separate Sharing Rules           | Inherited from Parent            |

By understanding Lookup and Master-Detail Relationships, Salesforce admins can design better data models and establish meaningful connections between objects.
