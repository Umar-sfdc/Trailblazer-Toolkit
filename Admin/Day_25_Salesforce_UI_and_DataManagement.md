# 🧠 Salesforce UI & Data Management Features

A complete guide to Salesforce Lightning tools like Dynamic Forms, Related Lists, Actions, Path, and Duplicate Management — explained in a beginner-friendly, real-world way.

---

## 📌 1. Dynamic Forms

### 🔹 Definition:
Allows you to control **field-level visibility** directly on Lightning record pages.

### ✅ Benefits:
- Conditional visibility (field-level)
- Page-level control, no layout duplication

### 🧠 Use Case:
Show "Discount" field only if Opportunity > ₹50,000.

### ⚠️ Issues:
- Limited to supported standard/custom objects

### 🛠️ How to Use:
Lightning App Builder → Add **Field Section** → Add Fields → Set Visibility

---

## 📌 2. Dynamic Related Lists

### 🔹 Definition:
Enhanced related list with filters and display controls.

### ✅ Benefits:
- Show filtered related data (e.g., Open Cases)
- Customize columns and actions

### ⚠️ Issues:
- No OR conditions
- Cannot summarize/group

### 🛠️ How to Use:
Lightning App Builder → Add **Dynamic Related List – Single** component → Set filters & fields

---

## 📌 3. Object-Specific Quick Actions

### 🔹 Definition:
Custom actions like "Log a Call" or "Update Record" specific to a single object.

### ✅ Benefits:
- Perform record-specific tasks quickly
- Improve user efficiency

### ⚠️ Issues:
- Must be added to layout manually

### 🛠️ How to Create:
Object Manager → Buttons, Links, and Actions → New Action → Add to Page Layout

---

## 📌 4. Dynamic Actions

### 🔹 Definition:
Control which **buttons/actions** are visible on a record page based on rules.

### ✅ Benefits:
- Customize action buttons
- Conditional visibility for user-friendly UI

### 🛠️ How to Use:
Lightning App Builder → Edit **Highlights Panel** → Enable Dynamic Actions → Set visibility rules

---

## 📌 5. Global Actions

### 🔹 Definition:
Reusable actions (Log a Call, New Task, Create Contact) **not tied to one object**.

### ✅ Benefits:
- Used from Home Page, Utility Bar, or Mobile App
- Good for universal tasks

### ⚠️ Issues:
- Cannot pre-populate object-specific fields

### 🛠️ How to Create:
Setup → Global Actions → New Action → Add to **Global Publisher Layout**

---

## 📌 6. Duplicate Management

### 🔹 Definition:
Salesforce's feature to **prevent or alert** users about duplicate records during data entry (Leads, Contacts, Accounts).

---

### 🧠 Why It's Needed:
Avoids:
- Redundant communication
- Inaccurate reports
- Data cleanup overhead

---

### 🧰 Components Involved:
- **Matching Rules**: Define what makes two records "similar" (e.g., Email is same).
- **Duplicate Rules**: Define what to do when duplicates are found (Allow, Alert, or Block).

---

### 🛠️ How to Set Up:

#### Step 1: Create Matching Rule
1. Setup → **Matching Rules**
2. Click **New Rule**
3. Choose Object (e.g., Lead)
4. Define Matching Criteria (e.g., First Name + Email)
5. Activate Rule

#### Step 2: Create Duplicate Rule
1. Setup → **Duplicate Rules**
2. Click **New Rule**
3. Choose Object
4. Attach Matching Rule
5. Set Action (Allow/Alert/Block)
6. Choose behavior for **users and APIs**
7. Activate Rule

---

### ⚠️ Common Issues:
- Matching rules may miss duplicates if field formats vary (e.g., phone with/without dashes)
- Complex duplicate logic requires 3rd-party tools or Apex

---

### 📝 Key Notes:
- Salesforce Standard Matching Rules exist (for Leads, Contacts, Accounts)
- Use **"Report on Duplicate Records"** to clean up existing ones
- Works for **Web-to-Lead**, **Manual Entry**, **API Imports**

---

## 📌 7. Path (Salesforce Path)

### 🔹 Definition:
**Salesforce Path** is a visual guide on object records (like Lead or Opportunity) showing key fields and guidance per **stage or status**.

---

### 🧠 Use Case:
Guide Sales reps through Opportunity stages (Prospecting → Proposal → Negotiation → Closed Won).

---

### ✅ Benefits:
- Step-by-step guidance
- Highlights important fields at each stage
- Improves process consistency

---

### 🛠️ How to Set Up:
1. Setup → **Path Settings** → Enable
2. Click **New Path**
3. Select Object & Picklist Field (e.g., Opportunity.Stage)
4. Define stages, key fields, and guidance for each
5. Activate the path

---

### Where to Use:
- **Leads** (Status)
- **Opportunities** (Stage)
- **Custom objects** with Picklist fields representing stages or steps

---

### ⚠️ Common Issues:
- Only works with Picklist fields
- Not ideal for too many steps or unrelated processes

---

### 📝 Tips:
- Keep guidance short and actionable
- Combine with **Validation Rules** for enforcement
- Works best in **Sales & Service processes**

---

## ✅ Final Summary Table

| Feature                     | Purpose                             | Setup Tool              | Conditional Logic | Scope         |
|----------------------------|--------------------------------------|-------------------------|-------------------|----------------|
| Dynamic Forms              | Field-level visibility control       | Lightning App Builder   | ✅ Yes            | Page-specific  |
| Dynamic Related Lists      |
