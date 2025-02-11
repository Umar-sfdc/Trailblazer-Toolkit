## **Day 16: Manual Sharing in Salesforce (Explained Simply)**  

### **What is Manual Sharing?**  
Manual sharing in Salesforce allows specific users to **manually** grant access to a particular record when other sharing settings (like organization-wide defaults, roles, sharing rules, etc.) do not automatically provide access. It’s like **giving someone a key to enter a room that is normally locked for them**.  

Imagine you have a **secret diary** (record in Salesforce), and by default, no one can read it except you. But one day, you decide to show a page to your best friend. You **manually** give them permission to see it. That’s what manual sharing does—it lets you **share specific records** with other users **when needed**.

---

### **When is Manual Sharing Possible?**  
You can **only** share a record manually when:  
1. **You own the record** → If you created it or it’s assigned to you, you can share it.  
2. **You have “Full Access” or “Read/Write” permission** on the record.  
3. **The object supports manual sharing** → Not all objects allow manual sharing (for example, some standard objects in Lightning Experience).  

#### **When Manual Sharing is Not Possible:**  
- If **Organization-Wide Default (OWD)** is already set to **Public Read/Write**, everyone can already see and edit records, so no need to share manually.  
- If the object does not support manual sharing in **Lightning Experience**, you need to use **Apex Sharing** instead.  

---

### **How to Share a Record Manually?**  
1. **Go to the record** (Example: An Account, Opportunity, or Case).  
2. **Click on the "Sharing" button** (Only visible if manual sharing is available).  
3. **Select users or groups** who need access.  
4. **Choose the access level** (Read Only / Read & Write).  
5. **Save the changes**.  

Now, the selected users can access the record as per the permission you gave them.  

---

### **Real-Life Example**  
Imagine you are in a **school project group**. You created a **Google Doc** (record) for your project, and by default, only you can edit it. But you want your friend **Ali** to contribute, so you **manually share** the document with him and give him **edit access**.  

Similarly, in Salesforce, manual sharing helps you **control who can access a record**, even when the system doesn’t grant automatic access.

---

### **Why is Manual Sharing Useful?**  
- It gives **flexibility** to share records without changing system-wide settings.  
- It’s useful when **unexpected access** is needed for specific users.  
- It helps in **collaboration** while keeping records secure.  
---
