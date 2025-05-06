# Day 03: Introduction to Fields, Objects, and Data Types in Salesforce  

Salesforce is built on a **data model architecture** that revolves around **objects**, **fields**, and **data types**. These elements form the foundation of how data is stored, organized, and managed in Salesforce.

---

## 🔹 **Objects in Salesforce**  

An **object** in Salesforce is like a database table that stores data related to a specific entity. It consists of **fields** (columns) and **records** (rows).  

### Types of Objects  
1. **Standard Objects**  
   - Provided by Salesforce out-of-the-box.  
   - Examples:  
     - **Account**: Represents a company or organization.  
     - **Contact**: Represents individuals associated with an Account.  
     - **Opportunity**: Tracks potential sales deals.  

2. **Custom Objects**  
   - Created by users to store data specific to their business needs.  
   - Example:  
     - A company may create a **“Project”** object to track ongoing projects.  

### Key Features of Objects  
- **Relationships**: Objects can relate to each other using relationships like Lookup or Master-Detail.  
- **Custom Fields**: Add fields to capture specific data relevant to your business.  

---

## 🔹 **Fields in Salesforce**  

Fields are the individual data points or attributes of an object. For example, in a **Contact** object, fields might include:  
- **First Name**  
- **Last Name**  
- **Email**  
- **Phone**  

### Types of Fields  
1. **Standard Fields**  
   - Predefined by Salesforce.  
   - Examples: Name, Owner, Created Date.  

2. **Custom Fields**  
   - Created by users to store additional information.  
   - Example: Customer Preference, Order Status.  

---

## 🔹 **Data Types in Salesforce**  

Each field in Salesforce has a **data type**, which determines what kind of data can be stored in it.  

### Common Data Types  

#### 1. **Text Fields**  
- Store alphanumeric characters.  
- Types:  
  - **Text**: Single-line text, up to 255 characters.  
  - **Text Area**: Multi-line text, up to 32,000 characters.  
  - **Rich Text Area**: Multi-line text with formatting like bold, italics, etc.  
- Example: **Customer Name**  

#### 2. **Number Fields**  
- Store numeric values.  
- Types:  
  - **Number**: Whole or decimal numbers.  
  - **Currency**: Numbers representing monetary values.  
  - **Percent**: Numbers as percentages.  
- Example: **Order Quantity, Revenue**  

#### 3. **Date and Time Fields**  
- Store dates or date-time values.  
- Types:  
  - **Date**: Stores dates (e.g., 2025-01-11).  
  - **Date/Time**: Stores both date and time (e.g., 2025-01-11 14:30).  
- Example: **Order Date, Meeting Time**  

#### 4. **Checkbox**  
- Stores a Boolean value (true/false).  
- Example: **Is Active, Opt-In for Emails**  

#### 5. **Picklist**  
- Stores predefined values in a dropdown format.  
- Types:  
  - **Single-select Picklist**: User selects one value.  
  - **Multi-select Picklist**: User can select multiple values.  
- Example: **Order Status (Pending, Approved, Shipped)**  

#### 6. **Formula**  
- Stores calculated values based on other fields.  
- Example: **Total Price = Quantity × Unit Price**  

#### 7. **Lookup and Relationship Fields**  
- **Lookup**: Links records between objects.  
- **Master-Detail**: Creates a parent-child relationship between objects.  
- Example: **Contact linked to Account**  

#### 8. **Geolocation**  
- Stores latitude and longitude values.  
- Example: **Store Location**  

#### 9. **Email, Phone, and URL**  
- Store specific types of data:  
  - **Email**: Valid email addresses.  
  - **Phone**: Phone numbers.  
  - **URL**: Links to external websites.  
- Example: **Contact Email, Business Website**  

---

## 🔹 Object Relationships  

Salesforce allows you to relate objects to each other to organize and connect data.  

### Types of Relationships  
1. **Lookup Relationship**  
   - Links two objects.  
   - Example: Link a Contact to an Account.  

2. **Master-Detail Relationship**  
   - Creates a parent-child relationship.  
   - The child object inherits sharing and permissions from the parent.  
   - Example: Link an Invoice (child) to an Account (parent).  

3. **Many-to-Many Relationship**  
   - Created using a **junction object** to relate two objects.  
   - Example: Relating a Student to multiple Courses.  

---

## 🔹 Real-World Example  

Let’s consider a **Customer Management System**:  

### Objects and Fields  
1. **Customer (Custom Object)**  
   - Fields: Name (Text), Email (Email), Phone (Phone), Preferred Contact Method (Picklist).  

2. **Order (Custom Object)**  
   - Fields: Order Number (Auto Number), Order Date (Date), Amount (Currency).  
   - Relationships: Linked to Customer through a Lookup Relationship.  

---

## 🔹 Summary  

- **Objects** are like tables that store data.  
- **Fields** are like columns that store individual attributes of the data.  
- **Data Types** define what kind of data each field can store.  

With a clear understanding of these fundamental elements, you can design powerful and efficient data models in Salesforce tailored to your business needs.  
