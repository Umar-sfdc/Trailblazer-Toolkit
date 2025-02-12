# **Day 17: Sharing Rules in Salesforce**  

## **1. What Are Sharing Rules in Salesforce?**  
In Salesforce, **Sharing Rules** are automated rules that extend **record access** beyond the default **Organization-Wide Defaults (OWD)**. They allow specific users or groups to **access records they don’t own**, while still maintaining security and control over data visibility.  

**Why Are They Needed?**  
- **OWD settings** define the most restrictive access (e.g., Private or Read-Only).  
- **Sharing Rules** allow controlled data sharing **without changing OWD or Role Hierarchy**.  
- They **automate access** to records based on specific criteria.  

---

## **2. How Sharing Rules Work in Salesforce?**  
1. **Define the Rule Criteria:**  
   - Specify which **records** need to be shared.  
   - Determine **who should get access** (Users, Roles, or Public Groups).  
   - Set **access level** (Read-Only or Read/Write).  

2. **System Execution Process:**  
   - When a record meets the criteria, Salesforce automatically **grants access** to users or groups.  
   - This access is **not inherited** by child records (except in Master-Detail relationships).  
   - If conflicting rules exist, **the most permissive access** applies.  

---

## **3. Types of Sharing Rules in Salesforce**  
There are two main categories of Sharing Rules:  

### **A. Owner-Based Sharing Rules**  
📌 **Definition:**  
- Grants access to records owned by **specific users, roles, or groups**.  

📌 **Use Cases:**  
- A company has **Sales Teams** in different regions (e.g., US Sales and UK Sales).  
- **OWD is set to Private**, meaning users can only see their own records.  
- A **Sharing Rule** is created to **allow the UK Sales Team to access records owned by the US Sales Team**.  

📌 **Key Features:**  
- Can share records with **Users, Roles, Role & Subordinates, or Public Groups**.  
- Access levels can be **Read-Only or Read/Write**.  
- Works well when data needs to be **shared across different teams**.  

📌 **Example:**  
| **Condition** | **Share Records With** | **Access Level** |  
|--------------|----------------------|----------------|  
| Owned by **Sales Manager** | **Marketing Team** | **Read-Only** |  
| Owned by **Customer Support** | **Technical Support Team** | **Read/Write** |  

📌 **Limitations:**  
❌ Applies only to **record owners** (not field-based conditions).  
❌ Cannot restrict access once it’s granted.  

---

### **B. Criteria-Based Sharing Rules**  
📌 **Definition:**  
- Grants access based on **specific field values** instead of record ownership.  

📌 **Use Cases:**  
- A company has a **VIP Customers** checkbox on the Account object.  
- The **Customer Success Team** needs access to all **VIP Accounts**, regardless of ownership.  
- A **Criteria-Based Sharing Rule** is created to **automatically share records where “VIP Customer” is checked**.  

📌 **Key Features:**  
- More flexible than **Owner-Based Sharing**.  
- Can be used for **any object that supports Sharing Rules**.  
- Ideal for **conditional access** based on **field values**.  

📌 **Example:**  
| **Condition (Field Value)** | **Share Records With** | **Access Level** |  
|------------------------|----------------------|----------------|  
| **Industry = 'Healthcare'** | **Healthcare Sales Team** | **Read-Only** |  
| **VIP Customer = True** | **Customer Success Team** | **Read/Write** |  

📌 **Limitations:**  
❌ Can only use fields from the same **object** (no cross-object criteria).  
❌ Doesn’t support **formula fields** or **lookup fields** in conditions.  

---

## **4. Object Support for Sharing Rules**  
- **Standard Objects:** Accounts, Opportunities, Cases, Contacts, Leads, etc.  
- **Custom Objects:** Must have **"Grant Access Using Hierarchies" enabled** to use Sharing Rules.  

---

## **5. Why Use Sharing Rules?**  
✅ **Advantages:**  
✔ **Improves Collaboration** → Grants access to teams without changing ownership.  
✔ **Flexible Data Sharing** → Works with criteria-based or ownership-based logic.  
✔ **Automated Access Control** → Reduces the need for manual sharing.  

❌ **Limitations & Challenges:**  
❌ **Not for Restricting Access** → Can only grant additional access, not remove it.  
❌ **Doesn’t Work for Certain Objects** → Some objects (like Tasks & Events) don’t support Sharing Rules.  
❌ **Performance Considerations** → Too many Sharing Rules can slow down **record access calculations**.  

---

## **6. Alternatives to Sharing Rules**  
🔹 **Role Hierarchy** → Allows users higher in the hierarchy to access records owned by subordinates.  
🔹 **Manual Sharing** → Users manually share records (less efficient).  
🔹 **Apex Sharing (Programmatic Sharing)** → Custom sharing logic using Apex Code.  
🔹 **Territory Management (For Accounts & Opportunities)** → Alternative for sharing records based on geography or industry.  

---

## **7. How Sharing Rules Work Behind the Scenes?**  
Salesforce **stores Sharing Rules in a table** called **"Object Sharing Tables"**. These tables store:  
- The **record ID**  
- The **user, role, or group that should have access**  
- The **access level (Read-Only or Read/Write)**  

When a user tries to access a record, Salesforce checks:  
1. **OWD Settings** → If Private, check next step.  
2. **Role Hierarchy** → If no access, check next step.  
3. **Sharing Rules** → If a rule applies, grant access.  
4. **Manual Sharing or Apex Sharing** → If applicable, grant access.  

This process ensures **optimized access control** while maintaining security.  

---

## **8. Conclusion: When to Use Sharing Rules?**  
| Feature | Owner-Based Sharing | Criteria-Based Sharing |  
|--------------------|-----------------|-----------------|  
| **Best For** | Sharing records based on ownership | Sharing records based on field values |  
| **Access Control** | Read-Only or Read/Write | Read-Only or Read/Write |  
| **Supports Standard Objects?** | ✅ Yes | ✅ Yes |  
| **Supports Custom Objects?** | ✅ Yes (if Grant Access Using Hierarchies is enabled) | ✅ Yes |  
| **Automatic Access?** | ✅ Yes | ✅ Yes |  

✅ **Use Sharing Rules if:**  
- You need to **automate record access** without changing record ownership.  
- You want to **grant additional access** beyond Role Hierarchy & OWD.  
- You want to share records based on **owner or field criteria**.  

❌ **Consider Alternatives if:**  
- You need to **restrict** access → Use **OWD or Permission Sets**.  
- You need **more complex sharing** → Use **Apex Sharing or Territory Management**.  

---

## **Final Thoughts**  
Sharing Rules are an essential part of **Salesforce’s data security model**, allowing organizations to **grant access efficiently**. However, they require careful planning to avoid **performance issues and over-sharing**.  

---
