#  Day 23 : Dynamic Forms, Dynamic Related Lists & Object-Specific Quick Actions

---

## 📌 1. What are Dynamic Forms?

### 🔹 Definition:
Dynamic Forms allow you to create custom, **flexible page layouts** for Lightning record pages. Instead of using a static layout with all fields, you can place individual fields or sections **directly on the Lightning Page** and show/hide them based on conditions (like profile, field value, etc.).

### 🧠 Why Use Dynamic Forms?
- Control field visibility without creating multiple page layouts.
- Make pages **more user-friendly** and **relevant** for each user.
- Organize fields into logical **sections** with visibility rules.

### 🧰 Example Use Case:
A Sales Manager should see the **Discount** field only when the **Opportunity Amount > $50,000**.

---

## ⚠️ Common Difficulties with Dynamic Forms:
1. **Not available for standard objects** (unless supported — eg. Account, Contact, Opportunity).
2. **Fields must be from the page layout** — custom fields only show if they are added to the layout.
3. **Complex visibility rules** may confuse new admins or developers.

---

## 📝 Key Notes for Dynamic Forms:
- Use **Field Section** component to group fields.
- Enable Dynamic Forms by selecting **"Upgrade Now"** on the Lightning Record Page.
- Works best with **custom objects** and now also supports some **standard objects**.
- Can use **record fields, user fields, device type** as visibility conditions.

---

## 📌 2. What are Dynamic Related Lists?

### 🔹 Definition:
Dynamic Related Lists are like upgraded versions of standard related lists, allowing more control over what data to show, how it's filtered, and how it's displayed on the Lightning page.

### 🧠 Why Use Dynamic Related Lists?
- Customize which related records to show **based on filters**.
- Decide how many records to show and **which columns** to display.
- Add **actions** (Edit, View, Delete) to each record inline.

### 🧰 Example Use Case:
Show only the **open cases** related to an Account, not the closed ones.

---

## ⚠️ Common Difficulties with Dynamic Related Lists:
1. **Filters don’t support complex logic** (no OR conditions).
2. **Inline editing** is not supported.
3. **Cannot group or summarize** like in reports.

---

## 📝 Key Notes for Dynamic Related Lists:
- Add using **"Dynamic Related List – Single"** component.
- Use filters like "Status = Open", "Priority = High".
- You can add **custom buttons** if needed.

---

## 📌 3. What are Object-Specific Quick Actions?

### 🔹 Definition:
These are actions you create for **a specific object** (like Contact, Account, or Custom Object) that appear in the **Highlights Panel** or **Related Lists**. They help users do common tasks quickly like:
- Create a record
- Update a record
- Send Email
- Log a call

### 🧠 Why Use Quick Actions?
- Saves time by reducing navigation.
- Customize actions based on business needs.
- Improves **mobile experience**.

### 🔧 Types:
- **Create a Record:** Create a related record.
- **Update a Record:** Modify fields of the current record.
- **Log a Call, Send Email, Custom Lightning Component**

---

## ⚠️ Common Difficulties with Quick Actions:
1. **Object-specific quick actions only show** on the object's layout, not globally.
2. **Missing in Lightning App Builder** if not added to the page layout.
3. **Custom fields** might not appear if not included in layout.

---

## 📝 Key Notes for Object-Specific Quick Actions:
- Create from **Object Manager → Buttons, Links & Actions**.
- Add to **Page Layout** and/or **Lightning Page Highlights Panel**.
- Good for both desktop and **Salesforce Mobile App**.

---

## ✅ Summary Table

| Feature                     | Customization Level | Visibility Rules | Filtering | Objects Supported         |
|----------------------------|---------------------|------------------|-----------|---------------------------|
| Dynamic Forms              | Field-level         | ✅ Yes           | ❌ No      | Custom + some Standard    |
| Dynamic Related Lists      | Related Records     | ❌ No            | ✅ Yes     | All Objects               |
| Object-Specific Quick Actions | Buttons/Shortcuts | ✅ (Limited)     | ❌ No      | Object-specific only      |

---

## 🧠 Final Tips:
- Use **Dynamic Forms** to simplify and customize user experience per role.
- Use **Dynamic Related Lists** to make related data more meaningful.
- Use **Quick Actions** to let users do common tasks quickly and easily.
- Always test on different **profiles and devices** for visibility logic.
- For large orgs, document which fields/components have **visibility conditions** to avoid confusion later.

---
