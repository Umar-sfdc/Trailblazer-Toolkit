# **Day 17: Sharing Rules in Salesforce**

## **1️⃣ What are Sharing Rules?**
Sharing Rules in Salesforce are used to **automatically grant record access** to users or groups based on certain conditions. They help extend access beyond the default **Organization-Wide Defaults (OWD)** while maintaining security.

### **🔹 Why Do We Need Sharing Rules?**
- OWD settings might be **too restrictive** (e.g., Private).
- Some users **need access to records they don’t own**.
- Sharing Rules allow access **without changing roles or profiles**.

### **🔹 Key Features of Sharing Rules**
- **Only work when OWD is set to Private or Public Read-Only.**
- **Apply to specific users, roles, or public groups.**
- **Can grant Read-Only or Read/Write access.**
- **Cannot be stricter than OWD.**

---

## **2️⃣ Types of Sharing Rules**
There are **five types of sharing rules** in Salesforce:

### **1️⃣ Owner-Based Sharing Rules**
- Share **records owned by specific users** with others.
- Example: **Share all Opportunities owned by the Sales Team with the Finance Team.**

### **2️⃣ Criteria-Based Sharing Rules**
- Share **records based on field values**.
- Example: **Share Cases where Priority = ‘High’ with the Escalation Team.**

### **3️⃣ Guest User Sharing Rules**
- Share records **with unauthenticated (public) users** in Experience Cloud sites.
- Example: **Share Knowledge Articles with all website visitors.**

### **4️⃣ Manager-Based Sharing Rules**
- Automatically shares records **with a user’s manager**.
- Example: **A sales representative’s manager gets access to all their Leads.**

### **5️⃣ Apex Managed Sharing**
- Used when **complex logic is required**.
- Example: **Automatically assign access based on custom business rules using Apex code.**

---

## **3️⃣ How to Set Up Sharing Rules?**

### **Step-by-Step Guide to Creating a Sharing Rule**

1️⃣ **Go to Setup** → **Enter "Sharing Settings" in Quick Find** → Click **Sharing Settings**.

2️⃣ **Select the Object** for which you want to create a Sharing Rule (e.g., Accounts, Opportunities, Cases).

3️⃣ **Scroll to the "Sharing Rules" section** and click **New**.

4️⃣ **Enter Sharing Rule Details:**
   - **Rule Name** (e.g., "Share High-Priority Cases").
   - **Select Rule Type:**
     - *Owner-Based* (select users/roles who own records)
     - *Criteria-Based* (set field conditions)

5️⃣ **Define Sharing Settings:**
   - **Share with:** Select Users, Roles, Public Groups, or Queues.
   - **Access Level:** Choose "Read-Only" or "Read/Write".

6️⃣ **Click Save & Recalculate** to apply the changes.

---

## **4️⃣ Real-Life Scenario Example**
### **Scenario: Sharing High-Priority Cases with Escalation Team**
- **Business Need:** The Customer Support Team wants all "High" priority Cases to be accessible by the **Escalation Team**.
- **Solution:** Create a **Criteria-Based Sharing Rule**.

📌 **Steps:**
1. **Go to Sharing Settings** → Select "Cases".
2. **Click "New" under Sharing Rules**.
3. **Rule Name:** "High Priority Case Sharing".
4. **Select Rule Type:** Criteria-Based.
5. **Criteria:** Priority = "High".
6. **Share with:** Escalation Team (Public Group).
7. **Access Level:** Read/Write.
8. **Click Save & Recalculate**.

🔹 **Result:** Now, the **Escalation Team automatically gets access** to all High-Priority Cases!

---

## **5️⃣ Conclusion**
- Sharing Rules **automate record sharing** to specific users or groups.
- They **extend access beyond OWD** while keeping security intact.
- **Different types** (Owner-Based, Criteria-Based, etc.) provide flexibility.
- **Easy to set up** via Sharing Settings.
- **Use Apex Sharing for advanced scenarios**.

---
