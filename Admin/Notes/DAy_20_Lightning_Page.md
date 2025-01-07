# Salesforce Relationships and External Objects

## Self Lookup

### What is a Self Lookup? 🤔

A **Self Lookup** is a relationship where an object references itself. This is helpful when you need to create hierarchies or relationships within the same object. For instance, consider creating a hierarchy of accounts or categories under one object.

### Example: Amazon Hierarchy 🌍

Imagine we are representing Amazon's organizational structure:

- **Amazon** 🌍
  - **Amazon.air** ✈️
    - **Amazon Private Airport - India** 🇮🇳
    - **Amazon Private Airport - USA** 🇺🇸
    - **Amazon Russian** 🇷🇺

Here, Amazon is the parent, and all sub-levels (Amazon.air, private airports) are related to it.

### Why Avoid Master-Detail? 🚫

Using a Master-Detail relationship here is not advisable because:

- If you delete the parent record (**Amazon**), all child records (**Amazon.air**, airports) will also be deleted automatically. This is undesirable for hierarchies where each level should remain independent after deletion.
- A **Self Lookup** ensures better data integrity for hierarchical structures.

---

## Hierarchy Lookup

### What is a Hierarchy Lookup? 📂

A **Hierarchy Lookup** is a specialized lookup relationship used for hierarchical data. Unlike a general self-lookup, it is tailored to create predefined hierarchical relationships.

### Example Use Case 👤

For example, Salesforce uses a Hierarchy Lookup in the **User** object to create relationships between users, such as defining a user's manager.

### Standard Objects: Account 🏢

In the **Account** object, a hierarchy can be created using the **Parent Account** field, where an account can reference another account as its parent. This allows for Parent-Child relationships within accounts.

### Key Differences ⚠️

- **Self Lookup**: General-purpose lookup within the same object.
- **Hierarchy Lookup**: Specifically designed for predefined hierarchical structures like User or Account hierarchies.

---

## External Objects in Salesforce

### What are External Objects? 🌐

**External Objects** are used to represent data stored outside of Salesforce, such as data in external databases. These objects allow Salesforce to access external data without importing it.

### Naming Convention ✍️

- All External Object names end with `__x`.

### Types of External Data 🔒

1. **Public External Object** 🌐: Used for publicly accessible data.
2. **Secure External Data** 🔒: Accessed through secure protocols like:
   - **ODATA 4.0** (Open Data Protocol).
   - **ODATA 2.0**.

### Accessibility 🛠️

External Objects are accessible through **External Data Sources**, not **Object Manager**.

### Steps to Configure 🔄

1. **Create External Data Source**.
2. **Define External Object**.

---

## External Lookup in Salesforce

### What is an External Lookup? 🔗

An **External Lookup** is used to relate external objects or link external objects with standard/custom Salesforce objects. This enables seamless data relationships across systems.

### Key Points 📌

- The **External Lookup field** is always present on the Standard or Custom object when linking it to an external object.

### Example: Order Management 📦

- **Order**: ORD-3501
  - **Product**: Laptop 💻, Tablet 📱, PC 🖥️
  - **Order Item**: Represents specific items in the order, acting as a detail (child) record.

---

## Indirect Lookup in Salesforce

### What is an Indirect Lookup? 🔗

An **Indirect Lookup** links a Standard or Custom object to an External Object by matching a unique field in the parent object. This relationship ensures that the parent object has a distinct identifier.

### Parent Object Requirements ✅

- The parent object must have a **unique field** to enable the indirect lookup.

---

## Simplified Summary 🌟

1. **Self Lookup**: Links records within the same object (e.g., Account hierarchies).
2. **Hierarchy Lookup**: Specifically designed for predefined hierarchical relationships (e.g., User or Account Parent-Child relationships).
3. **External Objects**: Represent external data accessible via protocols like ODATA.
4. **External Lookup**: Links external objects or relates external data to Salesforce objects.
5. **Indirect Lookup**: Links Salesforce objects to external objects using a unique field in the parent object.

By understanding these relationships and their applications, you can better manage data within Salesforce and integrate it with external systems.

---

## Visual Representations 🎨

### Self Lookup Example: Amazon Hierarchy 🌍

