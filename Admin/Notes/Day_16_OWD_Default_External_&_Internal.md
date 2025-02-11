## **Day 16: Understanding Default Internal Access & Default External Access in Salesforce**  

### **1. What is Default Internal Access?**  
_Default Internal Access_ refers to the **visibility and access level** given to **internal users** (employees or users within the company) for records of a particular object. It is controlled by **Organization-Wide Defaults (OWD)** settings in Salesforce.  

- It defines how much access internal users have to each other’s records **by default**, before any role hierarchy, sharing rules, or manual sharing is applied.  
- Possible values:  
  - **Private** → Users can only see and edit records they own.  
  - **Public Read Only** → Users can see all records but can edit only their own.  
  - **Public Read/Write** → Users can see and edit all records.  
  - **Controlled by Parent** → The access to the record depends on its parent record’s access.  

🔹 **Example:**  
Imagine a **school database** where teachers can access student records:  
- If **OWD is Private**, each teacher can only see their assigned students.  
- If **OWD is Public Read Only**, all teachers can see every student's records but cannot edit them.  
- If **OWD is Public Read/Write**, any teacher can edit any student’s record.  

---

### **2. What is Default External Access?**  
_Default External Access_ is similar to Internal Access but applies to **external users** (like partners, customers, or users accessing Salesforce Experience Cloud).  

- External users may include **partners, community users, or guest users** who access Salesforce through portals or sites.  
- **You must set External Access to the same level or more restrictive than Internal Access.**  
- Possible values:  
  - **Private** → External users can only see records they own.  
  - **Public Read Only** → External users can see all records but cannot edit them.  
  - **Public Read/Write** → External users can see and edit all records.  
  - **Controlled by Parent** → Access is determined by the parent record.  

🔹 **Example:**  
In an **e-commerce system**, customers can log in to view their **orders (records):**  
- If **OWD is Private**, customers can only see their own orders.  
- If **OWD is Public Read Only**, customers can see all orders but not modify them.  
- If **OWD is Public Read/Write**, customers can edit any order (which is not recommended!).  

---

## **Why Do We Need to Set OWD to Private or Public Read Only for Manual Sharing?**  
### **1. How OWD Affects Manual Sharing?**  
- **Manual Sharing is only needed when OWD is restrictive (Private or Public Read Only).**  
- If OWD is **Public Read/Write**, all users already have full access, so manual sharing is unnecessary.  

🔹 **Example:**  
- If a **student's report card** is **Private**, only the student and assigned teacher can see it. But if the principal also needs access, the teacher can **manually share** it.  
- If the report card is **Public Read/Write**, then everyone (students, teachers, admin) can already see and edit it, so manual sharing is useless.  

### **2. Why Set OWD to Private or Public Read Only?**  
✔ **Security & Control** → You don’t want everyone to see and edit records by default.  
✔ **Granular Access** → You decide **who gets access, when, and to what level** using manual sharing.  
✔ **Avoid Data Overexposure** → Ensures that only **authorized users can modify records** instead of allowing universal access.  

---

## **Final Summary:**  
1. **Default Internal Access** controls what internal (company) users can see/edit by default.  
2. **Default External Access** controls what external (partner/customer) users can see/edit.  
3. **Manual Sharing is only available if OWD is Private or Public Read Only** because otherwise, everyone would already have access.  
---
