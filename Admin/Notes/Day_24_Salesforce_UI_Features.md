# 🚀 Salesforce UI Features: Dynamic Forms, Related Lists, Actions

A detailed guide to understanding and using powerful Lightning Experience features to customize record pages and boost productivity.

---

## 📌 1. What are Dynamic Forms?

### 🔹 Definition:
Dynamic Forms allow you to control **field visibility** at the page level without needing multiple page layouts. You can drag and drop individual fields onto the Lightning Page.

### 🧠 Use Case:
Show the **Discount** field only when Opportunity Amount > ₹50,000.

### ✅ Benefits:
- Field-level control
- Conditional visibility
- Better page performance

### ⚠️ Difficulties:
- Limited to **custom objects** and some **standard objects**
- Cannot use fields not included in the layout

### 📝 Notes:
- Use **Field Section** component
- Configure visibility rules based on **user, profile, field values**

---

## 📌 2. What are Dynamic Related Lists?

### 🔹 Definition:
Dynamic Related Lists allow you to show filtered related records on a record page with more control over **columns, filters, and number of records**.

### 🧠 Use Case:
Show only **open cases** for an Account, hiding closed ones.

### ✅ Benefits:
- Filter records by conditions
- Show only required fields
- Inline actions available (View, Edit, Delete)

### ⚠️ Difficulties:
- No OR filter logic
- No inline editing

### 📝 Notes:
- Use **Dynamic Related List - Single** component
- Filters are **"AND"-based** only

---

## 📌 3. What are Object-Specific Quick Actions?

### 🔹 Definition:
Actions tied to a specific object that appear in the **Highlights Panel** or **Activity Timeline**, such as **Log a Call**, **Send Email**, or **Update Record**.

### 🧠 Use Case:
Add a **"Request Discount"** button on the Opportunity record page.

### ✅ Types:
- Create a Record
- Update a Record
- Log a Call
- Lightning Component

### ⚠️ Difficulties:
- Must be added to **Page Layouts**
- Only appear on **object-specific pages**

### 📝 Notes:
- Created from **Object Manager → Buttons, Links & Actions**
- Add to **Page Layout → Salesforce Mobile and Lightning Experience Actions**

---

## 📌 4. What are Dynamic Actions?

### 🔹 Definition:
**Dynamic Actions** allow you to control which **buttons or quick actions** appear on the record page **based on conditions**, just like field visibility in Dynamic Forms.

### 🧠 Use Case:
Show **"Close Case"** button only if Status = "In Progress" and user profile = "Support Agent".

### ✅ Benefits:
- Show/hide actions based on field values, profile, record type
- Cleaner UI
- No need for multiple page layouts

### 🛠️ How to Set Up:
1. Open Lightning App Builder → Record Page.
2. Click the **Highlights Panel** → Enable **Dynamic Actions**.
3. Add actions and set **visibility rules**.

### ⚠️ Difficulties:
- Only supported on **Lightning Record Pages**
- May **not support all custom buttons or links**

### 📝 Notes:
- Use **"Add Action"** in Dynamic Actions editor
- Works with **Standard, Custom, and Global Actions**

---

## 📌 5. What are Global Actions?

### 🔹 Definition:
**Global Actions** are reusable actions available in **Global Publisher Layout** — they can be used **from any object or the utility bar**, not tied to a specific record.

### 🧠 Use Case:
Allow users to **Log a Call** or **Create a Case** from the Home Page or any record page.

### ✅ Benefits:
- Available globally across the app
- Can create records or perform tasks without navigating

### ⚙️ How to Create:
1. Setup → Global Actions → New Action
