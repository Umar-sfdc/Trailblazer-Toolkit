# **Day 15: Applying Organization-Wide Defaults (OWD) in Salesforce**

## **1. Understanding OWD**

Imagine you and your friends are playing an **online multiplayer game** 🎮. You have different levels of access:
- **Only You (Private)** – Only you can see and modify your game settings.
- **Friends Can View (Public Read-Only)** – Your friends can see your settings but cannot change them.
- **Friends Can Edit (Public Read/Write)** – Your friends can view and modify your settings.
- **Follow the Team Leader (Controlled by Parent)** – Your access to certain settings depends on your team leader’s settings.

**OWD in Salesforce works the same way** – it decides how users in your company can access records when no special permissions are applied.

## **2. Applying OWD in Real Life (Example)**

### **Scenario: Running a Real Estate Company**

You manage a **real estate business** where multiple people work together. Each person should have the right level of access:
- **Sales Agents** (Should see only their own properties)
- **Sales Managers** (Should see their team's properties)
- **Directors** (Should see all properties in the company)

### **How OWD Works Here:**

| OWD Setting | Who Can See the Data? | Real Estate Example |
|------------|----------------------|---------------------|
| **Private** | Only the record owner | A sales agent can only see their own properties |
| **Public Read Only** | Everyone can view, but only the owner can edit | All agents can see properties but only modify their own |
| **Public Read/Write** | Everyone can view and edit all records | Any agent can modify any property listing |
| **Controlled by Parent** | Access is inherited from a related record | If an Opportunity is linked to an Account, the Opportunity follows Account access |

## **3. Managing OWD in Salesforce**

### **How to Set Up OWD in Salesforce**
1. **Go to Setup** → Click the **Gear Icon ⚙️** → Select **Setup**.
2. In the **Quick Find Box**, search for **Sharing Settings**.
3. Under **Organization-Wide Defaults**, find the **object** (like Accounts, Opportunities, or Cases).
4. Choose the appropriate **OWD setting** (Private, Public Read-Only, etc.).
5. Click **Save** ✅.

**Note:** OWD applies to everyone in your company, so set it carefully!

## **4. What If OWD is Too Restrictive? (Sharing Settings to the Rescue!)**

Since OWD restricts access, we use **Sharing Settings** to allow access when needed.

### **Ways to Share Records:**
1. **Role Hierarchy** – Higher roles can see records of lower roles.
2. **Sharing Rules** – Automatically share records based on criteria.
3. **Manual Sharing** – Users can manually share specific records.
4. **Apex Sharing** – Developers can code custom sharing logic.

### **Example of Sharing Rules:**
- If OWD is **Private**, create a **Sharing Rule** to allow **Sales Managers** to see their agents’ records.
- If OWD is **Public Read-Only**, create a **Sharing Rule** to allow **Customer Support** to edit **Cases**.

## **5. Common Errors You Might Encounter with OWD**

| Error | Cause | Solution |
|-------|-------|----------|
| **Insufficient Privileges** | User doesn’t have access to a record | Change OWD, Role Hierarchy, or create a Sharing Rule |
| **Unable to Access Related Records** | OWD on related objects is Private | Use "Controlled by Parent" or create a Sharing Rule |
| **Role Hierarchy Not Working** | Hierarchy settings are disabled | Enable "Grant Access Using Hierarchies" in Sharing Settings |
| **Apex Sharing Not Working** | Custom sharing logic is incorrect | Check Apex Sharing logic and permissions |
| **Sharing Rule Not Applied** | Rule has incorrect criteria or user assignment | Review Sharing Rules and adjust the conditions |

## **6. Best Practices for OWD and Sharing Settings**

✅ **Set OWD to Private** if you want strict control over data.
✅ **Use Role Hierarchy** to allow managers to see their team’s records.
✅ **Use Sharing Rules wisely** to avoid performance issues.
✅ **Test changes in a sandbox** before applying in production.
✅ **Regularly review OWD settings** to maintain security and compliance.

---

Now you have a **clear, easy-to-understand guide** on how OWD works and how to apply it in Salesforce! 🚀 Let me know if you need more examples or adjustments. 😊

