# **Organization-Wide Defaults (OWD) in Salesforce**

## **1. What is OWD (Organization-Wide Defaults)?**

**OWD (Organization-Wide Defaults)** is the **baseline level of access** that Salesforce applies to records in an organization. It controls how records are **shared among users** when there are no explicit owner-based sharing rules.

### **Key Points:**
- OWD defines the **default access level** for records **that a user does not own**.
- It works at the **object level**.
- It ensures that data is protected and only accessible to authorized users.
- It can be overridden using **Sharing Rules, Role Hierarchy, Manual Sharing, and Apex Sharing**.

## **2. How Does OWD Work? (Example)**

### **Scenario:**
Imagine you work in a **real estate company** where agents manage property sales. You have:

- **Sales Agents** (Can only see their own properties).
- **Sales Managers** (Can see their team's properties).
- **Directors** (Can see all properties across teams).

### **Applying OWD:**
| OWD Setting | Description | Example |
|------------|-------------|---------|
| **Private** | Only record owners can access the data. | A sales agent can only see their own properties. |
| **Public Read Only** | Everyone can see the records but only the owner can edit. | All agents can view properties but cannot modify them. |
| **Public Read/Write** | All users can view and edit all records. | Every agent can modify any property. |
| **Controlled by Parent** | Access is inherited from the parent object. | If an Opportunity is related to an Account, Opportunity access follows Account access. |

## **3. What Are Sharing Settings?**

Since OWD restricts access, **Sharing Settings** help provide access where needed.

### **Types of Sharing in Salesforce**:
1. **Role Hierarchy**: Users higher in the role hierarchy can access records owned by users below them.
2. **Sharing Rules**: Automated rules that extend record access to specific users or groups.
3. **Manual Sharing**: Users manually share individual records with others.
4. **Apex Sharing**: Developers can create custom sharing logic via Apex code.

### **Example of Sharing Rules:**
- **If OWD is Private**, create a **Sharing Rule** to allow "Sales Managers" to see "Sales Agents'" records.
- **If OWD is Public Read Only**, create a **Sharing Rule** to allow "Support Team" to edit "Customer Cases".

## **4. Common Errors in OWD & Sharing Settings**

| Error | Cause | Solution |
|-------|-------|----------|
| **Insufficient Privileges** | User does not have access to the record. | Adjust OWD, Role Hierarchy, or add a Sharing Rule. |
| **Unable to Access Related Records** | OWD on related objects is set to Private. | Change OWD to "Controlled by Parent" or create a Sharing Rule. |
| **Role Hierarchy Not Working as Expected** | Role Hierarchy is disabled for that object. | Enable "Grant Access Using Hierarchies" in Sharing Settings. |
| **Apex Sharing Not Working** | The sharing rule is missing in Apex code. | Check Apex Sharing logic and ensure "Without Sharing" is used where needed. |
| **Sharing Rule Not Applied** | Incorrect criteria or missing user/group assignment. | Review sharing rules in Setup and correct the filter conditions. |

## **5. Best Practices for OWD and Sharing Settings**

- Use **OWD = Private** if data should be restricted and controlled with sharing rules.
- Use **Role Hierarchy** to ensure proper access levels across teams.
- Use **Sharing Rules** only when necessary to avoid performance issues.
- Regularly **review Sharing Settings** to ensure compliance with security policies.
- Always test **Apex Sharing** in a sandbox before deploying to production.

---

Now you have a complete understanding of **OWD, Sharing Settings, and possible errors!** 🚀 Let me know if you need any modifications or more examples! 😊

